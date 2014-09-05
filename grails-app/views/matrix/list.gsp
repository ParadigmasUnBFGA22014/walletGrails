
<%@ page import="com.wallet.Matrix" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'matrix.label', default: 'Matrix')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-matrix" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-matrix" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="content" title="${message(code: 'matrix.content.label', default: 'Content')}" />
					
						<g:sortableColumn property="nCol" title="${message(code: 'matrix.nCol.label', default: 'NC ol')}" />
					
						<g:sortableColumn property="nLin" title="${message(code: 'matrix.nLin.label', default: 'NL in')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${matrixInstanceList}" status="i" var="matrixInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${matrixInstance.id}">${fieldValue(bean: matrixInstance, field: "content")}</g:link></td>
					
						<td>${fieldValue(bean: matrixInstance, field: "nCol")}</td>
					
						<td>${fieldValue(bean: matrixInstance, field: "nLin")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${matrixInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
