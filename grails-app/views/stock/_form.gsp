<%@ page import="com.wallet.Stock" %>



<div class="fieldcontain ${hasErrors(bean: stockInstance, field: 'codeName', 'error')} ">
	<label for="codeName">
		<g:message code="stock.codeName.label" default="Code Name" />
		
	</label>
	<g:textField name="codeName" value="${stockInstance?.codeName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stockInstance, field: 'company', 'error')} ">
	<label for="company">
		<g:message code="stock.company.label" default="Company" />
		
	</label>
	<g:textField name="company" value="${stockInstance?.company}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stockInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="stock.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="price" name="price.id" from="${com.wallet.Price.list()}" optionKey="id" required="" value="${stockInstance?.price?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stockInstance, field: 'sector', 'error')} ">
	<label for="sector">
		<g:message code="stock.sector.label" default="Sector" />
		
	</label>
	<g:textField name="sector" value="${stockInstance?.sector}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stockInstance, field: 'wallet', 'error')} required">
	<label for="wallet">
		<g:message code="stock.wallet.label" default="Wallet" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="wallet" name="wallet.id" from="${com.wallet.Wallet.list()}" optionKey="id" required="" value="${stockInstance?.wallet?.id}" class="many-to-one"/>
</div>

