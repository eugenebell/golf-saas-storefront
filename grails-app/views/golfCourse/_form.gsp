<%@ page import="golf.saas.storefront.GolfCourse" %>



<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="golfCourse.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${golfCourseInstance?.address}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'bookingsWelcomed', 'error')} ">
	<label for="bookingsWelcomed">
		<g:message code="golfCourse.bookingsWelcomed.label" default="Bookings Welcomed" />
		
	</label>
	<g:checkBox name="bookingsWelcomed" value="${golfCourseInstance?.bookingsWelcomed}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'courseType', 'error')} ">
	<label for="courseType">
		<g:message code="golfCourse.courseType.label" default="Course Type" />
		
	</label>
	<g:textField name="courseType" value="${golfCourseInstance?.courseType}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'designedBy', 'error')} ">
	<label for="designedBy">
		<g:message code="golfCourse.designedBy.label" default="Designed By" />
		
	</label>
	<g:textField name="designedBy" value="${golfCourseInstance?.designedBy}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'drivingRange', 'error')} ">
	<label for="drivingRange">
		<g:message code="golfCourse.drivingRange.label" default="Driving Range" />
		
	</label>
	<g:checkBox name="drivingRange" value="${golfCourseInstance?.drivingRange}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="golfCourse.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${golfCourseInstance?.email}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'enabledGPS', 'error')} ">
	<label for="enabledGPS">
		<g:message code="golfCourse.enabledGPS.label" default="Enabled GPS" />
		
	</label>
	<g:checkBox name="enabledGPS" value="${golfCourseInstance?.enabledGPS}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'fax', 'error')} ">
	<label for="fax">
		<g:message code="golfCourse.fax.label" default="Fax" />
		
	</label>
	<g:textField name="fax" value="${golfCourseInstance?.fax}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'golfSchool', 'error')} ">
	<label for="golfSchool">
		<g:message code="golfCourse.golfSchool.label" default="Golf School" />
		
	</label>
	<g:checkBox name="golfSchool" value="${golfCourseInstance?.golfSchool}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'guestsWelcome', 'error')} ">
	<label for="guestsWelcome">
		<g:message code="golfCourse.guestsWelcome.label" default="Guests Welcome" />
		
	</label>
	<g:checkBox name="guestsWelcome" value="${golfCourseInstance?.guestsWelcome}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'holes', 'error')} ">
	<label for="holes">
		<g:message code="golfCourse.holes.label" default="Holes" />
		
	</label>
	<g:field type="number" name="holes" value="${golfCourseInstance.holes}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'logo', 'error')} ">
	<label for="logo">
		<g:message code="golfCourse.logo.label" default="Logo" />
		
	</label>
	<input type="file" id="logo" name="logo" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="golfCourse.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${golfCourseInstance?.name}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'otherFacilities', 'error')} ">
	<label for="otherFacilities">
		<g:message code="golfCourse.otherFacilities.label" default="Other Facilities" />
		
	</label>
	<g:textField name="otherFacilities" value="${golfCourseInstance?.otherFacilities}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'phoneNumbers', 'error')} ">
	<label for="phoneNumbers">
		<g:message code="golfCourse.phoneNumbers.label" default="Phone Numbers" />
		
	</label>
	<g:textField name="phoneNumbers" value="${golfCourseInstance?.phoneNumbers}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'priceRangeWeekdaysHigh', 'error')} ">
	<label for="priceRangeWeekdaysHigh">
		<g:message code="golfCourse.priceRangeWeekdaysHigh.label" default="Price Range Weekdays High" />
		
	</label>
	<g:field type="number" name="priceRangeWeekdaysHigh" value="${golfCourseInstance.priceRangeWeekdaysHigh}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'priceRangeWeekdaysLow', 'error')} ">
	<label for="priceRangeWeekdaysLow">
		<g:message code="golfCourse.priceRangeWeekdaysLow.label" default="Price Range Weekdays Low" />
		
	</label>
	<g:field type="number" name="priceRangeWeekdaysLow" value="${golfCourseInstance.priceRangeWeekdaysLow}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'priceRangeWeekendsHigh', 'error')} ">
	<label for="priceRangeWeekendsHigh">
		<g:message code="golfCourse.priceRangeWeekendsHigh.label" default="Price Range Weekends High" />
		
	</label>
	<g:field type="number" name="priceRangeWeekendsHigh" value="${golfCourseInstance.priceRangeWeekendsHigh}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'priceRangeWeekendsLow', 'error')} ">
	<label for="priceRangeWeekendsLow">
		<g:message code="golfCourse.priceRangeWeekendsLow.label" default="Price Range Weekends Low" />
		
	</label>
	<g:field type="number" name="priceRangeWeekendsLow" value="${golfCourseInstance.priceRangeWeekendsLow}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'proShop', 'error')} ">
	<label for="proShop">
		<g:message code="golfCourse.proShop.label" default="Pro Shop" />
		
	</label>
	<g:checkBox name="proShop" value="${golfCourseInstance?.proShop}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'puttingGreen', 'error')} ">
	<label for="puttingGreen">
		<g:message code="golfCourse.puttingGreen.label" default="Putting Green" />
		
	</label>
	<g:checkBox name="puttingGreen" value="${golfCourseInstance?.puttingGreen}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'rentalClubs', 'error')} ">
	<label for="rentalClubs">
		<g:message code="golfCourse.rentalClubs.label" default="Rental Clubs" />
		
	</label>
	<g:checkBox name="rentalClubs" value="${golfCourseInstance?.rentalClubs}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'rentalGolfCart', 'error')} ">
	<label for="rentalGolfCart">
		<g:message code="golfCourse.rentalGolfCart.label" default="Rental Golf Cart" />
		
	</label>
	<g:checkBox name="rentalGolfCart" value="${golfCourseInstance?.rentalGolfCart}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'rentalGolfTrolley', 'error')} ">
	<label for="rentalGolfTrolley">
		<g:message code="golfCourse.rentalGolfTrolley.label" default="Rental Golf Trolley" />
		
	</label>
	<g:checkBox name="rentalGolfTrolley" value="${golfCourseInstance?.rentalGolfTrolley}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'scoreCards', 'error')} ">
	<label for="scoreCards">
		<g:message code="golfCourse.scoreCards.label" default="Score Cards" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${golfCourseInstance?.scoreCards?}" var="s">
    <li><g:link controller="scoreCard" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="scoreCard" action="create" params="['golfCourse.id': golfCourseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'scoreCard.label', default: 'ScoreCard')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'teachingPro', 'error')} ">
	<label for="teachingPro">
		<g:message code="golfCourse.teachingPro.label" default="Teaching Pro" />
		
	</label>
	<g:checkBox name="teachingPro" value="${golfCourseInstance?.teachingPro}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'website', 'error')} ">
	<label for="website">
		<g:message code="golfCourse.website.label" default="Website" />
		
	</label>
	<g:textField name="website" value="${golfCourseInstance?.website}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseInstance, field: 'yearBuilt', 'error')} ">
	<label for="yearBuilt">
		<g:message code="golfCourse.yearBuilt.label" default="Year Built" />
		
	</label>
	<g:field type="number" name="yearBuilt" value="${golfCourseInstance.yearBuilt}" />
</div>

