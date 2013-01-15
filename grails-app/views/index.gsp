<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Golf Score Card as a Service</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}
            
			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
			
			.plan-element {
		        border:2px solid black; 
		        margin-left:40px; 
		        float:left; /*Here you can also used display-inline:block instead of float:left*/
		        background:olive;
			}
			
			.plan-container {
				margin-left:auto;
				margin-right:auto;
			}
			
			.plan-desc {
				float:right;
			}
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
			<div class="nav" role="navigation">
				<sec:ifLoggedIn>
					<ul>
						<li><g:link controller="account" action="edit" id="${accountInstance?.id}">Update Account</g:link></li>
						<li><g:link controller="golfRound" action="create">New Round</g:link></li>
						<li><g:link controller="golfRound" action="list">View ScoreCards (History)</g:link></li>
						<li><g:link controller="scoreCard" action="create">Create Custom ScoreCard</g:link></li>
						<li><g:link controller="competition" action="comingSoon">Competitions</g:link></li>
						<li><g:link controller="options" action="show">Options</g:link></li>
					</ul>
				</sec:ifLoggedIn>
			</div>
		<div role="main">
			<h1>Golf Score Card as a Service</h1>
			
			<p>Welcome to ScoreCard Service. 
				<sec:ifNotLoggedIn>You can <g:link controller="login" action="auth"> login here</g:link> for this service.</sec:ifNotLoggedIn>
			</p>
			
		<div id="services-container" class="plan-container">
			<div id="free" class="plan-element plan-element">
				<div class="plan-image-holder">
					<g:link controller="account" action="registerGold">
						<img src="${resource(dir: 'images/welcome', file: 'GoldOption.JPG')}" alt="Gold"/>
					</g:link>
				</div>
				<h5>Gold</h5>
				<div class="plan-text-container" style="height: 92px; ">
					<p class="plan-description">Description for Gold membership here....</p>
					<ul class="plan-list"><li>Starting at .....</li><li>Up to ...........</li></ul>
				</div>
				<span class="freshbutton-blue" style="display: inline-block; ">Get Gold membership now!</span>
			</div>
			
			<div id="pro" class="plan-element">
				<div class="plan-image-holder">
					<g:link controller="account" action="registerSilver">
						<img src="${resource(dir: 'images/welcome', file: 'SilverOption.JPG')}" alt="Silver"/>
					</g:link>
				</div>
				<h5>Silver</h5>
				<div class="plan-text-container" style="height: 92px; ">
					<p class="plan-description">Description for Silver membership here....</p>
					<ul class="plan-list">
						<li>Plans at .......</li><li>Starting at $$$$/month</li>
					</ul>
				</div>
				<span class="freshbutton-blue" style="display: inline-block; ">Get Silver membership now!</span>
			</div>
			
			<div id="team" class="plan-element plan-element">
				<div class="plan-image-holder">
					<g:link controller="account" action="register">
					<img src="${resource(dir: 'images/welcome', file: 'BronzeOption.JPG')}" alt="Bronze"/>
					</g:link>
				</div>
				<h5>Bronze</h5>
				<div class="plan-text-container" style="height: 92px; ">
					<p class="plan-description">Description for Bronze membership here....</p>
					<ul class="plan-list">
						<li>Plans start at ...... users</li><li>Centralised ......</li>
					</ul>
				</div>
				<span class="freshbutton-blue" style="display: inline-block; ">Get Bronze membership now!</span>
			</div></div>
		<div class="plan-desc">
			<p>Put Introduction here to describe the service. You have successfully started your first Golf application! At the moment
			   this is the default page, feel free to modify it to either redirect to a controller or display whatever
			   content you may choose. Below is a list of controllers that are currently deployed in this application. Don't forget to put footer below!!!</p>
	   	</div>
		</div>
	</body>
</html>
