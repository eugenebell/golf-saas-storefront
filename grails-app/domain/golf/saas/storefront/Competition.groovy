package golf.saas.storefront

import org.bson.types.ObjectId

class Competition {
	
	ObjectId id
	
	static hasMany = [playerParticipants:PlayerParticipant]
	static optional = ['golfClub', 'golfSociety']
	
	String name
	GolfClub golfClub
	GolfSociety golfSociety
	Date dateCreated = new Date()
    
	static constraints = {
		name(blank:false)
		golfClub(nullable:true)
		golfSociety(nullable:true)
    }
}
