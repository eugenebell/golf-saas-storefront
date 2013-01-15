
<%@ page import="golf.saas.storefront.Account" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-account" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/welcome')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-account" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list account">
			
				<g:if test="${accountInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="account.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${accountInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="account.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${accountInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.addressOne}">
				<li class="fieldcontain">
					<span id="addressOne-label" class="property-label"><g:message code="account.addressOne.label" default="Address One" /></span>
					
						<span class="property-value" aria-labelledby="addressOne-label"><g:fieldValue bean="${accountInstance}" field="addressOne"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.addressThree}">
				<li class="fieldcontain">
					<span id="addressThree-label" class="property-label"><g:message code="account.addressThree.label" default="Address Three" /></span>
					
						<span class="property-value" aria-labelledby="addressThree-label"><g:fieldValue bean="${accountInstance}" field="addressThree"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.addressTwo}">
				<li class="fieldcontain">
					<span id="addressTwo-label" class="property-label"><g:message code="account.addressTwo.label" default="Address Two" /></span>
					
						<span class="property-value" aria-labelledby="addressTwo-label"><g:fieldValue bean="${accountInstance}" field="addressTwo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.county}">
				<li class="fieldcontain">
					<span id="county-label" class="property-label"><g:message code="account.county.label" default="County" /></span>
					
						<span class="property-value" aria-labelledby="county-label"><g:fieldValue bean="${accountInstance}" field="county"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="account.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${accountInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="account.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${accountInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.fax}">
				<li class="fieldcontain">
					<span id="fax-label" class="property-label"><g:message code="account.fax.label" default="Fax" /></span>
					
						<span class="property-value" aria-labelledby="fax-label"><g:fieldValue bean="${accountInstance}" field="fax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.mobile}">
				<li class="fieldcontain">
					<span id="mobile-label" class="property-label"><g:message code="account.mobile.label" default="Mobile" /></span>
					
						<span class="property-value" aria-labelledby="mobile-label"><g:fieldValue bean="${accountInstance}" field="mobile"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="account.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${accountInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="account.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${accountInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.town}">
				<li class="fieldcontain">
					<span id="town-label" class="property-label"><g:message code="account.town.label" default="Town" /></span>
					
						<span class="property-value" aria-labelledby="town-label"><g:fieldValue bean="${accountInstance}" field="town"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${accountInstance?.id}" />
					<g:link class="edit" action="edit" id="${accountInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
