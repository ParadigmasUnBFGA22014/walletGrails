
<%@ page import="com.wallet.Price" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'price.label', default: 'Price')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-price" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-price" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list price">
			
				<g:if test="${priceInstance?.close}">
				<li class="fieldcontain">
					<span id="close-label" class="property-label"><g:message code="price.close.label" default="Close" /></span>
					
						<span class="property-value" aria-labelledby="close-label"><g:fieldValue bean="${priceInstance}" field="close"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${priceInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="price.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${priceInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${priceInstance?.high}">
				<li class="fieldcontain">
					<span id="high-label" class="property-label"><g:message code="price.high.label" default="High" /></span>
					
						<span class="property-value" aria-labelledby="high-label"><g:fieldValue bean="${priceInstance}" field="high"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${priceInstance?.low}">
				<li class="fieldcontain">
					<span id="low-label" class="property-label"><g:message code="price.low.label" default="Low" /></span>
					
						<span class="property-value" aria-labelledby="low-label"><g:fieldValue bean="${priceInstance}" field="low"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${priceInstance?.open}">
				<li class="fieldcontain">
					<span id="open-label" class="property-label"><g:message code="price.open.label" default="Open" /></span>
					
						<span class="property-value" aria-labelledby="open-label"><g:fieldValue bean="${priceInstance}" field="open"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${priceInstance?.volume}">
				<li class="fieldcontain">
					<span id="volume-label" class="property-label"><g:message code="price.volume.label" default="Volume" /></span>
					
						<span class="property-value" aria-labelledby="volume-label"><g:fieldValue bean="${priceInstance}" field="volume"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${priceInstance?.id}" />
					<g:link class="edit" action="edit" id="${priceInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
