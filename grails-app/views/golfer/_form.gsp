<%@ page import="golf.saas.storefront.Golfer" %>



<div class="fieldcontain ${hasErrors(bean: golferInstance, field: 'player', 'error')} ">
	<label for="player">
		<g:message code="golfer.player.label" default="Player" />
		
	</label>
	<g:select id="player" name="player.id" from="${golf.saas.storefront.Player.list()}" optionKey="id" required="" value="${golferInstance?.player?.id}" class="many-to-one"/>
</div>

