<%@ page import="golf.saas.storefront.Competition" %>



<div class="fieldcontain ${hasErrors(bean: competitionInstance, field: 'golfClub', 'error')} ">
	<label for="golfClub">
		<g:message code="competition.golfClub.label" default="Golf Club" />
		
	</label>
	<g:select id="golfClub" name="golfClub.id" from="${golf.saas.storefront.GolfClub.list()}" optionKey="id" required="" value="${competitionInstance?.golfClub?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: competitionInstance, field: 'golfSociety', 'error')} ">
	<label for="golfSociety">
		<g:message code="competition.golfSociety.label" default="Golf Society" />
		
	</label>
	<g:select id="golfSociety" name="golfSociety.id" from="${golf.saas.storefront.GolfSociety.list()}" optionKey="id" required="" value="${competitionInstance?.golfSociety?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: competitionInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="competition.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${competitionInstance?.name}" />
</div>

<div class="fieldcontain ${hasErrors(bean: competitionInstance, field: 'playerParticipants', 'error')} ">
	<label for="playerParticipants">
		<g:message code="competition.playerParticipants.label" default="Player Participants" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${competitionInstance?.playerParticipants?}" var="p">
    <li><g:link controller="playerParticipant" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="playerParticipant" action="create" params="['competition.id': competitionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'playerParticipant.label', default: 'PlayerParticipant')])}</g:link>
</li>
</ul>

</div>

