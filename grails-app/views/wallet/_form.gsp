<%@ page import="com.wallet.Wallet" %>



<div class="fieldcontain ${hasErrors(bean: walletInstance, field: 'averageReturn', 'error')} required">
	<label for="averageReturn">
		<g:message code="wallet.averageReturn.label" default="Average Return" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="averageReturn" value="${fieldValue(bean: walletInstance, field: 'averageReturn')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: walletInstance, field: 'covarience', 'error')} required">
	<label for="covarience">
		<g:message code="wallet.covarience.label" default="Covarience" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="covarience" value="${fieldValue(bean: walletInstance, field: 'covarience')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: walletInstance, field: 'standardDeviation', 'error')} required">
	<label for="standardDeviation">
		<g:message code="wallet.standardDeviation.label" default="Standard Deviation" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="standardDeviation" value="${fieldValue(bean: walletInstance, field: 'standardDeviation')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: walletInstance, field: 'stock', 'error')} ">
	<label for="stock">
		<g:message code="wallet.stock.label" default="Stock" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${walletInstance?.stock?}" var="s">
    <li><g:link controller="stock" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="stock" action="create" params="['wallet.id': walletInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'stock.label', default: 'Stock')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: walletInstance, field: 'varience', 'error')} required">
	<label for="varience">
		<g:message code="wallet.varience.label" default="Varience" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="varience" value="${fieldValue(bean: walletInstance, field: 'varience')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: walletInstance, field: 'walletName', 'error')} ">
	<label for="walletName">
		<g:message code="wallet.walletName.label" default="Wallet Name" />
		
	</label>
	<g:textField name="walletName" value="${walletInstance?.walletName}"/>
</div>

