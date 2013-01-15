//jelastic
//grails {
//	mongo { 
//    host="mongodb-golf-saas-storefront.j.layershift.co.uk"
//    port=27017 
//    username="admin" //mongodb jelastic
//    password="IAr4eLHW6D"  //mongodb jelastic
//    databaseName="golf-saas-storefront" 
//  } 
//}

//Heroku
grails {
//	mongo {
//    host="alex.mongohq.com"
//    port=10083
//    username="admin" 
//    password="IAr4eLHW6D"  
//    databaseName="app7905669"
//  }
}

//Tomcat/Cloudfoundry
//mongo {
//	    host="localhost"
//	    port=27017
//	    //username="admin" //mongodb jelastic
//	   // password="IAr4eLHW6D"  //mongodb jelastic
//	    databaseName="golf-saas-storefront"
//	  }



/*dataSource {
    pooled = true
    driverClassName = "org.h2.Driver"
    username = "sa"
    password = ""
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}*/
// environment specific settings
environments {
    development {
        	mongo {
			    host="alex.mongohq.com"
			    port=10083
			    username="admin" 
			    password="IAr4eLHW6D"  
			    databaseName="app7905669"
			  }
    }
    test {
        mongo {
		    host="localhost"
		    port=27017
		    databaseName="golf-saas-storefront"
		  }
    }
    production {
        	mongo {
			    host="alex.mongohq.com"
			    port=10083
			    username="admin" 
			    password="IAr4eLHW6D"  
			    databaseName="app7905669"
			  }
    }
}
