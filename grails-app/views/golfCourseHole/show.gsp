
<%@ page import="golf.saas.storefront.GolfCourseHole" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'golfCourseHole.label', default: 'GolfCourseHole')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-golfCourseHole" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-golfCourseHole" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list golfCourseHole">
			
				<g:if test="${golfCourseHoleInstance?.holeIndex}">
				<li class="fieldcontain">
					<span id="holeIndex-label" class="property-label"><g:message code="golfCourseHole.holeIndex.label" default="Hole Index" /></span>
					
						<span class="property-value" aria-labelledby="holeIndex-label"><g:fieldValue bean="${golfCourseHoleInstance}" field="holeIndex"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseHoleInstance?.holeNumber}">
				<li class="fieldcontain">
					<span id="holeNumber-label" class="property-label"><g:message code="golfCourseHole.holeNumber.label" default="Hole Number" /></span>
					
						<span class="property-value" aria-labelledby="holeNumber-label"><g:fieldValue bean="${golfCourseHoleInstance}" field="holeNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseHoleInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="golfCourseHole.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${golfCourseHoleInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseHoleInstance?.par}">
				<li class="fieldcontain">
					<span id="par-label" class="property-label"><g:message code="golfCourseHole.par.label" default="Par" /></span>
					
						<span class="property-value" aria-labelledby="par-label"><g:fieldValue bean="${golfCourseHoleInstance}" field="par"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseHoleInstance?.scoreCard}">
				<li class="fieldcontain">
					<span id="scoreCard-label" class="property-label"><g:message code="golfCourseHole.scoreCard.label" default="Score Card" /></span>
					
						<span class="property-value" aria-labelledby="scoreCard-label"><g:link controller="scoreCard" action="show" id="${golfCourseHoleInstance?.scoreCard?.id}">${golfCourseHoleInstance?.scoreCard?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${golfCourseHoleInstance?.yards}">
				<li class="fieldcontain">
					<span id="yards-label" class="property-label"><g:message code="golfCourseHole.yards.label" default="Yards" /></span>
					
						<span class="property-value" aria-labelledby="yards-label"><g:fieldValue bean="${golfCourseHoleInstance}" field="yards"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${golfCourseHoleInstance?.id}" />
					<g:link class="edit" action="edit" id="${golfCourseHoleInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
