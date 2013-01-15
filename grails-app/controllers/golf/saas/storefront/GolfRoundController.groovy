package golf.saas.storefront

import grails.gorm.DetachedCriteria

import org.springframework.dao.DataIntegrityViolationException


class GolfRoundController {

	def springSecurityService
	
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }
	
    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
		def user = Account.get(springSecurityService?.principal?.id)
		if (user.getGolfer() != null) {
			def g = user.getGolfer()
			def p = g.getPlayer()
			[golfRoundInstanceList: GolfRound.findAllByPlayer(p, params), golfRoundInstanceTotal: GolfRound.count()]
		}
    }
	
	def viewScoreCardImg() {
		def a = params
		def t = params.id
		def scoreCardInstance = ScoreCard.get(params.id)
		if (scoreCardInstance?.courseMap != null) {
			response.outputStream << scoreCardInstance.courseMap // write the image to the outputstream
			response.outputStream.flush()
		} else {
			//TODO return a stock image!!!
		}		
		return
	}
	
	def viewCourseLogoImg() {
		def a = params
		def t = params.id
		def scoreCardInstance = ScoreCard.get(params.id)
		if (scoreCardInstance?.golfCourse?.logo != null) {
			response.outputStream << scoreCardInstance.golfCourse.logo // write the image to the outputstream
			response.outputStream.flush()
		} else {
			//TODO return a stock image!!!
		}		
		return
	}
	
    def create() {
		def param = params;
		def aaa = param.id;
		def scoreCardInstance = ScoreCard.get(params.id)
        render(view: "create", model: [golfRoundInstance: new GolfRound(params), scoreCardInstance: scoreCardInstance])
		return
    }
	
	def lastRound() {
		  def user = Account.get(springSecurityService?.principal?.id)
		  if (user.getGolfer() != null) {
			  def g = user.getGolfer()
			  def p = g.getPlayer()
			  def golfRoundList = GolfRound.findAllByPlayer(p)
			  if (!golfRoundList.isEmpty()) {
				  GolfRound golfRoundInstance = golfRoundList.iterator().next()				  
				  ScoreCard si = ScoreCard.get(golfRoundInstance.scoreCard.id)
				if (si != null) {
					def frontNinePar = si.hole1.par + si.hole2.par + si.hole3.par + si.hole4.par + si.hole5.par + si.hole6.par + si.hole7.par + si.hole8.par + si.hole9.par
					def backNinePar = si.hole10.par + si.hole11.par + si.hole12.par + si.hole13.par + si.hole14.par + si.hole15.par + si.hole16.par + si.hole17.par + si.hole18.par
					def totalPar = frontNinePar + backNinePar
					def frontNineDistance = si.hole1.yards + si.hole2.yards + si.hole3.yards + si.hole4.yards + si.hole5.yards + si.hole6.yards + si.hole7.yards + si.hole8.yards + si.hole9.yards
					def backNineDistance = si.hole10.yards + si.hole11.yards + si.hole12.yards + si.hole13.yards + si.hole14.yards + si.hole15.yards + si.hole16.yards + si.hole17.yards + si.hole18.yards
					def totalDistance = frontNineDistance + backNineDistance
					def frontNineIndex = si.hole1.holeIndex + si.hole2.holeIndex + si.hole3.holeIndex + si.hole4.holeIndex + si.hole5.holeIndex + si.hole6.holeIndex + si.hole7.holeIndex + si.hole8.holeIndex + si.hole9.holeIndex
					def backNineIndex = si.hole10.holeIndex + si.hole11.holeIndex + si.hole12.holeIndex + si.hole13.holeIndex + si.hole14.holeIndex + si.hole15.holeIndex + si.hole16.holeIndex + si.hole17.holeIndex + si.hole18.holeIndex
					def totalIndex = frontNineIndex + backNineIndex
					def frontNineScore = golfRoundInstance.shotsHole1 + golfRoundInstance.shotsHole2 + golfRoundInstance.shotsHole3 + golfRoundInstance.shotsHole4 + golfRoundInstance.shotsHole5 + golfRoundInstance.shotsHole6 + golfRoundInstance.shotsHole7 + golfRoundInstance.shotsHole8 + golfRoundInstance.shotsHole9
					def backNineScore = golfRoundInstance.shotsHole10 + golfRoundInstance.shotsHole11 + golfRoundInstance.shotsHole12 + golfRoundInstance.shotsHole13 + golfRoundInstance.shotsHole14 + golfRoundInstance.shotsHole15 + golfRoundInstance.shotsHole16 + golfRoundInstance.shotsHole17 + golfRoundInstance.shotsHole18
					def totalScore = frontNineScore + backNineScore
					render(template: "golfRoundReadOnly", model: [golfRoundInstance: golfRoundInstance, scoreCardInstance: si, frontNineScore:frontNineScore, backNineScore:backNineScore, totalScore:totalScore, frontNinePar:frontNinePar, backNinePar:backNinePar, totalPar:totalPar, totalIndex:totalIndex])
				} else {
					render(template: "noLastRound")
				}
			} else {
				render(template: "noLastRound")
			}
		} else {
			render(template: "noLastRound")
		}
		return
	}
	
	def editRound() {
		def golfRoundInstance = GolfRound.get(params.id)
		def si = ScoreCard.get(params.scorecardid)
		if (si != null) {
		def frontNinePar = si.getHole1()?.par + si.getHole2()?.par + si.getHole3()?.par + si.getHole4()?.par + si.getHole5()?.par + si.getHole6()?.par + si.getHole7()?.par + si.getHole8()?.par + si.getHole9()?.par
		def backNinePar = si.getHole10()?.par + si.getHole11()?.par + si.getHole12()?.par + si.getHole13()?.par + si.getHole14()?.par + si.getHole15()?.par + si.getHole16()?.par + si.getHole17()?.par + si.getHole18()?.par
		def totalPar = frontNinePar + backNinePar
		def frontNineDistance = si.getHole1()?.yards + si.getHole2()?.yards + si.getHole3()?.yards + si.getHole4()?.yards + si.getHole5()?.yards + si.getHole6()?.yards + si.getHole7()?.yards + si.getHole8()?.yards + si.getHole9()?.yards
		def backNineDistance = si.getHole10()?.yards + si.getHole11()?.yards + si.getHole12()?.yards + si.getHole13()?.yards + si.getHole14()?.yards + si.getHole15()?.yards + si.getHole16()?.yards + si.getHole17()?.yards + si.getHole18()?.yards
		def totalDistance = frontNineDistance + backNineDistance
		def frontNineIndex = si.getHole1()?.holeIndex + si.getHole2()?.holeIndex + si.getHole3()?.holeIndex + si.getHole4()?.holeIndex + si.getHole5()?.holeIndex + si.getHole6()?.holeIndex + si.getHole7()?.holeIndex + si.getHole8()?.holeIndex + si.getHole9()?.holeIndex
		def backNineIndex = si.getHole10()?.holeIndex + si.getHole11()?.holeIndex + si.getHole12()?.holeIndex + si.getHole13()?.holeIndex + si.getHole14()?.holeIndex + si.getHole15()?.holeIndex + si.getHole16()?.holeIndex + si.getHole17()?.holeIndex + si.getHole18()?.holeIndex
		def totalIndex = frontNineIndex + backNineIndex
		def frontNineScore = golfRoundInstance?.shotsHole1 + golfRoundInstance?.shotsHole2 + golfRoundInstance?.shotsHole3 + golfRoundInstance?.shotsHole4 + golfRoundInstance?.shotsHole5 + golfRoundInstance?.shotsHole6 + golfRoundInstance?.shotsHole7 + golfRoundInstance?.shotsHole8 + golfRoundInstance?.shotsHole9
		def backNineScore = golfRoundInstance?.shotsHole10 + golfRoundInstance?.shotsHole11 + golfRoundInstance?.shotsHole12 + golfRoundInstance?.shotsHole13 + golfRoundInstance?.shotsHole14 + golfRoundInstance?.shotsHole15 + golfRoundInstance?.shotsHole16 + golfRoundInstance?.shotsHole17 + golfRoundInstance?.shotsHole18
		def totalScore = frontNineScore + backNineScore
		render(template: "golfRound", model: [golfRoundInstance: golfRoundInstance, scoreCardInstance: si, frontNineScore:frontNineScore, backNineScore:backNineScore, totalScore:totalScore, frontNinePar:frontNinePar, backNinePar:backNinePar, totalPar:totalPar, totalIndex:totalIndex])
		}
		return
	}
	
	def showScoreCard() {
		def si = ScoreCard.get(params.id)
		if (si != null) {
		def frontNinePar = si.getHole1()?.par + si.getHole2()?.par + si.getHole3()?.par + si.getHole4()?.par + si.getHole5()?.par + si.getHole6()?.par + si.getHole7()?.par + si.getHole8()?.par + si.getHole9()?.par
		def backNinePar = si.getHole10()?.par + si.getHole11()?.par + si.getHole12()?.par + si.getHole13()?.par + si.getHole14()?.par + si.getHole15()?.par + si.getHole16()?.par + si.getHole17()?.par + si.getHole18()?.par
		def totalPar = frontNinePar + backNinePar
		def frontNineDistance = si.getHole1()?.yards + si.getHole2()?.yards + si.getHole3()?.yards + si.getHole4()?.yards + si.getHole5()?.yards + si.getHole6()?.yards + si.getHole7()?.yards + si.getHole8()?.yards + si.getHole9()?.yards
		def backNineDistance = si.getHole10()?.yards + si.getHole11()?.yards + si.getHole12()?.yards + si.getHole13()?.yards + si.getHole14()?.yards + si.getHole15()?.yards + si.getHole16()?.yards + si.getHole17()?.yards + si.getHole18()?.yards
		def totalDistance = frontNineDistance + backNineDistance
		def frontNineIndex = si.getHole1()?.holeIndex + si.getHole2()?.holeIndex + si.getHole3()?.holeIndex + si.getHole4()?.holeIndex + si.getHole5()?.holeIndex + si.getHole6()?.holeIndex + si.getHole7()?.holeIndex + si.getHole8()?.holeIndex + si.getHole9()?.holeIndex
		def backNineIndex = si.getHole10()?.holeIndex + si.getHole11()?.holeIndex + si.getHole12()?.holeIndex + si.getHole13()?.holeIndex + si.getHole14()?.holeIndex + si.getHole15()?.holeIndex + si.getHole16()?.holeIndex + si.getHole17()?.holeIndex + si.getHole18()?.holeIndex
		def totalIndex = frontNineIndex + backNineIndex

		render(template: "golfRound", model: [golfRoundInstance: new GolfRound(params), scoreCardInstance: si, frontNinePar:frontNinePar, backNinePar:backNinePar, totalPar:totalPar, totalIndex:totalIndex])
		}
		return
	}
	
    def save() {
        def golfRoundInstance = new GolfRound(params)
		def user = Account.get(springSecurityService?.principal?.id)
		if (user.getGolfer() != null) {
			def g = user.getGolfer()			
			def p = g.getPlayer()
			p.addToGolfRounds(golfRoundInstance)
		} else if (user.getGolfClub() != null) {
		
		} else if (user.getGolfSociety() != null) {
		
		}
        if (!golfRoundInstance.save(flush: true)) {
            render(view: "create", model: [golfRoundInstance: golfRoundInstance])
            return
        }
		flash.message = message(code: 'default.created.message', args: [message(code: 'golfRound.label', default: 'GolfRound'), golfRoundInstance.id])
        redirect(action: "show", id: golfRoundInstance.id)
    }
	
    def show() {
        def golfRoundInstance = GolfRound.get(params.id)		
        if (!golfRoundInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'golfRound.label', default: 'GolfRound'), params.id])
            redirect(action: "list")
            return
        }
		def si = golfRoundInstance.scoreCard
		def frontNinePar = si.getHole1()?.par + si.getHole2()?.par + si.getHole3()?.par + si.getHole4()?.par + si.getHole5()?.par + si.getHole6()?.par + si.getHole7()?.par + si.getHole8()?.par + si.getHole9()?.par
		def backNinePar = si.getHole10()?.par + si.getHole11()?.par + si.getHole12()?.par + si.getHole13()?.par + si.getHole14()?.par + si.getHole15()?.par + si.getHole16()?.par + si.getHole17()?.par + si.getHole18()?.par
		def totalPar = frontNinePar + backNinePar
		def frontNineDistance = si.getHole1()?.yards + si.getHole2()?.yards + si.getHole3()?.yards + si.getHole4()?.yards + si.getHole5()?.yards + si.getHole6()?.yards + si.getHole7()?.yards + si.getHole8()?.yards + si.getHole9()?.yards
		def backNineDistance = si.getHole10()?.yards + si.getHole11()?.yards + si.getHole12()?.yards + si.getHole13()?.yards + si.getHole14()?.yards + si.getHole15()?.yards + si.getHole16()?.yards + si.getHole17()?.yards + si.getHole18()?.yards
		def totalDistance = frontNineDistance + backNineDistance
		def frontNineIndex = si.getHole1()?.holeIndex + si.getHole2()?.holeIndex + si.getHole3()?.holeIndex + si.getHole4()?.holeIndex + si.getHole5()?.holeIndex + si.getHole6()?.holeIndex + si.getHole7()?.holeIndex + si.getHole8()?.holeIndex + si.getHole9()?.holeIndex
		def backNineIndex = si.getHole10()?.holeIndex + si.getHole11()?.holeIndex + si.getHole12()?.holeIndex + si.getHole13()?.holeIndex + si.getHole14()?.holeIndex + si.getHole15()?.holeIndex + si.getHole16()?.holeIndex + si.getHole17()?.holeIndex + si.getHole18()?.holeIndex
		def totalIndex = frontNineIndex + backNineIndex
		def frontNineScore = golfRoundInstance.shotsHole1 + golfRoundInstance.shotsHole2 + golfRoundInstance.shotsHole3 + golfRoundInstance.shotsHole4 + golfRoundInstance.shotsHole5 + golfRoundInstance.shotsHole6 + golfRoundInstance.shotsHole7 + golfRoundInstance.shotsHole8 + golfRoundInstance.shotsHole9
		def backNineScore = golfRoundInstance.shotsHole10 + golfRoundInstance.shotsHole11 + golfRoundInstance.shotsHole12 + golfRoundInstance.shotsHole13 + golfRoundInstance.shotsHole14 + golfRoundInstance.shotsHole15 + golfRoundInstance.shotsHole16 + golfRoundInstance.shotsHole17 + golfRoundInstance.shotsHole18
		def totalScore = frontNineScore + backNineScore
		
		[golfRoundInstance: golfRoundInstance, scoreCardInstance: si, frontNineScore:frontNineScore, backNineScore:backNineScore, totalScore:totalScore, frontNinePar:frontNinePar, backNinePar:backNinePar, totalPar:totalPar, totalIndex:totalIndex]
    }
	
    def edit() {
        def golfRoundInstance = GolfRound.get(params.id)
        if (!golfRoundInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'golfRound.label', default: 'GolfRound'), params.id])
            redirect(action: "list")
            return
        }

        [golfRoundInstance: golfRoundInstance]
    }
	
    def update() {
        def golfRoundInstance = GolfRound.get(params.id)
        if (!golfRoundInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'golfRound.label', default: 'GolfRound'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (golfRoundInstance.version > version) {
                golfRoundInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'golfRound.label', default: 'GolfRound')] as Object[],
                          "Another user has updated this GolfRound while you were editing")
                render(view: "edit", model: [golfRoundInstance: golfRoundInstance])
                return
            }
        }

        golfRoundInstance.properties = params

        if (!golfRoundInstance.save(flush: true)) {
            render(view: "edit", model: [golfRoundInstance: golfRoundInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'golfRound.label', default: 'GolfRound'), golfRoundInstance.id])
        redirect(action: "show", id: golfRoundInstance.id)
    }
	
    def delete() {
        def golfRoundInstance = GolfRound.get(params.id)
        if (!golfRoundInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'golfRound.label', default: 'GolfRound'), params.id])
            redirect(action: "list")
            return
        }

        try {
            golfRoundInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'golfRound.label', default: 'GolfRound'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'golfRound.label', default: 'GolfRound'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
