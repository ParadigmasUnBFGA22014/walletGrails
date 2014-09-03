
<%@ page import="com.wallet.Wallet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'wallet.label', default: 'Wallet')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-wallet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-wallet" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list wallet">
			
				<g:if test="${walletInstance?.averageReturn}">
				<li class="fieldcontain">
					<span id="averageReturn-label" class="property-label"><g:message code="wallet.averageReturn.label" default="Average Return" /></span>
					
						<span class="property-value" aria-labelledby="averageReturn-label"><g:fieldValue bean="${walletInstance}" field="averageReturn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${walletInstance?.covarience}">
				<li class="fieldcontain">
					<span id="covarience-label" class="property-label"><g:message code="wallet.covarience.label" default="Covarience" /></span>
					
						<span class="property-value" aria-labelledby="covarience-label"><g:fieldValue bean="${walletInstance}" field="covarience"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${walletInstance?.standardDeviation}">
				<li class="fieldcontain">
					<span id="standardDeviation-label" class="property-label"><g:message code="wallet.standardDeviation.label" default="Standard Deviation" /></span>
					
						<span class="property-value" aria-labelledby="standardDeviation-label"><g:fieldValue bean="${walletInstance}" field="standardDeviation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${walletInstance?.stock}">
				<li class="fieldcontain">
					<span id="stock-label" class="property-label"><g:message code="wallet.stock.label" default="Stock" /></span>
					
						<g:each in="${walletInstance.stock}" var="s">
						<span class="property-value" aria-labelledby="stock-label"><g:link controller="stock" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${walletInstance?.varience}">
				<li class="fieldcontain">
					<span id="varience-label" class="property-label"><g:message code="wallet.varience.label" default="Varience" /></span>
					
						<span class="property-value" aria-labelledby="varience-label"><g:fieldValue bean="${walletInstance}" field="varience"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${walletInstance?.walletName}">
				<li class="fieldcontain">
					<span id="walletName-label" class="property-label"><g:message code="wallet.walletName.label" default="Wallet Name" /></span>
					
						<span class="property-value" aria-labelledby="walletName-label"><g:fieldValue bean="${walletInstance}" field="walletName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${walletInstance?.id}" />
					<g:link class="edit" action="edit" id="${walletInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
