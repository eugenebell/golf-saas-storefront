
<%@ page import="golf.saas.storefront.GolfCourse" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'golfCourse.label', default: 'GolfCourse')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-golfCourse" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-golfCourse" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list golfCourse">
			
				<g:if test="${golfCourseInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="golfCourse.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${golfCourseInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.bookingsWelcomed}">
				<li class="fieldcontain">
					<span id="bookingsWelcomed-label" class="property-label"><g:message code="golfCourse.bookingsWelcomed.label" default="Bookings Welcomed" /></span>
					
						<span class="property-value" aria-labelledby="bookingsWelcomed-label"><g:formatBoolean boolean="${golfCourseInstance?.bookingsWelcomed}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.courseType}">
				<li class="fieldcontain">
					<span id="courseType-label" class="property-label"><g:message code="golfCourse.courseType.label" default="Course Type" /></span>
					
						<span class="property-value" aria-labelledby="courseType-label"><g:fieldValue bean="${golfCourseInstance}" field="courseType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="golfCourse.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${golfCourseInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.designedBy}">
				<li class="fieldcontain">
					<span id="designedBy-label" class="property-label"><g:message code="golfCourse.designedBy.label" default="Designed By" /></span>
					
						<span class="property-value" aria-labelledby="designedBy-label"><g:fieldValue bean="${golfCourseInstance}" field="designedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.drivingRange}">
				<li class="fieldcontain">
					<span id="drivingRange-label" class="property-label"><g:message code="golfCourse.drivingRange.label" default="Driving Range" /></span>
					
						<span class="property-value" aria-labelledby="drivingRange-label"><g:formatBoolean boolean="${golfCourseInstance?.drivingRange}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="golfCourse.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${golfCourseInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.enabledGPS}">
				<li class="fieldcontain">
					<span id="enabledGPS-label" class="property-label"><g:message code="golfCourse.enabledGPS.label" default="Enabled GPS" /></span>
					
						<span class="property-value" aria-labelledby="enabledGPS-label"><g:formatBoolean boolean="${golfCourseInstance?.enabledGPS}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.fax}">
				<li class="fieldcontain">
					<span id="fax-label" class="property-label"><g:message code="golfCourse.fax.label" default="Fax" /></span>
					
						<span class="property-value" aria-labelledby="fax-label"><g:fieldValue bean="${golfCourseInstance}" field="fax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.golfSchool}">
				<li class="fieldcontain">
					<span id="golfSchool-label" class="property-label"><g:message code="golfCourse.golfSchool.label" default="Golf School" /></span>
					
						<span class="property-value" aria-labelledby="golfSchool-label"><g:formatBoolean boolean="${golfCourseInstance?.golfSchool}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.guestsWelcome}">
				<li class="fieldcontain">
					<span id="guestsWelcome-label" class="property-label"><g:message code="golfCourse.guestsWelcome.label" default="Guests Welcome" /></span>
					
						<span class="property-value" aria-labelledby="guestsWelcome-label"><g:formatBoolean boolean="${golfCourseInstance?.guestsWelcome}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.holes}">
				<li class="fieldcontain">
					<span id="holes-label" class="property-label"><g:message code="golfCourse.holes.label" default="Holes" /></span>
					
						<span class="property-value" aria-labelledby="holes-label"><g:fieldValue bean="${golfCourseInstance}" field="holes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.logo}">
				<li class="fieldcontain">
					<span id="logo-label" class="property-label"><g:message code="golfCourse.logo.label" default="Logo" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="golfCourse.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${golfCourseInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.otherFacilities}">
				<li class="fieldcontain">
					<span id="otherFacilities-label" class="property-label"><g:message code="golfCourse.otherFacilities.label" default="Other Facilities" /></span>
					
						<span class="property-value" aria-labelledby="otherFacilities-label"><g:fieldValue bean="${golfCourseInstance}" field="otherFacilities"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.phoneNumbers}">
				<li class="fieldcontain">
					<span id="phoneNumbers-label" class="property-label"><g:message code="golfCourse.phoneNumbers.label" default="Phone Numbers" /></span>
					
						<span class="property-value" aria-labelledby="phoneNumbers-label"><g:fieldValue bean="${golfCourseInstance}" field="phoneNumbers"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.priceRangeWeekdaysHigh}">
				<li class="fieldcontain">
					<span id="priceRangeWeekdaysHigh-label" class="property-label"><g:message code="golfCourse.priceRangeWeekdaysHigh.label" default="Price Range Weekdays High" /></span>
					
						<span class="property-value" aria-labelledby="priceRangeWeekdaysHigh-label"><g:fieldValue bean="${golfCourseInstance}" field="priceRangeWeekdaysHigh"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.priceRangeWeekdaysLow}">
				<li class="fieldcontain">
					<span id="priceRangeWeekdaysLow-label" class="property-label"><g:message code="golfCourse.priceRangeWeekdaysLow.label" default="Price Range Weekdays Low" /></span>
					
						<span class="property-value" aria-labelledby="priceRangeWeekdaysLow-label"><g:fieldValue bean="${golfCourseInstance}" field="priceRangeWeekdaysLow"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.priceRangeWeekendsHigh}">
				<li class="fieldcontain">
					<span id="priceRangeWeekendsHigh-label" class="property-label"><g:message code="golfCourse.priceRangeWeekendsHigh.label" default="Price Range Weekends High" /></span>
					
						<span class="property-value" aria-labelledby="priceRangeWeekendsHigh-label"><g:fieldValue bean="${golfCourseInstance}" field="priceRangeWeekendsHigh"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.priceRangeWeekendsLow}">
				<li class="fieldcontain">
					<span id="priceRangeWeekendsLow-label" class="property-label"><g:message code="golfCourse.priceRangeWeekendsLow.label" default="Price Range Weekends Low" /></span>
					
						<span class="property-value" aria-labelledby="priceRangeWeekendsLow-label"><g:fieldValue bean="${golfCourseInstance}" field="priceRangeWeekendsLow"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.proShop}">
				<li class="fieldcontain">
					<span id="proShop-label" class="property-label"><g:message code="golfCourse.proShop.label" default="Pro Shop" /></span>
					
						<span class="property-value" aria-labelledby="proShop-label"><g:formatBoolean boolean="${golfCourseInstance?.proShop}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.puttingGreen}">
				<li class="fieldcontain">
					<span id="puttingGreen-label" class="property-label"><g:message code="golfCourse.puttingGreen.label" default="Putting Green" /></span>
					
						<span class="property-value" aria-labelledby="puttingGreen-label"><g:formatBoolean boolean="${golfCourseInstance?.puttingGreen}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.rentalClubs}">
				<li class="fieldcontain">
					<span id="rentalClubs-label" class="property-label"><g:message code="golfCourse.rentalClubs.label" default="Rental Clubs" /></span>
					
						<span class="property-value" aria-labelledby="rentalClubs-label"><g:formatBoolean boolean="${golfCourseInstance?.rentalClubs}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.rentalGolfCart}">
				<li class="fieldcontain">
					<span id="rentalGolfCart-label" class="property-label"><g:message code="golfCourse.rentalGolfCart.label" default="Rental Golf Cart" /></span>
					
						<span class="property-value" aria-labelledby="rentalGolfCart-label"><g:formatBoolean boolean="${golfCourseInstance?.rentalGolfCart}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.rentalGolfTrolley}">
				<li class="fieldcontain">
					<span id="rentalGolfTrolley-label" class="property-label"><g:message code="golfCourse.rentalGolfTrolley.label" default="Rental Golf Trolley" /></span>
					
						<span class="property-value" aria-labelledby="rentalGolfTrolley-label"><g:formatBoolean boolean="${golfCourseInstance?.rentalGolfTrolley}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.scoreCards}">
				<li class="fieldcontain">
					<span id="scoreCards-label" class="property-label"><g:message code="golfCourse.scoreCards.label" default="Score Cards" /></span>
					
						<g:each in="${golfCourseInstance.scoreCards}" var="s">
						<span class="property-value" aria-labelledby="scoreCards-label"><g:link controller="scoreCard" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.teachingPro}">
				<li class="fieldcontain">
					<span id="teachingPro-label" class="property-label"><g:message code="golfCourse.teachingPro.label" default="Teaching Pro" /></span>
					
						<span class="property-value" aria-labelledby="teachingPro-label"><g:formatBoolean boolean="${golfCourseInstance?.teachingPro}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.website}">
				<li class="fieldcontain">
					<span id="website-label" class="property-label"><g:message code="golfCourse.website.label" default="Website" /></span>
					
						<span class="property-value" aria-labelledby="website-label"><g:fieldValue bean="${golfCourseInstance}" field="website"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseInstance?.yearBuilt}">
				<li class="fieldcontain">
					<span id="yearBuilt-label" class="property-label"><g:message code="golfCourse.yearBuilt.label" default="Year Built" /></span>
					
						<span class="property-value" aria-labelledby="yearBuilt-label"><g:fieldValue bean="${golfCourseInstance}" field="yearBuilt"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${golfCourseInstance?.id}" />
					<g:link class="edit" action="edit" id="${golfCourseInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
