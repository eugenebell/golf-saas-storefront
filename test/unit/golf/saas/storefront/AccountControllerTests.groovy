package golf.saas.storefront



import grails.test.mixin.*

import org.apache.log4j.Logger
import org.junit.*

import org.bson.types.ObjectId

@TestFor(AccountController)
@Mock(Account)
class AccountControllerTests {
	
	Logger log = Logger.getInstance(AccountControllerTests.class)
	
    def populateValidParams(params) {
      assert params != null  
    }

    void testIndex() {
        controller.index()
        assert "/account/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.accountInstanceList.size() == 0
        assert model.accountInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.accountInstance != null
    }

    void testSave() {
        controller.save()

        assert model.accountInstance != null
        assert view == '/account/create'

        response.reset()

        populateValidParams(params)
        def account = new Account(params)
		account.setAccountExpired(false)
		account.setAccountLocked(false)
		account.setAddressOne("setAddressOne")
		account.setAddressThree("")
		account.setAddressTwo("")
		account.setConfirm("ppp")
		account.setCounty("ooo")
		account.setDateCreated(new Date())
		account.setEmail("kkkkkkk@jjhg.com")
		account.setEnabled(true)
		account.setFax("")
		account.setGolfClub(null)
		account.setGolfer()
		account.setGolfSociety(null)
		account.setFirstName("bob")
		account.setId(new ObjectId(new Date()))
		account.setLastName("last")
		account.setMobile("")
		account.setPassword("ab4dd0315eb9f3ec424ab4a94472412812905c1ef737d1002da84de2d1427531")
		account.setPasswordExpired(false)
		account.setPhone("")
		account.setTitle("kk")
		account.setTown("ttttt")
		account.setUsername("bob")
		account.metaClass.isDirty = { 
		//do functionality here
			}
		
		log.info "account-----> " + account
		if (!account.save(flush: true)) {
			log.info "account.errors-----> " + account.errors
			assert false
		}
        assert Account.count() == 1
    }

    void testShow() {
        populateValidParams(params)
        def account = new Account(params)
		account.setAccountExpired(false)
		account.setAccountLocked(false)
		account.setAddressOne("setAddressOne")
		account.setAddressThree("")
		account.setAddressTwo("")
		account.setConfirm("ppp")
		account.setCounty("ooo")
		account.setDateCreated(new Date())
		account.setEmail("kkkkkkk@jjhg.com")
		account.setEnabled(true)
		account.setFax("")
		account.setGolfClub(null)
		account.setGolfer()
		account.setGolfSociety(null)
		account.setFirstName("bob")
		account.setId(new ObjectId(new Date()))
		account.setLastName("last")
		account.setMobile("")
		account.setPassword("ab4dd0315eb9f3ec424ab4a94472412812905c1ef737d1002da84de2d1427531")
		account.setPasswordExpired(false)
		account.setPhone("")
		account.setTitle("kk")
		account.setTown("ttttt")
		account.setUsername("bob")
		account.metaClass.isDirty = { 
		//do functionality here
			}

        params.id = account.id

        def model = controller.show()
		log.info("--- model --- " + model)
		assert response.redirectedUrl == '/account/list'
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/account/index'

        populateValidParams(params)

		log.info "Eugene-params----> " + params
        def account = new Account(params)
		account.setAccountExpired(false)
		account.setAccountLocked(false)
		account.setAddressOne("setAddressOne")
		account.setAddressThree("")
		account.setAddressTwo("")
		account.setConfirm("ppp")
		account.setCounty("ooo")
		account.setDateCreated(new Date())
		account.setEmail("kkkkkkk@jjhg.com")
		account.setEnabled(true)
		account.setFax("")
		account.setGolfClub(null)
		account.setGolfer()
		account.setGolfSociety(null)
		account.setFirstName("bob")
		account.setId(new ObjectId(new Date()))
		account.setLastName("last")
		account.setMobile("")
		account.setPassword("ab4dd0315eb9f3ec424ab4a94472412812905c1ef737d1002da84de2d1427531")
		account.setPasswordExpired(false)
		account.setPhone("")
		account.setTitle("kk")
		account.setTown("ttttt")
		account.setUsername("bob")
		account.metaClass.isDirty = { 
		//do functionality here
			}
		
		log.info "account-----> " + account
 
		if (!account.save(flush: true)) {
			log.info "account.errors-----> " + account.errors
			assert false
		}
		
        assert account.firstName == "bob"
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/account/list'

        response.reset()


        populateValidParams(params)
        def account = new Account(params)
		account.setAccountExpired(false)
		account.setAccountLocked(false)
		account.setAddressOne("setAddressOne")
		account.setAddressThree("")
		account.setAddressTwo("")
		account.setConfirm("ppp")
		account.setCounty("ooo")
		account.setDateCreated(new Date())
		account.setEmail("kkkkkkk@jjhg.com")
		account.setEnabled(true)
		account.setFax("")
		account.setGolfClub(null)
		account.setGolfer()
		account.setGolfSociety(null)
		account.setFirstName("bob")
		account.setId(new ObjectId(new Date()))
		account.setLastName("last")
		account.setMobile("")
		account.setPassword("ab4dd0315eb9f3ec424ab4a94472412812905c1ef737d1002da84de2d1427531")
		account.setPasswordExpired(false)
		account.setPhone("")
		account.setTitle("kk")
		account.setTown("ttttt")
		account.setUsername("bob")
		account.metaClass.isDirty = { 
		//do functionality here
			}
		
		log.info "account-----> " + account
		if (!account.save(flush: true)) {
			log.info "account.errors-----> " + account.errors
			assert false
		}
		
		assert account.firstName == "bob"
		
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/account/list'

        response.reset()

        populateValidParams(params)
        def account = new Account(params)
		account.setAccountExpired(false)
		account.setAccountLocked(false)
		account.setAddressOne("setAddressOne")
		account.setAddressThree("")
		account.setAddressTwo("")
		account.setConfirm("ppp")
		account.setCounty("ooo")
		account.setDateCreated(new Date())
		account.setEmail("kkkkkkk@jjhg.com")
		account.setEnabled(true)
		account.setFax("")
		account.setGolfClub(null)
		account.setGolfer()
		account.setGolfSociety(null)
		account.setFirstName("bob")
		account.setId(new ObjectId(new Date()))
		account.setLastName("last")
		account.setMobile("")
		account.setPassword("ab4dd0315eb9f3ec424ab4a94472412812905c1ef737d1002da84de2d1427531")
		account.setPasswordExpired(false)
		account.setPhone("")
		account.setTitle("kk")
		account.setTown("ttttt")
		account.setUsername("bob")
		account.metaClass.isDirty = { 
		//do functionality here
			}
		log.info "account-----> " + account
		if (!account.save(flush: true)) {
			log.info "account.errors-----> " + account.errors
			assert false
		}
        assert Account.count() == 1

        params.id = account.id

        controller.delete()

        assert Account.count() == 0
        assert Account.get(account.id) == null
        assert response.redirectedUrl == '/account/list'
    }
}
