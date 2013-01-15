package golf.saas.storefront

import org.bson.types.ObjectId

class Golfer {

	ObjectId id

	static belongsTo = [account:Account]

	Player player

	static constraints = { 
		player(nullable:false)		
		account(nullable:true)
		 }
}
