<%@ page import="com.wallet.authentication.User" %>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
		<label class="control-label col-md-3" for="username">
			<g:message code="headquarter.username.label" default="Usuário" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-md-4">
			<g:textField class="form-control" name="username" required="" value="${userInstance?.username}"/>
		</div>
	</div>
</div>
