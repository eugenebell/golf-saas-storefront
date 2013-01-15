package golf.saas.storefront



import grails.test.mixin.*

import org.bson.types.ObjectId
import org.junit.*

@TestFor(ScoreCardController)
@Mock(ScoreCard)
class ScoreCardControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/scoreCard/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.scoreCardInstanceList.size() == 0
        assert model.scoreCardInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.scoreCardInstance != null
    }

    void testSave() {
        controller.save()

        assert model.scoreCardInstance != null
        assert view == '/scoreCard/create'

        response.reset()

        populateValidParams(params)
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
		scoreCard.setName("name")
		scoreCard.setPar(72)
		scoreCard.setTeeColor("Blue")
		scoreCard.setIdentifier("id")
		log.info "scoreCard-----> " + scoreCard
		if (!scoreCard.save(flush: true)) {
			log.info "scoreCard.errors-----> " + scoreCard.errors
			assert false
		}

        assert ScoreCard.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/scoreCard/list'

        populateValidParams(params)
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
		scoreCard.setName("name")
		scoreCard.setPar(72)
		scoreCard.setTeeColor("Blue")
		scoreCard.setIdentifier("id")
		log.info "scoreCard-----> " + scoreCard
		if (!scoreCard.save(flush: true)) {
			log.info "scoreCard.errors-----> " + scoreCard.errors
			assert false
		}

        params.id = scoreCard.id

        def model = controller.show()

        assert model.scoreCardInstance == scoreCard
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/scoreCard/list'

        populateValidParams(params)
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
		scoreCard.setName("name")
		scoreCard.setPar(72)
		scoreCard.setTeeColor("Blue")
		scoreCard.setIdentifier("id")
		log.info "scoreCard-----> " + scoreCard
		if (!scoreCard.save(flush: true)) {
			log.info "scoreCard.errors-----> " + scoreCard.errors
			assert false
		}

        params.id = scoreCard.id

        def model = controller.edit()

        assert model.scoreCardInstance == scoreCard
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/scoreCard/list'

        response.reset()

        populateValidParams(params)
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
		scoreCard.setName("name")
		scoreCard.setPar(72)
		scoreCard.setTeeColor("Blue")
		scoreCard.setIdentifier("id")
		log.info "scoreCard-----> " + scoreCard
		if (!scoreCard.save(flush: true)) {
			log.info "scoreCard.errors-----> " + scoreCard.errors
			assert false
		}

    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/scoreCard/list'

        response.reset()

        populateValidParams(params)
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
		scoreCard.setName("name")
		scoreCard.setPar(72)
		scoreCard.setTeeColor("Blue")
		scoreCard.setIdentifier("id")
		log.info "scoreCard-----> " + scoreCard
		if (!scoreCard.save(flush: true)) {
			log.info "scoreCard.errors-----> " + scoreCard.errors
			assert false
		}
        assert ScoreCard.count() == 1

        params.id = scoreCard.id

        controller.delete()

        assert ScoreCard.count() == 0
        assert ScoreCard.get(scoreCard.id) == null
        assert response.redirectedUrl == '/scoreCard/list'
    }
}
