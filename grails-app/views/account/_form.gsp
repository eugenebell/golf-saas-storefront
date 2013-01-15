<%@ page import="golf.saas.storefront.Account" %>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="account.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${accountInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="account.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${accountInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'confirm', 'error')} required">
	<label for="confirm">
		<g:message code="account.confirm.label" default="Confirm Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="confirm" required="" value="${accountInstance?.confirm}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="account.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${accountInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="account.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${accountInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'addressOne', 'error')} required">
	<label for="addressOne">
		<g:message code="account.addressOne.label" default="Address One" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="addressOne" value="${accountInstance?.addressOne}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'addressThree', 'error')} ">
	<label for="addressThree">
		<g:message code="account.addressThree.label" default="Address Three" />
		
	</label>
	<g:textField name="addressThree" value="${accountInstance?.addressThree}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'addressTwo', 'error')} ">
	<label for="addressTwo">
		<g:message code="account.addressTwo.label" default="Address Two" />
		
	</label>
	<g:textField name="addressTwo" value="${accountInstance?.addressTwo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'county', 'error')} required">
	<label for="county">
		<g:message code="account.county.label" default="County" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="county" value="${accountInstance?.county}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="account.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" value="${accountInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'fax', 'error')} ">
	<label for="fax">
		<g:message code="account.fax.label" default="Fax" />
		
	</label>
	<g:textField name="fax" value="${accountInstance?.fax}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'mobile', 'error')} ">
	<label for="mobile">
		<g:message code="account.mobile.label" default="Mobile" />
		
	</label>
	<g:textField name="mobile" value="${accountInstance?.mobile}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="account.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" value="${accountInstance?.phone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="account.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" value="${accountInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'town', 'error')} required">
	<label for="town">
		<g:message code="account.town.label" default="Town" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="town" value="${accountInstance?.town}"/>
</div>

