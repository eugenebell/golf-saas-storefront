package golf.saas.storefront

import golf.saas.security.SecurityUser

import org.bson.types.ObjectId


class Account extends SecurityUser {
		
	Date dateCreated = new Date()
	String title
	String firstName
	String lastName
	String addressOne
	String addressTwo
	String addressThree
	String town
	String county
	String mobile
	String phone
	String fax
	String email
	String confirm
	
	GolfSociety golfSociety
	GolfClub golfClub
	Golfer golfer
	
	
	static optional = ['addressTwo', 'addressThree', 'phone', 'fax',
		'golfSociety', 'golfClub', 'golfer', 'accountNonLocked', 'credentialsNonExpired',
		'enabled', 'confirm']
	
    static constraints = {
		title(blank:false)
		email(blank:false)
		email(email:true)
		firstName(blank:false)
		lastName(blank:false)
		addressOne(blank:false)
		addressTwo(blank:true)
		addressThree(blank:true)
		town(blank:false)
		county(blank:false)
		mobile(blank:true, matches:"[0-9]")
		phone(blank:true, matches:"[0-9]")
		fax(blank:true, matches:"[0-9]")
		golfClub(nullable:true)
		golfSociety(nullable:true)
		golfer(nullable:true)
		
    }
}
