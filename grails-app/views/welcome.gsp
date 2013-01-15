<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Golf Score Card as a Service</title>
		<g:javascript library="jquery" />
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
				margin: 2em 1em 1.25em 2em;
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
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
				<div class="nav" role="navigation">
			<ul>
				<li><g:link controller="account" action="edit" id="${accountInstance?.id}">Update Account</g:link></li>
				<li><g:link controller="golfRound" action="create">New Round</g:link></li>
				<li><g:link controller="golfRound" action="list">View ScoreCards (History)</g:link></li>
				<li><g:link controller="scoreCard" action="create">Create Custom ScoreCard</g:link></li>
				<li><g:link controller="competition" action="comingSoon">Competitions</g:link></li>
				<li><g:link controller="options" action="show">Options</g:link></li>
			</ul>
		</div>
		<div id="page-body" role="main">
			<h1>Welcome to Golf Score Card as a Service</h1>
			
			<p>Congratulations, you have successfully started your first Scord card application! At the moment
			   this is the default page.</p>

			
			<div id="currentround">
				<div id="show-golfRound" class="content scaffold-show" role="main">
				<h2>Last Round ScoreCard:</h2>
				<g:include controller="golfRound" action="lastRound" />
			</div>
		</div>
	</body>
</html>
