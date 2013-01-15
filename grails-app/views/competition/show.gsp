
<%@ page import="golf.saas.storefront.Competition" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'competition.label', default: 'Competition')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-competition" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-competition" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list competition">
			
				<g:if test="${competitionInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="competition.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${competitionInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${competitionInstance?.golfClub}">
				<li class="fieldcontain">
					<span id="golfClub-label" class="property-label"><g:message code="competition.golfClub.label" default="Golf Club" /></span>
					
						<span class="property-value" aria-labelledby="golfClub-label"><g:link controller="golfClub" action="show" id="${competitionInstance?.golfClub?.id}">${competitionInstance?.golfClub?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${competitionInstance?.golfSociety}">
				<li class="fieldcontain">
					<span id="golfSociety-label" class="property-label"><g:message code="competition.golfSociety.label" default="Golf Society" /></span>
					
						<span class="property-value" aria-labelledby="golfSociety-label"><g:link controller="golfSociety" action="show" id="${competitionInstance?.golfSociety?.id}">${competitionInstance?.golfSociety?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${competitionInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="competition.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${competitionInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${competitionInstance?.playerParticipants}">
				<li class="fieldcontain">
					<span id="playerParticipants-label" class="property-label"><g:message code="competition.playerParticipants.label" default="Player Participants" /></span>
					
						<g:each in="${competitionInstance.playerParticipants}" var="p">
						<span class="property-value" aria-labelledby="playerParticipants-label"><g:link controller="playerParticipant" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${competitionInstance?.id}" />
					<g:link class="edit" action="edit" id="${competitionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
