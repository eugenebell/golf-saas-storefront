package golf.saas.storefront

import java.util.List;

import org.bson.types.ObjectId

class GolfCourse {

	ObjectId id
	String identifier
	
	static optional = ['fax', 'identifier']
	static hasMany = [scoreCards: ScoreCard]

	String name	
	byte[] logo
	String address
	String phoneNumbers
	String fax
	String email
	String website
	String courseType
	Integer holes
	String designedBy
	Integer yearBuilt
	Boolean guestsWelcome
	Boolean drivingRange
	Boolean puttingGreen
	Boolean rentalClubs
	Boolean rentalGolfTrolley
	Boolean enabledGPS
	Boolean rentalGolfCart
	Boolean proShop
	Boolean teachingPro
	Boolean golfSchool
	Boolean bookingsWelcomed
	Double priceRangeWeekdaysLow
	Double priceRangeWeekdaysHigh
	Double priceRangeWeekendsLow
	Double priceRangeWeekendsHigh
	String otherFacilities
	Date dateCreated	
	
	@Override
	public String toString() {
		return "$name"
	}
    static constraints = {
		name(blank:false)
		address(blank:false)
		identifier(nullable:true)
    }
}
