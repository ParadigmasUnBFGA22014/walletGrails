
<%@ page import="com.wallet.Stock" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'stock.label', default: 'Stock')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-stock" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-stock" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="codeName" title="${message(code: 'stock.codeName.label', default: 'Code Name')}" />
					
						<g:sortableColumn property="percent" title="${message(code: 'stock.percent.label', default: 'Percent')}" />
					
						<th><g:message code="stock.company.label" default="Company" /></th>
					
						<th><g:message code="stock.price.label" default="Price" /></th>
					
						<th><g:message code="stock.wallet.label" default="Wallet" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${stockInstanceList}" status="i" var="stockInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${stockInstance.id}">${fieldValue(bean: stockInstance, field: "codeName")}</g:link></td>
					
						<td>${fieldValue(bean: stockInstance, field: "percent")}</td>
					
						<td>${fieldValue(bean: stockInstance, field: "company")}</td>
					
						<td>${fieldValue(bean: stockInstance, field: "price")}</td>
					
						<td>${fieldValue(bean: stockInstance, field: "wallet")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${stockInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
