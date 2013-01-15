package golf.saas.storefront



import grails.test.mixin.*

import org.apache.log4j.Logger
import org.bson.types.ObjectId
import org.junit.*

@TestFor(GolfRoundController)
@Mock(GolfRound)
class GolfRoundControllerTests {
	
	Logger log = Logger.getInstance(GolfRoundControllerTests.class)

    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/golfRound/list" == response.redirectedUrl
    }

    void testSave() {


        populateValidParams(params)
		def golfRound = new GolfRound()
		golfRound.setDateCreated(new Date())
		golfRound.setId(new ObjectId(new Date()))
		golfRound.setInProgress(true)
		golfRound.setShotsHole1(3)
		golfRound.setScoreCard(null)
		golfRound.setShotsHole10(4)
		golfRound.setShotsHole11(5)
		golfRound.setShotsHole12(3)
		golfRound.setShotsHole13(5)
		golfRound.setShotsHole14(3)
		golfRound.setShotsHole15(3)
		golfRound.setShotsHole16(5)
		golfRound.setShotsHole17(4)
		golfRound.setShotsHole18(3)
		golfRound.setShotsHole2(3)
		golfRound.setShotsHole3(3)
		golfRound.setShotsHole4(5)
		golfRound.setShotsHole5(4)
		golfRound.setShotsHole6(4)
		golfRound.setShotsHole7(3)
		golfRound.setShotsHole8(4)
		golfRound.setShotsHole9(4)
        golfRound.metaClass.isDirty = {
		//do functionality here
			}
		ScoreCard scoreCard = new ScoreCard()
		scoreCard.setCourseLengthYards(2333)
		GolfCourseHole gch = new GolfCourseHole()
		gch.setHoleIndex(3)
		gch.setHoleNumber(3)
		gch.setId(new ObjectId(new Date()))
		gch.setName("Name")
		gch.setPar(4)
		gch.setYards(342)
		scoreCard.setDateCreated(new Date())
		def array = [0, 0, 0, 0, 0] as byte[]
		scoreCard.setCourseMap(array)
		scoreCard.setHole1(gch)
		scoreCard.setHole2(gch)
		scoreCard.setHole3(gch)
		scoreCard.setHole4(gch)
		scoreCard.setHole5(gch)
		scoreCard.setHole6(gch)
		scoreCard.setHole7(gch)
		scoreCard.setHole8(gch)
		scoreCard.setHole9(gch)
		scoreCard.setHole10(gch)
		scoreCard.setHole11(gch)
		scoreCard.setHole12(gch)
		scoreCard.setHole13(gch)
		scoreCard.setHole14(gch)
		scoreCard.setHole15(gch)
		scoreCard.setHole16(gch)
		scoreCard.setHole17(gch)
		scoreCard.setHole18(gch)
		golfRound.setScoreCard(scoreCard)
		
		log.info "golfRound-----> " + golfRound
		if (!golfRound.save(flush: true)) {
			log.info "golfRound.errors-----> " + golfRound.errors
			assert false
		}

        assert GolfRound.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/golfRound/list'


        populateValidParams(params)
        def golfRound = new GolfRound()
		golfRound.setDateCreated(new Date())
		golfRound.setId(new ObjectId(new Date()))
		golfRound.setInProgress(true)
		golfRound.setShotsHole1(3)
		golfRound.setScoreCard(null)
		golfRound.setShotsHole10(4)
		golfRound.setShotsHole11(5)
		golfRound.setShotsHole12(3)
		golfRound.setShotsHole13(5)
		golfRound.setShotsHole14(3)
		golfRound.setShotsHole15(3)
		golfRound.setShotsHole16(5)
		golfRound.setShotsHole17(4)
		golfRound.setShotsHole18(3)
		golfRound.setShotsHole2(3)
		golfRound.setShotsHole3(3)
		golfRound.setShotsHole4(5)
		golfRound.setShotsHole5(4)
		golfRound.setShotsHole6(4)
		golfRound.setShotsHole7(3)
		golfRound.setShotsHole8(4)
		golfRound.setShotsHole9(4)
        golfRound.metaClass.isDirty = {
		//do functionality here
			}
		ScoreCard scoreCard = new ScoreCard()
		scoreCard.setCourseLengthYards(2333)
		GolfCourseHole gch = new GolfCourseHole()
		gch.setHoleIndex(3)
		gch.setHoleNumber(3)
		gch.setId(new ObjectId(new Date()))
		gch.setName("Name")
		gch.setPar(4)
		gch.setYards(342)
		scoreCard.setDateCreated(new Date())
		def array = [0, 0, 0, 0, 0] as byte[]
		scoreCard.setCourseMap(array)
		scoreCard.setHole1(gch)
		scoreCard.setHole2(gch)
		scoreCard.setHole3(gch)
		scoreCard.setHole4(gch)
		scoreCard.setHole5(gch)
		scoreCard.setHole6(gch)
		scoreCard.setHole7(gch)
		scoreCard.setHole8(gch)
		scoreCard.setHole9(gch)
		scoreCard.setHole10(gch)
		scoreCard.setHole11(gch)
		scoreCard.setHole12(gch)
		scoreCard.setHole13(gch)
		scoreCard.setHole14(gch)
		scoreCard.setHole15(gch)
		scoreCard.setHole16(gch)
		scoreCard.setHole17(gch)
		scoreCard.setHole18(gch)
		golfRound.setScoreCard(scoreCard)
		
		log.info "golfRound-----> " + golfRound
		if (!golfRound.save(flush: true)) {
			log.info "golfRound.errors-----> " + golfRound.errors
			assert false
		}

        params.id = golfRound.id

        def model = controller.show()

        assert model.golfRoundInstance == golfRound
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/golfRound/list'


        populateValidParams(params)
        def golfRound = new GolfRound()
		golfRound.setDateCreated(new Date())
		golfRound.setId(new ObjectId(new Date()))
		golfRound.setInProgress(true)
		golfRound.setShotsHole1(3)
		golfRound.setScoreCard(null)
		golfRound.setShotsHole10(4)
		golfRound.setShotsHole11(5)
		golfRound.setShotsHole12(3)
		golfRound.setShotsHole13(5)
		golfRound.setShotsHole14(3)
		golfRound.setShotsHole15(3)
		golfRound.setShotsHole16(5)
		golfRound.setShotsHole17(4)
		golfRound.setShotsHole18(3)
		golfRound.setShotsHole2(3)
		golfRound.setShotsHole3(3)
		golfRound.setShotsHole4(5)
		golfRound.setShotsHole5(4)
		golfRound.setShotsHole6(4)
		golfRound.setShotsHole7(3)
		golfRound.setShotsHole8(4)
		golfRound.setShotsHole9(4)
        golfRound.metaClass.isDirty = {
		//do functionality here
			}
		ScoreCard scoreCard = new ScoreCard()
		scoreCard.setCourseLengthYards(2333)
		GolfCourseHole gch = new GolfCourseHole()
		gch.setHoleIndex(3)
		gch.setHoleNumber(3)
		gch.setId(new ObjectId(new Date()))
		gch.setName("Name")
		gch.setPar(4)
		gch.setYards(342)
		scoreCard.setDateCreated(new Date())
		def array = [0, 0, 0, 0, 0] as byte[]
		scoreCard.setCourseMap(array)
		scoreCard.setHole1(gch)
		scoreCard.setHole2(gch)
		scoreCard.setHole3(gch)
		scoreCard.setHole4(gch)
		scoreCard.setHole5(gch)
		scoreCard.setHole6(gch)
		scoreCard.setHole7(gch)
		scoreCard.setHole8(gch)
		scoreCard.setHole9(gch)
		scoreCard.setHole10(gch)
		scoreCard.setHole11(gch)
		scoreCard.setHole12(gch)
		scoreCard.setHole13(gch)
		scoreCard.setHole14(gch)
		scoreCard.setHole15(gch)
		scoreCard.setHole16(gch)
		scoreCard.setHole17(gch)
		scoreCard.setHole18(gch)
		golfRound.setScoreCard(scoreCard)
		
		log.info "golfRound-----> " + golfRound
		if (!golfRound.save(flush: true)) {
			log.info "golfRound.errors-----> " + golfRound.errors
			assert false
		}

        params.id = golfRound.id

        def model = controller.edit()

        assert model.golfRoundInstance == golfRound
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/golfRound/list'

        response.reset()


        populateValidParams(params)
        def golfRound = new GolfRound()
		golfRound.setDateCreated(new Date())
		golfRound.setId(new ObjectId(new Date()))
		golfRound.setInProgress(true)
		golfRound.setShotsHole1(3)
		golfRound.setScoreCard(null)
		golfRound.setShotsHole10(4)
		golfRound.setShotsHole11(5)
		golfRound.setShotsHole12(3)
		golfRound.setShotsHole13(5)
		golfRound.setShotsHole14(3)
		golfRound.setShotsHole15(3)
		golfRound.setShotsHole16(5)
		golfRound.setShotsHole17(4)
		golfRound.setShotsHole18(3)
		golfRound.setShotsHole2(3)
		golfRound.setShotsHole3(3)
		golfRound.setShotsHole4(5)
		golfRound.setShotsHole5(4)
		golfRound.setShotsHole6(4)
		golfRound.setShotsHole7(3)
		golfRound.setShotsHole8(4)
		golfRound.setShotsHole9(4)
        golfRound.metaClass.isDirty = {
		//do functionality here
			}
		ScoreCard scoreCard = new ScoreCard()
		scoreCard.setCourseLengthYards(2333)
		GolfCourseHole gch = new GolfCourseHole()
		gch.setHoleIndex(3)
		gch.setHoleNumber(3)
		gch.setId(new ObjectId(new Date()))
		gch.setName("Name")
		gch.setPar(4)
		gch.setYards(342)
		scoreCard.setDateCreated(new Date())
		def array = [0, 0, 0, 0, 0] as byte[]
		scoreCard.setCourseMap(array)
		scoreCard.setHole1(gch)
		scoreCard.setHole2(gch)
		scoreCard.setHole3(gch)
		scoreCard.setHole4(gch)
		scoreCard.setHole5(gch)
		scoreCard.setHole6(gch)
		scoreCard.setHole7(gch)
		scoreCard.setHole8(gch)
		scoreCard.setHole9(gch)
		scoreCard.setHole10(gch)
		scoreCard.setHole11(gch)
		scoreCard.setHole12(gch)
		scoreCard.setHole13(gch)
		scoreCard.setHole14(gch)
		scoreCard.setHole15(gch)
		scoreCard.setHole16(gch)
		scoreCard.setHole17(gch)
		scoreCard.setHole18(gch)
		golfRound.setScoreCard(scoreCard)
		
		log.info "golfRound-----> " + golfRound
		if (!golfRound.save(flush: true)) {
			log.info "golfRound.errors-----> " + golfRound.errors
			assert false
		}

    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/golfRound/list'

        response.reset()

        populateValidParams(params)
       def golfRound = new GolfRound()
		golfRound.setDateCreated(new Date())
		golfRound.setId(new ObjectId(new Date()))
		golfRound.setInProgress(true)
		golfRound.setShotsHole1(3)
		golfRound.setScoreCard(null)
		golfRound.setShotsHole10(4)
		golfRound.setShotsHole11(5)
		golfRound.setShotsHole12(3)
		golfRound.setShotsHole13(5)
		golfRound.setShotsHole14(3)
		golfRound.setShotsHole15(3)
		golfRound.setShotsHole16(5)
		golfRound.setShotsHole17(4)
		golfRound.setShotsHole18(3)
		golfRound.setShotsHole2(3)
		golfRound.setShotsHole3(3)
		golfRound.setShotsHole4(5)
		golfRound.setShotsHole5(4)
		golfRound.setShotsHole6(4)
		golfRound.setShotsHole7(3)
		golfRound.setShotsHole8(4)
		golfRound.setShotsHole9(4)
        golfRound.metaClass.isDirty = {
		//do functionality here
			}
		ScoreCard scoreCard = new ScoreCard()
		scoreCard.setCourseLengthYards(2333)
		GolfCourseHole gch = new GolfCourseHole()
		gch.setHoleIndex(3)
		gch.setHoleNumber(3)
		gch.setId(new ObjectId(new Date()))
		gch.setName("Name")
		gch.setPar(4)
		gch.setYards(342)
		scoreCard.setDateCreated(new Date())
		def array = [0, 0, 0, 0, 0] as byte[]
		scoreCard.setCourseMap(array)
		scoreCard.setHole1(gch)
		scoreCard.setHole2(gch)
		scoreCard.setHole3(gch)
		scoreCard.setHole4(gch)
		scoreCard.setHole5(gch)
		scoreCard.setHole6(gch)
		scoreCard.setHole7(gch)
		scoreCard.setHole8(gch)
		scoreCard.setHole9(gch)
		scoreCard.setHole10(gch)
		scoreCard.setHole11(gch)
		scoreCard.setHole12(gch)
		scoreCard.setHole13(gch)
		scoreCard.setHole14(gch)
		scoreCard.setHole15(gch)
		scoreCard.setHole16(gch)
		scoreCard.setHole17(gch)
		scoreCard.setHole18(gch)
		golfRound.setScoreCard(scoreCard)
		
		log.info "golfRound-----> " + golfRound
		if (!golfRound.save(flush: true)) {
			log.info "golfRound.errors-----> " + golfRound.errors
			assert false
		}
        assert GolfRound.count() == 1

        params.id = golfRound.id

        controller.delete()

        assert GolfRound.count() == 0
        assert GolfRound.get(golfRound.id) == null
        assert response.redirectedUrl == '/golfRound/list'
    }
}
