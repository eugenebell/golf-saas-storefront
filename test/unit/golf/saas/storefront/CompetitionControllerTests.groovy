package golf.saas.storefront



import grails.test.mixin.*

import org.apache.log4j.Logger;
import org.bson.types.ObjectId
import org.junit.*

@TestFor(CompetitionController)
@Mock(Competition)
class CompetitionControllerTests {

	Logger log = Logger.getInstance(CompetitionControllerTests.class)
	
    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/competition/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.competitionInstanceList.size() == 0
        assert model.competitionInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.competitionInstance != null
    }

    void testSave() {
        controller.save()

        assert model.competitionInstance != null
        assert view == '/competition/create'

        response.reset()

        populateValidParams(params)
		def competition = new Competition(params)
		competition.setDateCreated(new Date())
		competition.setGolfClub(null);
		competition.setGolfSociety(null)
		competition.setId(new ObjectId(new Date()))
		competition.setName("CompName")
	
		competition.metaClass.isDirty = {
		//do functionality here
			}
		
		log.info "competition-----> " + competition
		if (!competition.save(flush: true)) {
			log.info "account.errors-----> " + competition.errors
			assert false
		}
        controller.save()

       
        assert Competition.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/competition/list'


        populateValidParams(params)
        def competition = new Competition(params)
		competition.setDateCreated(new Date())
		competition.setGolfClub(null);
		competition.setGolfSociety(null)
		competition.setId(new ObjectId(new Date()))
		competition.setName("CompName")
	
		competition.metaClass.isDirty = {
		//do functionality here
			}
		log.info "competition-----> " + competition
		if (!competition.save(flush: true)) {
			log.info "account.errors-----> " + competition.errors
			assert false
		}

        params.id = competition.id

        def model = controller.show()

        assert model.competitionInstance == competition
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/competition/list'


        populateValidParams(params)
        def competition = new Competition(params)
		competition.setDateCreated(new Date())
		competition.setGolfClub(null);
		competition.setGolfSociety(null)
		competition.setId(new ObjectId(new Date()))
		competition.setName("CompName")
	
		competition.metaClass.isDirty = {
		//do functionality here
			}
		log.info "competition-----> " + competition
		if (!competition.save(flush: true)) {
			log.info "account.errors-----> " + competition.errors
			assert false
		}

        params.id = competition.id

        def model = controller.edit()

        assert model.competitionInstance == competition
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/competition/list'

        response.reset()


        populateValidParams(params)
        def competition = new Competition(params)
		competition.setDateCreated(new Date())
		competition.setGolfClub(null);
		competition.setGolfSociety(null)
		competition.setId(new ObjectId(new Date()))
		competition.setName("CompName")
	
		competition.metaClass.isDirty = {
		//do functionality here
			}
		log.info "competition-----> " + competition
		if (!competition.save(flush: true)) {
			log.info "account.errors-----> " + competition.errors
			assert false
		}

        // test invalid parameters in update
        params.id = competition.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/competition/list'

        response.reset()

        populateValidParams(params)
         def competition = new Competition(params)
		competition.setDateCreated(new Date())
		competition.setGolfClub(null);
		competition.setGolfSociety(null)
		competition.setId(new ObjectId(new Date()))
		competition.setName("CompName")
	
		competition.metaClass.isDirty = {
		//do functionality here
			}
		log.info "competition-----> " + competition
		if (!competition.save(flush: true)) {
			log.info "account.errors-----> " + competition.errors
			assert false
		}

        assert Competition.count() == 1

        params.id = competition.id

        controller.delete()

        assert Competition.count() == 0
        assert Competition.get(competition.id) == null
        assert response.redirectedUrl == '/competition/list'
    }
}
