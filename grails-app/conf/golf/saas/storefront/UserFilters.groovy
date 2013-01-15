package golf.saas.storefront

class UserFilters {
	def springSecurityService
	
	def filters = {
		all(uri: '/**') {
			after = { model ->
				if (model && springSecurityService.isLoggedIn()) {
					model['user'] = Account.get(springSecurityService.principal.id)
				}
			}
		}
	}
}
