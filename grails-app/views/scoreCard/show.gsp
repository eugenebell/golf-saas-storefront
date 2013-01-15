
<%@ page import="golf.saas.storefront.ScoreCard" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'scoreCard.label', default: 'ScoreCard')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-scoreCard" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-scoreCard" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list scoreCard">
			
				<g:if test="${scoreCardInstance?.courseLengthYards}">
				<li class="fieldcontain">
					<span id="courseLengthYards-label" class="property-label"><g:message code="scoreCard.courseLengthYards.label" default="Course Length Yards" /></span>
					
						<span class="property-value" aria-labelledby="courseLengthYards-label"><g:fieldValue bean="${scoreCardInstance}" field="courseLengthYards"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.courseMap}">
				<li class="fieldcontain">
					<span id="courseMap-label" class="property-label"><g:message code="scoreCard.courseMap.label" default="Course Map" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="scoreCard.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${scoreCardInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.golfCourse}">
				<li class="fieldcontain">
					<span id="golfCourse-label" class="property-label"><g:message code="scoreCard.golfCourse.label" default="Golf Course" /></span>
					
						<span class="property-value" aria-labelledby="golfCourse-label"><g:link controller="golfCourse" action="show" id="${scoreCardInstance?.golfCourse?.id}">${scoreCardInstance?.golfCourse?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.hole1}">
				<li class="fieldcontain">
					<span id="hole1-label" class="property-label"><g:message code="scoreCard.hole1.label" default="Hole1" /></span>
					
						<span class="property-value" aria-labelledby="hole1-label"><g:link controller="golfCourseHole" action="show" id="${scoreCardInstance?.hole1?.id}">${scoreCardInstance?.hole1?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.hole10}">
				<li class="fieldcontain">
					<span id="hole10-label" class="property-label"><g:message code="scoreCard.hole10.label" default="Hole10" /></span>
					
						<span class="property-value" aria-labelledby="hole10-label"><g:link controller="golfCourseHole" action="show" id="${scoreCardInstance?.hole10?.id}">${scoreCardInstance?.hole10?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.hole11}">
				<li class="fieldcontain">
					<span id="hole11-label" class="property-label"><g:message code="scoreCard.hole11.label" default="Hole11" /></span>
					
						<span class="property-value" aria-labelledby="hole11-label"><g:link controller="golfCourseHole" action="show" id="${scoreCardInstance?.hole11?.id}">${scoreCardInstance?.hole11?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.hole12}">
				<li class="fieldcontain">
					<span id="hole12-label" class="property-label"><g:message code="scoreCard.hole12.label" default="Hole12" /></span>
					
						<span class="property-value" aria-labelledby="hole12-label"><g:link controller="golfCourseHole" action="show" id="${scoreCardInstance?.hole12?.id}">${scoreCardInstance?.hole12?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.hole13}">
				<li class="fieldcontain">
					<span id="hole13-label" class="property-label"><g:message code="scoreCard.hole13.label" default="Hole13" /></span>
					
						<span class="property-value" aria-labelledby="hole13-label"><g:link controller="golfCourseHole" action="show" id="${scoreCardInstance?.hole13?.id}">${scoreCardInstance?.hole13?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.hole14}">
				<li class="fieldcontain">
					<span id="hole14-label" class="property-label"><g:message code="scoreCard.hole14.label" default="Hole14" /></span>
					
						<span class="property-value" aria-labelledby="hole14-label"><g:link controller="golfCourseHole" action="show" id="${scoreCardInstance?.hole14?.id}">${scoreCardInstance?.hole14?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.hole15}">
				<li class="fieldcontain">
					<span id="hole15-label" class="property-label"><g:message code="scoreCard.hole15.label" default="Hole15" /></span>
					
						<span class="property-value" aria-labelledby="hole15-label"><g:link controller="golfCourseHole" action="show" id="${scoreCardInstance?.hole15?.id}">${scoreCardInstance?.hole15?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.hole16}">
				<li class="fieldcontain">
					<span id="hole16-label" class="property-label"><g:message code="scoreCard.hole16.label" default="Hole16" /></span>
					
						<span class="property-value" aria-labelledby="hole16-label"><g:link controller="golfCourseHole" action="show" id="${scoreCardInstance?.hole16?.id}">${scoreCardInstance?.hole16?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.hole17}">
				<li class="fieldcontain">
					<span id="hole17-label" class="property-label"><g:message code="scoreCard.hole17.label" default="Hole17" /></span>
					
						<span class="property-value" aria-labelledby="hole17-label"><g:link controller="golfCourseHole" action="show" id="${scoreCardInstance?.hole17?.id}">${scoreCardInstance?.hole17?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.hole18}">
				<li class="fieldcontain">
					<span id="hole18-label" class="property-label"><g:message code="scoreCard.hole18.label" default="Hole18" /></span>
					
						<span class="property-value" aria-labelledby="hole18-label"><g:link controller="golfCourseHole" action="show" id="${scoreCardInstance?.hole18?.id}">${scoreCardInstance?.hole18?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.hole2}">
				<li class="fieldcontain">
					<span id="hole2-label" class="property-label"><g:message code="scoreCard.hole2.label" default="Hole2" /></span>
					
						<span class="property-value" aria-labelledby="hole2-label"><g:link controller="golfCourseHole" action="show" id="${scoreCardInstance?.hole2?.id}">${scoreCardInstance?.hole2?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.hole3}">
				<li class="fieldcontain">
					<span id="hole3-label" class="property-label"><g:message code="scoreCard.hole3.label" default="Hole3" /></span>
					
						<span class="property-value" aria-labelledby="hole3-label"><g:link controller="golfCourseHole" action="show" id="${scoreCardInstance?.hole3?.id}">${scoreCardInstance?.hole3?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.hole4}">
				<li class="fieldcontain">
					<span id="hole4-label" class="property-label"><g:message code="scoreCard.hole4.label" default="Hole4" /></span>
					
						<span class="property-value" aria-labelledby="hole4-label"><g:link controller="golfCourseHole" action="show" id="${scoreCardInstance?.hole4?.id}">${scoreCardInstance?.hole4?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.hole5}">
				<li class="fieldcontain">
					<span id="hole5-label" class="property-label"><g:message code="scoreCard.hole5.label" default="Hole5" /></span>
					
						<span class="property-value" aria-labelledby="hole5-label"><g:link controller="golfCourseHole" action="show" id="${scoreCardInstance?.hole5?.id}">${scoreCardInstance?.hole5?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.hole6}">
				<li class="fieldcontain">
					<span id="hole6-label" class="property-label"><g:message code="scoreCard.hole6.label" default="Hole6" /></span>
					
						<span class="property-value" aria-labelledby="hole6-label"><g:link controller="golfCourseHole" action="show" id="${scoreCardInstance?.hole6?.id}">${scoreCardInstance?.hole6?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.hole7}">
				<li class="fieldcontain">
					<span id="hole7-label" class="property-label"><g:message code="scoreCard.hole7.label" default="Hole7" /></span>
					
						<span class="property-value" aria-labelledby="hole7-label"><g:link controller="golfCourseHole" action="show" id="${scoreCardInstance?.hole7?.id}">${scoreCardInstance?.hole7?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.hole8}">
				<li class="fieldcontain">
					<span id="hole8-label" class="property-label"><g:message code="scoreCard.hole8.label" default="Hole8" /></span>
					
						<span class="property-value" aria-labelledby="hole8-label"><g:link controller="golfCourseHole" action="show" id="${scoreCardInstance?.hole8?.id}">${scoreCardInstance?.hole8?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.hole9}">
				<li class="fieldcontain">
					<span id="hole9-label" class="property-label"><g:message code="scoreCard.hole9.label" default="Hole9" /></span>
					
						<span class="property-value" aria-labelledby="hole9-label"><g:link controller="golfCourseHole" action="show" id="${scoreCardInstance?.hole9?.id}">${scoreCardInstance?.hole9?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.identifier}">
				<li class="fieldcontain">
					<span id="identifier-label" class="property-label"><g:message code="scoreCard.identifier.label" default="Identifier" /></span>
					
						<span class="property-value" aria-labelledby="identifier-label"><g:fieldValue bean="${scoreCardInstance}" field="identifier"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="scoreCard.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${scoreCardInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.par}">
				<li class="fieldcontain">
					<span id="par-label" class="property-label"><g:message code="scoreCard.par.label" default="Par" /></span>
					
						<span class="property-value" aria-labelledby="par-label"><g:fieldValue bean="${scoreCardInstance}" field="par"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${scoreCardInstance?.teeColor}">
				<li class="fieldcontain">
					<span id="teeColor-label" class="property-label"><g:message code="scoreCard.teeColor.label" default="Tee Color" /></span>
					
						<span class="property-value" aria-labelledby="teeColor-label"><g:fieldValue bean="${scoreCardInstance}" field="teeColor"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${scoreCardInstance?.id}" />
					<g:link class="edit" action="edit" id="${scoreCardInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
