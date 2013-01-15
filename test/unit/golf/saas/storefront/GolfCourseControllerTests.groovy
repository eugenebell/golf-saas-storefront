package golf.saas.storefront



import grails.test.mixin.*

import org.apache.log4j.Logger;
import org.bson.types.ObjectId
import org.junit.*

@TestFor(GolfCourseController)
@Mock(GolfCourse)
class GolfCourseControllerTests {
	
	Logger log = Logger.getInstance(GolfCourseControllerTests.class)	

    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/golfCourse/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.golfCourseInstanceList.size() == 0
        assert model.golfCourseInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.golfCourseInstance != null
    }

    void testSave() {
        controller.save()

        assert model.golfCourseInstance != null
        assert view == '/golfCourse/create'

        response.reset()

        populateValidParams(params)
		def gc = new GolfCourse()
		gc.setAddress("add")
		gc.setBookingsWelcomed(false)
		gc.setCourseType("Links")
		gc.setDateCreated(new Date())
		gc.setDesignedBy("Bob")
		gc.setDrivingRange(true)
		gc.setEmail("bob@tom.com")
		gc.setEnabledGPS(true)
		gc.setFax("2255447788")
		gc.setGolfSchool(true)
		gc.setGuestsWelcome(false)
		gc.setHoles(9)
		gc.setId(new ObjectId(new Date()))
		gc.setName("gc name")
		gc.setOtherFacilities("stuff")
		gc.setPhoneNumbers("224455988")
		gc.setPriceRangeWeekdaysHigh(1)
		gc.setPriceRangeWeekdaysLow(6)
		gc.setPriceRangeWeekendsHigh(20)
		gc.setPriceRangeWeekendsLow(21)
		gc.setProShop(false)
		gc.setPuttingGreen(false)
		gc.setPuttingGreen(true)
		gc.setRentalClubs(true)
		gc.setRentalGolfTrolley(false)
		gc.setTeachingPro(false)
		gc.setWebsite("www.golf.com")
		gc.setYearBuilt(1902)
		def array = [0, 0, 0, 0, 0] as byte[]
		gc.setLogo(array)
		gc.setRentalGolfCart(true)
		
		gc.metaClass.isDirty = {
		//do functionality here
			}
		
		log.info "golf course-----> " + gc
		if (!gc.save(flush: true)) {
			log.info "gc.errors-----> " + gc.errors
			assert false
		}
		//params = gc
        controller.save()

//        assert response.redirectedUrl == '/golfCourse/show/1'
//        assert controller.flash.message != null
        assert GolfCourse.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/golfCourse/list'


        populateValidParams(params)
        def gc = new GolfCourse()
		gc.setAddress("add")
		gc.setBookingsWelcomed(false)
		gc.setCourseType("Links")
		gc.setDateCreated(new Date())
		gc.setDesignedBy("Bob")
		gc.setDrivingRange(true)
		gc.setEmail("bob@tom.com")
		gc.setEnabledGPS(true)
		gc.setFax("2255447788")
		gc.setGolfSchool(true)
		gc.setGuestsWelcome(false)
		gc.setHoles(9)
		gc.setId(new ObjectId(new Date()))
		gc.setName("gc name")
		gc.setOtherFacilities("stuff")
		gc.setPhoneNumbers("224455988")
		gc.setPriceRangeWeekdaysHigh(1)
		gc.setPriceRangeWeekdaysLow(6)
		gc.setPriceRangeWeekendsHigh(20)
		gc.setPriceRangeWeekendsLow(21)
		gc.setProShop(false)
		gc.setPuttingGreen(false)
		gc.setPuttingGreen(true)
		gc.setRentalClubs(true)
		gc.setRentalGolfTrolley(false)
		gc.setTeachingPro(false)
		gc.setWebsite("www.golf.com")
		gc.setYearBuilt(1902)
		def array = [0, 0, 0, 0, 0] as byte[]
		gc.setLogo(array)
		gc.setRentalGolfCart(true)
		
		gc.metaClass.isDirty = {
		//do functionality here
			}
		
		log.info "golf course-----> " + gc
		if (!gc.save(flush: true)) {
			log.info "gc.errors-----> " + gc.errors
			assert false
		}
        params.id = gc.id

        def model = controller.show()

        assert model.golfCourseInstance == gc
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/golfCourse/list'


        populateValidParams(params)
        def gc = new GolfCourse()
		gc.setAddress("add")
		gc.setBookingsWelcomed(false)
		gc.setCourseType("Links")
		gc.setDateCreated(new Date())
		gc.setDesignedBy("Bob")
		gc.setDrivingRange(true)
		gc.setEmail("bob@tom.com")
		gc.setEnabledGPS(true)
		gc.setFax("2255447788")
		gc.setGolfSchool(true)
		gc.setGuestsWelcome(false)
		gc.setHoles(9)
		gc.setId(new ObjectId(new Date()))
		gc.setName("gc name")
		gc.setOtherFacilities("stuff")
		gc.setPhoneNumbers("224455988")
		gc.setPriceRangeWeekdaysHigh(1)
		gc.setPriceRangeWeekdaysLow(6)
		gc.setPriceRangeWeekendsHigh(20)
		gc.setPriceRangeWeekendsLow(21)
		gc.setProShop(false)
		gc.setPuttingGreen(false)
		gc.setPuttingGreen(true)
		gc.setRentalClubs(true)
		gc.setRentalGolfTrolley(false)
		gc.setTeachingPro(false)
		gc.setWebsite("www.golf.com")
		gc.setYearBuilt(1902)
		def array = [0, 0, 0, 0, 0] as byte[]
		gc.setLogo(array)
		gc.setRentalGolfCart(true)
		
		gc.metaClass.isDirty = {
		//do functionality here
			}
		
		log.info "golf course-----> " + gc
		if (!gc.save(flush: true)) {
			log.info "gc.errors-----> " + gc.errors
			assert false
		}
        params.id = gc.id

        def model = controller.edit()

        assert model.golfCourseInstance == gc
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/golfCourse/list'

        response.reset()


        populateValidParams(params)
        def gc = new GolfCourse()
		gc.setAddress("add")
		gc.setBookingsWelcomed(false)
		gc.setCourseType("Links")
		gc.setDateCreated(new Date())
		gc.setDesignedBy("Bob")
		gc.setDrivingRange(true)
		gc.setEmail("bob@tom.com")
		gc.setEnabledGPS(true)
		gc.setFax("2255447788")
		gc.setGolfSchool(true)
		gc.setGuestsWelcome(false)
		gc.setHoles(9)
		gc.setId(new ObjectId(new Date()))
		gc.setName("gc name")
		gc.setOtherFacilities("stuff")
		gc.setPhoneNumbers("224455988")
		gc.setPriceRangeWeekdaysHigh(1)
		gc.setPriceRangeWeekdaysLow(6)
		gc.setPriceRangeWeekendsHigh(20)
		gc.setPriceRangeWeekendsLow(21)
		gc.setProShop(false)
		gc.setPuttingGreen(false)
		gc.setPuttingGreen(true)
		gc.setRentalClubs(true)
		gc.setRentalGolfTrolley(false)
		gc.setTeachingPro(false)
		gc.setWebsite("www.golf.com")
		gc.setYearBuilt(1902)
		def array = [0, 0, 0, 0, 0] as byte[]
		gc.setLogo(array)
		gc.setRentalGolfCart(true)
		
		gc.metaClass.isDirty = {
		//do functionality here
			}
		
		log.info "golf course-----> " + gc
		if (!gc.save(flush: true)) {
			log.info "gc.errors-----> " + gc.errors
			assert false
		}

        // test invalid parameters in update
        params.id = gc.id
        //TODO: add invalid values to params object

       
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/golfCourse/list'

        response.reset()

        populateValidParams(params)
        def gc = new GolfCourse()
		gc.setAddress("add")
		gc.setBookingsWelcomed(false)
		gc.setCourseType("Links")
		gc.setDateCreated(new Date())
		gc.setDesignedBy("Bob")
		gc.setDrivingRange(true)
		gc.setEmail("bob@tom.com")
		gc.setEnabledGPS(true)
		gc.setFax("2255447788")
		gc.setGolfSchool(true)
		gc.setGuestsWelcome(false)
		gc.setHoles(9)
		gc.setId(new ObjectId(new Date()))
		gc.setName("gc name")
		gc.setOtherFacilities("stuff")
		gc.setPhoneNumbers("224455988")
		gc.setPriceRangeWeekdaysHigh(1)
		gc.setPriceRangeWeekdaysLow(6)
		gc.setPriceRangeWeekendsHigh(20)
		gc.setPriceRangeWeekendsLow(21)
		gc.setProShop(false)
		gc.setPuttingGreen(false)
		gc.setPuttingGreen(true)
		gc.setRentalClubs(true)
		gc.setRentalGolfTrolley(false)
		gc.setTeachingPro(false)
		gc.setWebsite("www.golf.com")
		gc.setYearBuilt(1902)
		def array = [0, 0, 0, 0, 0] as byte[]
		gc.setLogo(array)
		gc.setRentalGolfCart(true)
		
		gc.metaClass.isDirty = {
		//do functionality here
			}
		
		log.info "golf course-----> " + gc
		if (!gc.save(flush: true)) {
			log.info "gc.errors-----> " + gc.errors
			assert false
		}
        assert GolfCourse.count() == 1

        params.id = gc.id

        controller.delete()

        assert GolfCourse.count() == 0
        assert GolfCourse.get(gc.id) == null
        assert response.redirectedUrl == '/golfCourse/list'
    }
}
