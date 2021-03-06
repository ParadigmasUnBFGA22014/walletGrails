<%@ page import="com.wallet.authentication.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'company.label', default: 'User')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row">
			<div class="col-md-12">
				<h3 class="page-title">Usuário</h3>
				<ul class="page-breadcrumb breadcrumb">
	            	<li>
	                    <i class="fa fa-home"></i>
	                    <a href="${createLink(uri: '/')}">
							Página Inicial
						</a>
	                    <i class="fa fa-angle-right"></i>
	                </li>
	                <li>
	                	<g:link action="showCurrentUser">
							Detalhar Usuário
						</g:link>
						<i class="fa fa-angle-right"></i>
	                </li>
	                <li>
						Editar Usuário
	                </li>
	            </ul>
			</div>

			<div class="col-md-12">
				<g:if test="${flash.message}">
					<div class="alert alert-info alert-dismissable">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
					    ${flash.message}
					</div>
				</g:if>
			</div>

			<div class="col-md-12">
				<g:hasErrors bean="${headquarterInstance}">
					<ul class="errors" role="alert">
						<g:eachError bean="${headquarterInstance}" var="error">
							<div class="alert alert-danger alert-dismissable">
								<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
								<g:if test="${error in org.springframework.validation.FieldError}">
									"${error.field}"
								</g:if>>
								<g:message error="${error}"/>
							</div>
						</g:eachError>
					</ul>
				</g:hasErrors>
			</div>

			<div class="col-md-12">
				<div class="portlet box green">
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-list"></i>Editar Usuário
						</div>
					</div>
					<div class="portlet-body form">
						<g:uploadForm method="post"  class="form-horizontal">
							<div class="form-body">
								<div class="form-section">
								</div>
								<div class="alert alert-danger display-hide">
									<button class="close" data-close="alert"></button>
									O formulário contêm erros. Por favor verifique abaixo.
								</div>
								<g:render template="form"/>

								<div class="form-group">
									<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'newPassword', 'error')}">
										<label class="control-label col-md-3" for="newPassword">
											<g:message code="headquarter.newPassword.label" default="Alterar Senha" />
										</label>
										<div class="col-md-4">
											<g:textField class="form-control" name="newPassword" />
										</div>
									</div>
								</div>
							</div>
							<div class="form-actions right">
								<g:hiddenField name="id" value="${userInstance?.id}" />
								<g:hiddenField name="version" value="${userInstance?.version}" />

								<div class="col-md-offset-3 col-md-9">
									<g:actionSubmit class="btn green" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
									<g:actionSubmit class="btn red" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
								</div>
							</div>
						</g:uploadForm>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
