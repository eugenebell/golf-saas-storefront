import golf.saas.security.SecurityRole
import golf.saas.storefront.GolfCourseHole

class BootStrap {

    def init = {
		def userRole = SecurityRole.findByAuthority('ROLE_USER') ?: new SecurityRole(authority: 'ROLE_USER').save(failOnError: true)
		def adminRole = SecurityRole.findByAuthority('ROLE_ADMIN') ?: new SecurityRole(authority: 'ROLE_ADMIN').save(failOnError: true)
		log.info "\n\n\n\n\n\n\n\n\n--------------- Storing GolfCourseHole"
		GolfCourseHole gh = new GolfCourseHole()
		gh.setHoleIndex(1)
		gh.setHoleNumber(1)
		gh.setName("temp")
		gh.setPar(3)
		gh.setYards(333)
		gh.save(flush: true)
		if (!gh.save(flush: true)) {
			log.info "--------------- failed?? GolfCourseHole"
			log gh.errors
		}
		log.info "\n\n\n\n\n\n\n\n\n--------------- stored?? GolfCourseHole"
    }
	
    def destroy = {
    }
}
