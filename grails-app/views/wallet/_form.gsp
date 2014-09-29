<%@ page import="com.wallet.Wallet" %>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: walletInstance, field: 'walletName', 'error')} required">
		<label class="control-label col-md-3" for="walletName">
			<g:message code="company.walletName.label" default="Nome" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-md-4">
			<g:textField name="walletName" value="${walletInstance?.walletName}"/>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: walletInstance, field: 'value', 'error')} required">
		<label class="control-label col-md-3" for="value">
			<g:message code="company.value.label" default="Valor" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-md-4">
			<g:field name="value" value="${fieldValue(bean: walletInstance, field: 'value')}" required=""/>
		</div>
	</div>
</div>
