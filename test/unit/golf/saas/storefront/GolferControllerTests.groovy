package golf.saas.storefront



import grails.test.mixin.*

import org.apache.log4j.Logger;
import org.bson.types.ObjectId
import org.junit.*

@TestFor(GolferController)
@Mock(Golfer)
class GolferControllerTests {
	
	Logger log = Logger.getInstance(GolferControllerTests.class)

    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
	  params["id"] = '22'
	  params["player"] = null
    }

    void testIndex() {
        controller.index()
        assert "/golfer/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.golferInstanceList.size() == 0
        assert model.golferInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.golferInstance != null
    }

    void testSave() {
        controller.save()

        assert model.golferInstance != null
        assert view == '/golfer/create'

        response.reset()

        populateValidParams(params)
		def golfer = new Golfer()
		golfer.setId(new ObjectId(new Date()))
		Player p = new Player()
		p.setId(new ObjectId(new Date()))
		p.setDateCreated(new Date())
		p.setHandicap(10)
		p.setPlayerName("Bob")
		
		golfer.setPlayer(p)
		
        golfer.metaClass.isDirty = {
		//do functionality here
			}
		
		log.info "golfer-----> " + golfer
		if (!golfer.save(flush: true)) {
			log.info "golfer.errors-----> " + golfer.errors
			assert false
		}
        assert Golfer.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/golfer/list'


        populateValidParams(params)
        def golfer = new Golfer()
		golfer.setId(new ObjectId(new Date()))
		Player p = new Player()
		p.setId(new ObjectId(new Date()))
		p.setDateCreated(new Date())
		p.setHandicap(10)
		p.setPlayerName("Bob")
		
		golfer.setPlayer(p)
		
        golfer.metaClass.isDirty = {
		//do functionality here
			}
		
		log.info "golfer-----> " + golfer
		if (!golfer.save(flush: true)) {
			log.info "golfer.errors-----> " + golfer.errors
			assert false
		}

        params.id = golfer.id

        def model = controller.show()

        assert model.golferInstance == golfer
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/golfer/list'


        populateValidParams(params)
        def golfer = new Golfer()
		golfer.setId(new ObjectId(new Date()))
		Player p = new Player()
		p.setId(new ObjectId(new Date()))
		p.setDateCreated(new Date())
		p.setHandicap(10)
		p.setPlayerName("Bob")
		
		golfer.setPlayer(p)
		
        golfer.metaClass.isDirty = {
		//do functionality here
			}
		
		log.info "golfer-----> " + golfer
		if (!golfer.save(flush: true)) {
			log.info "golfer.errors-----> " + golfer.errors
			assert false
		}

        params.id = golfer.id

        def model = controller.edit()

        assert model.golferInstance == golfer
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/golfer/list'

        response.reset()


        populateValidParams(params)
        def golfer = new Golfer()
		golfer.setId(new ObjectId(new Date()))
		Player p = new Player()
		p.setId(new ObjectId(new Date()))
		p.setDateCreated(new Date())
		p.setHandicap(10)
		p.setPlayerName("Bob")
		
		golfer.setPlayer(p)
		
        golfer.metaClass.isDirty = {
		//do functionality here
			}
		
		log.info "golfer-----> " + golfer
		if (!golfer.save(flush: true)) {
			log.info "golfer.errors-----> " + golfer.errors
			assert false
		}

        
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/golfer/list'

        response.reset()

        populateValidParams(params)
        def golfer = new Golfer()
		golfer.setId(new ObjectId(new Date()))
		Player p = new Player()
		p.setId(new ObjectId(new Date()))
		p.setDateCreated(new Date())
		p.setHandicap(10)
		p.setPlayerName("Bob")
		
		golfer.setPlayer(p)
		
        golfer.metaClass.isDirty = {
		//do functionality here
			}
		
		log.info "golfer-----> " + golfer
		if (!golfer.save(flush: true)) {
			log.info "golfer.errors-----> " + golfer.errors
			assert false
		}
        assert Golfer.count() == 1

        params.id = golfer.id

        controller.delete()

        assert Golfer.count() == 0
        assert Golfer.get(golfer.id) == null
        assert response.redirectedUrl == '/golfer/list'
    }
}
