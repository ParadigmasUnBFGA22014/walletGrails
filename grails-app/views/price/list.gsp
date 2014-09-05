
<%@ page import="com.wallet.Price" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'price.label', default: 'Price')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-price" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-price" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="close" title="${message(code: 'price.close.label', default: 'Close')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'price.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="high" title="${message(code: 'price.high.label', default: 'High')}" />
					
						<g:sortableColumn property="low" title="${message(code: 'price.low.label', default: 'Low')}" />
					
						<g:sortableColumn property="open" title="${message(code: 'price.open.label', default: 'Open')}" />
					
						<g:sortableColumn property="volume" title="${message(code: 'price.volume.label', default: 'Volume')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${priceInstanceList}" status="i" var="priceInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${priceInstance.id}">${fieldValue(bean: priceInstance, field: "close")}</g:link></td>
					
						<td><g:formatDate date="${priceInstance.date}" /></td>
					
						<td>${fieldValue(bean: priceInstance, field: "high")}</td>
					
						<td>${fieldValue(bean: priceInstance, field: "low")}</td>
					
						<td>${fieldValue(bean: priceInstance, field: "open")}</td>
					
						<td>${fieldValue(bean: priceInstance, field: "volume")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${priceInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
