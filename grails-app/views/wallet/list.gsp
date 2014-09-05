
<%@ page import="com.wallet.Wallet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'wallet.label', default: 'Wallet')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-wallet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-wallet" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="walletName" title="${message(code: 'wallet.walletName.label', default: 'Wallet Name')}" />
					
						<g:sortableColumn property="standardDeviation" title="${message(code: 'wallet.standardDeviation.label', default: 'Standard Deviation')}" />
					
						<g:sortableColumn property="varianceCoeffient" title="${message(code: 'wallet.varianceCoeffient.label', default: 'Variance Coeffient')}" />
					
						<g:sortableColumn property="varience" title="${message(code: 'wallet.varience.label', default: 'Varience')}" />
					
						<g:sortableColumn property="averageReturn" title="${message(code: 'wallet.averageReturn.label', default: 'Average Return')}" />
					
						<g:sortableColumn property="value" title="${message(code: 'wallet.value.label', default: 'Value')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${walletInstanceList}" status="i" var="walletInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${walletInstance.id}">${fieldValue(bean: walletInstance, field: "walletName")}</g:link></td>
					
						<td>${fieldValue(bean: walletInstance, field: "standardDeviation")}</td>
					
						<td>${fieldValue(bean: walletInstance, field: "varianceCoeffient")}</td>
					
						<td>${fieldValue(bean: walletInstance, field: "varience")}</td>
					
						<td>${fieldValue(bean: walletInstance, field: "averageReturn")}</td>
					
						<td>${fieldValue(bean: walletInstance, field: "value")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${walletInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
