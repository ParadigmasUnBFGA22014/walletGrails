<%@ page import="com.wallet.Company" %>



<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="company.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${companyInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'sector', 'error')} required">
	<label for="sector">
		<g:message code="company.sector.label" default="Sector" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="sector" required="" value="${companyInstance?.sector}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'stocks', 'error')} ">
	<label for="stocks">
		<g:message code="company.stocks.label" default="Stocks" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${companyInstance?.stocks?}" var="s">
    <li><g:link controller="stock" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="stock" action="create" params="['company.id': companyInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'stock.label', default: 'Stock')])}</g:link>
</li>
</ul>

</div>

