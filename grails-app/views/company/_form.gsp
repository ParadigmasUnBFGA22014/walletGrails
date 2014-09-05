<%@ page import="com.wallet.Company" %>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'name', 'error')} required">
		<label class="control-label col-md-3" for="name">
			<g:message code="headquarter.name.label" default="Nome" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-md-4">
			<g:textField class="form-control" name="name" required="" value="${companyInstance?.name}"/>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'sector', 'error')} required">
		<label class="control-label col-md-3" for="sector">
			<g:message code="headquarter.sector.label" default="Setor" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-md-4">
			<g:textField class="form-control" name="sector" required="" value="${companyInstance?.sector}"/>
		</div>
	</div>
</div>
