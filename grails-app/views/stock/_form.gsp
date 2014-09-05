<%@ page import="com.wallet.Stock" %>



<div class="fieldcontain ${hasErrors(bean: stockInstance, field: 'codeName', 'error')} ">
	<label for="codeName">
		<g:message code="stock.codeName.label" default="Code Name" />
		
	</label>
	<g:textField name="codeName" value="${stockInstance?.codeName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stockInstance, field: 'percent', 'error')} required">
	<label for="percent">
		<g:message code="stock.percent.label" default="Percent" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="percent" value="${fieldValue(bean: stockInstance, field: 'percent')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: stockInstance, field: 'company', 'error')} required">
	<label for="company">
		<g:message code="stock.company.label" default="Company" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="company" name="company.id" from="${com.wallet.Company.list()}" optionKey="id" required="" value="${stockInstance?.company?.id}" class="many-to-one"/>
</div>

