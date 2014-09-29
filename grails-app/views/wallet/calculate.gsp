<%@ page import="com.wallet.Wallet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'wallet.label', default: 'Wallet')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row">
			<div class="col-md-12">
				<h3 class="page-title">Carteira</h3>
				<ul class="page-breadcrumb breadcrumb">
	            	<li>
	                    <i class="fa fa-home"></i>
	                    <a href="${createLink(uri: '/')}">
							Página Inicial
						</a>
	                    <i class="fa fa-angle-right"></i>
	                </li>
	                <li>
	                	<g:link action="show" id="${walletInstance.id}">
							Detalhar Carteira
						</g:link>
						<i class="fa fa-angle-right"></i>
	                </li>
	                <li>
						Calcular Carteira
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
				<g:hasErrors bean="${walletInstance}">
					<ul class="errors" role="alert">
						<g:eachError bean="${walletInstance}" var="error">
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
							<i class="fa fa-list"></i>Calcular Carteira
						</div>
					</div>
					<div class="portlet-body form">
						<g:uploadForm action="calc"  class="form-horizontal">
							<div class="form-body">
								<div class="form-section">
								</div>
								<div class="alert alert-danger display-hide">
									<button class="close" data-close="alert"></button>
									O formulário contêm erros. Por favor verifique abaixo.
								</div>
								<g:render template="form"/>

								<div class="portlet-body">
									<table class="table table-bordered table-hover">
										<thead>
											<tr>
											
												<th><g:message code="wallet.name.label" default="Nome" /></th>
											
												<th><g:message code="wallet.value.label" default="Ações" /></th>

												<th><g:message code="wallet.invest.label" default="Investimento (%)" /></th>
											
											</tr>
										</thead>
										<tbody>
											<g:each in="${companies}" status="i" var="companyInstance">
												<tr class="odd gradeX">
												
													<td><g:link action="show" id="${companyInstance.id}">${fieldValue(bean: companyInstance, field: "name")}</g:link></td>
												
													<td><g:select class="form-control" id="company" name="company.id" from="${com.wallet.Stock.list()}" optionKey="id" required="" value="${companyInstance?.wallet?.id}"/></td>

													<td><g:textField class="form-control" name="invest" /></td>
												
												</tr>
											</g:each>
										</tbody>
									</table>
								</div>
							</div>
							<div class="form-actions right">
								<div class="col-md-offset-3 col-md-9">
									<button type="submit" class="btn green">Calcular</button>
								</div>
							</div>
						</g:uploadForm>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
