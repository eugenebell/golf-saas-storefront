package golf.saas.storefront



import grails.test.mixin.*

import org.apache.log4j.Logger
import org.bson.types.ObjectId
import org.junit.*

@TestFor(GolfCourseHoleController)
@Mock(GolfCourseHole)
class GolfCourseHoleControllerTests {
	
	Logger log = Logger.getInstance(GolfCourseControllerTests.class)
	
    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/golfCourseHole/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.golfCourseHoleInstanceList.size() == 0
        assert model.golfCourseHoleInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.golfCourseHoleInstance != null
    }

    void testSave() {
        controller.save()

        assert model.golfCourseHoleInstance != null
        assert view == '/golfCourseHole/create'

        response.reset()

        populateValidParams(params)
		def golfCourseHole = new GolfCourseHole()
		golfCourseHole.setName("hole 1")
		golfCourseHole.setHoleIndex(2)
		golfCourseHole.setHoleNumber(4)
		golfCourseHole.setYards(387)
		golfCourseHole.setPar(4)
		golfCourseHole.setId(new ObjectId(new Date()))
		golfCourseHole.metaClass.isDirty = {
		//do functionality here
			}
		
		log.info "GolfCourseHole-----> " + golfCourseHole
		if (!golfCourseHole.save(flush: true)) {
			log.info "GolfCourseHole.errors-----> " + golfCourseHole.errors
			assert false
		}
        //controller.save()

        assert GolfCourseHole.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/golfCourseHole/list'

        populateValidParams(params)
        def golfCourseHole = new GolfCourseHole()
		golfCourseHole.setName("hole 1")
		golfCourseHole.setHoleIndex(2)
		golfCourseHole.setHoleNumber(4)
		golfCourseHole.setYards(387)
		golfCourseHole.setPar(4)
		golfCourseHole.setId(new ObjectId(new Date()))
		golfCourseHole.metaClass.isDirty = {
		//do functionality here
			}
		
		log.info "GolfCourseHole-----> " + golfCourseHole
		if (!golfCourseHole.save(flush: true)) {
			log.info "GolfCourseHole.errors-----> " + golfCourseHole.errors
			assert false
		}

        params.id = golfCourseHole.id

        def model = controller.show()

        assert model.golfCourseHoleInstance == golfCourseHole
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/golfCourseHole/list'

        populateValidParams(params)
        def golfCourseHole = new GolfCourseHole()
		golfCourseHole.setName("hole 1")
		golfCourseHole.setHoleIndex(2)
		golfCourseHole.setHoleNumber(4)
		golfCourseHole.setYards(387)
		golfCourseHole.setPar(4)
		golfCourseHole.setId(new ObjectId(new Date()))
		golfCourseHole.metaClass.isDirty = {
		//do functionality here
			}
		
		log.info "GolfCourseHole-----> " + golfCourseHole
		if (!golfCourseHole.save(flush: true)) {
			log.info "GolfCourseHole.errors-----> " + golfCourseHole.errors
			assert false
		}

        params.id = golfCourseHole.id

        def model = controller.edit()

        assert model.golfCourseHoleInstance == golfCourseHole
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/golfCourseHole/list'

        response.reset()

        populateValidParams(params)
        def golfCourseHole = new GolfCourseHole()
		golfCourseHole.setName("hole 1")
		golfCourseHole.setHoleIndex(2)
		golfCourseHole.setHoleNumber(4)
		golfCourseHole.setYards(387)
		golfCourseHole.setPar(4)
		golfCourseHole.setId(new ObjectId(new Date()))
		golfCourseHole.metaClass.isDirty = {
		//do functionality here
			}
		
		log.info "GolfCourseHole-----> " + golfCourseHole
		if (!golfCourseHole.save(flush: true)) {
			log.info "GolfCourseHole.errors-----> " + golfCourseHole.errors
			assert false
		}

        // test invalid parameters in update
        params.id = golfCourseHole.id
        //TODO: add invalid values to params object

        controller.update()

    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/golfCourseHole/list'

        response.reset()

        populateValidParams(params)
        def golfCourseHole = new GolfCourseHole()
		golfCourseHole.setName("hole 1")
		golfCourseHole.setHoleIndex(2)
		golfCourseHole.setHoleNumber(4)
		golfCourseHole.setYards(387)
		golfCourseHole.setPar(4)
		golfCourseHole.setId(new ObjectId(new Date()))
		golfCourseHole.metaClass.isDirty = {
		//do functionality here
			}
		
		log.info "GolfCourseHole-----> " + golfCourseHole
		if (!golfCourseHole.save(flush: true)) {
			log.info "GolfCourseHole.errors-----> " + golfCourseHole.errors
			assert false
		}
        assert GolfCourseHole.count() == 1

        params.id = golfCourseHole.id

        controller.delete()

        assert GolfCourseHole.count() == 0
        assert GolfCourseHole.get(golfCourseHole.id) == null
        assert response.redirectedUrl == '/golfCourseHole/list'
    }
}
