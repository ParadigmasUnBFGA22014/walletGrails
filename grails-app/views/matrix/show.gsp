
<%@ page import="com.wallet.Matrix" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'matrix.label', default: 'Matrix')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-matrix" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-matrix" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list matrix">
			
				<g:if test="${matrixInstance?.content}">
				<li class="fieldcontain">
					<span id="content-label" class="property-label"><g:message code="matrix.content.label" default="Content" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${matrixInstance?.nCol}">
				<li class="fieldcontain">
					<span id="nCol-label" class="property-label"><g:message code="matrix.nCol.label" default="NC ol" /></span>
					
						<span class="property-value" aria-labelledby="nCol-label"><g:fieldValue bean="${matrixInstance}" field="nCol"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matrixInstance?.nLin}">
				<li class="fieldcontain">
					<span id="nLin-label" class="property-label"><g:message code="matrix.nLin.label" default="NL in" /></span>
					
						<span class="property-value" aria-labelledby="nLin-label"><g:fieldValue bean="${matrixInstance}" field="nLin"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${matrixInstance?.id}" />
					<g:link class="edit" action="edit" id="${matrixInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
