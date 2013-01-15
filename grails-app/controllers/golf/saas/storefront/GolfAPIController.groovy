package golf.saas.storefront

import grails.converters.deep.JSON

import org.bson.types.ObjectId

class GolfAPIController {

	def springSecurityService
	
    def index() { }
	
	def golfCourses() {
		def lists = []
		def allGCs = GolfCourse.all
		allGCs.each() { 
			def temp = new GolfCourse()
			temp.setIdentifier(it.id.toString())
			temp.setName(it.name)
			lists << temp
		}
		render lists as JSON 	
	}
	
	def scoreCards() {
		def lists = []
		def allGCs = ScoreCard.all
		allGCs.each() {
			def temp = new ScoreCard()
			temp.setIdentifier(it.id.toString())
			temp.setName(it.name)
			lists << temp
		}
		render lists as JSON
	}
	
	def getGolfCourseFromScoreCard() {
		def scoreCardInstance = ScoreCard.get(params.id)
		def golfCourseInstance = GolfCourse.findByName(scoreCardInstance.golfCourse.name)
		golfCourseInstance.setIdentifier(golfCourseInstance.id.toString())
		golfCourseInstance.setLogo(null)
		render golfCourseInstance as JSON
	}
	
	def getScoreCard() {
		def scoreCardInstance = ScoreCard.get(params.id)
		scoreCardInstance.setCourseMap(null)
		scoreCardInstance.golfCourse.setLogo(null)
		scoreCardInstance.setIdentifier(scoreCardInstance.id.toString())
		render scoreCardInstance as JSON
	}
	
	//Example: http://localhost:8080/golf-saas-storefront/golfAPI/golfCourse/503a2b01f24ec49bd6adc9dd
	def golfCourse() {
		def golfCourseInstance = GolfCourse.get(params.id)
		golfCourseInstance.setLogo(null)
		render golfCourseInstance as JSON
	}	
	
	def golfCourseImage() {
		def golfCourseInstance = GolfCourse.get(params.id)
		response.contentType  = 'image/jpeg'
		response.outputStream << golfCourseInstance.logo
		response.outputStream.flush()
	}
	
	def golfCourseScoreCardImage() {
		def scoreCardInstance = ScoreCard.get(params.id)
		response.contentType  = 'image/jpeg'
		response.outputStream << scoreCardInstance.courseMap
		response.outputStream.flush()
	}
	
	def golfCourseWithScoreCard() {
		def golfCourseInstance = GolfCourse.get(params.id)
		golfCourseInstance.setLogo(null)
		def idd = params.id
		def si = ScoreCard.findAllWhere(golfCourse: idd)
		golfCourseInstance.scoreCards << si
		render golfCourseInstance as JSON
	}
	
	def golfRoundsByUser() {
		def user = Account.get(springSecurityService.principal.id)
		if (user.getGolfer() != null) {
			def g = user.getGolfer()
			def p = g.getPlayer()
			render GolfRound.findAllByPlayer(p, params)
		}
	}
	
	def postGolfRound() {
		def name = params
		def golfRoundInstance = new GolfRound(params)
		golfRoundInstance.setDateCreated(new Date());
		golfRoundInstance.setShotsHole1(params.shotsHole1.toInteger());
		golfRoundInstance.setShotsHole2(params.shotsHole2.toInteger());
		golfRoundInstance.setShotsHole3(params.shotsHole3.toInteger());
		golfRoundInstance.setShotsHole4(params.shotsHole4.toInteger());
		golfRoundInstance.setShotsHole5(params.shotsHole5.toInteger());
		golfRoundInstance.setShotsHole6(params.shotsHole6.toInteger());
		golfRoundInstance.setShotsHole7(params.shotsHole7.toInteger());
		golfRoundInstance.setShotsHole8(params.shotsHole8.toInteger());
		golfRoundInstance.setShotsHole9(params.shotsHole9.toInteger());
		golfRoundInstance.setShotsHole10(params.shotsHole10.toInteger());
		golfRoundInstance.setShotsHole11(params.shotsHole11.toInteger());
		golfRoundInstance.setShotsHole12(params.shotsHole12.toInteger());
		golfRoundInstance.setShotsHole13(params.shotsHole13.toInteger());
		golfRoundInstance.setShotsHole14(params.shotsHole14.toInteger());
		golfRoundInstance.setShotsHole15(params.shotsHole15.toInteger());
		golfRoundInstance.setShotsHole16(params.shotsHole16.toInteger());
		golfRoundInstance.setShotsHole17(params.shotsHole17.toInteger());
		golfRoundInstance.setShotsHole18(params.shotsHole18.toInteger());
		
		def user = Account.get(new ObjectId(params.userid))
		def scorecard = ScoreCard.get(new ObjectId(params.scoreCardIdentifier))
		golfRoundInstance.setScoreCard(scorecard)
			def g = user.getGolfer()
			def p = g.getPlayer()
			p.addToGolfRounds(golfRoundInstance)
			golfRoundInstance.setPlayer(p)
		if (!golfRoundInstance.save(flush: true)) {
			golfRoundInstance.errors.each {
				println it
			}
			render false
		} else {
			render true
		}
	}
	
	def login() {
		def name = params.name
		def password = springSecurityService.encodePassword(params.password)
		def account = Account.findByUsernameAndPassword(name, password)
		if (account != null) {
			render account.id.toString() + ":" + account.getFirstName() + " " + account.getLastName()
		} else {
			render false;
		}		
	}
	
}
