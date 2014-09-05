<%@ page import="com.wallet.Wallet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'wallet.label', default: 'Wallet')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
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
						<g:link>
							Carteiras
						</g:link>
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
				<div class="portlet box green">
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-list"></i>Carteiras
						</div>
						<div class="actions">
							<g:link class="btn yellow" action="create">
								<i class="fa fa-plus"></i> Nova
							</g:link>
						</div>
					</div>

					<div class="portlet-body">
						<table class="table table-striped table-bordered table-hover" id="sample_2">
							<thead>
								<tr>
								
									<th><g:message code="wallet.name.label" default="Nome" /></th>
								
									<th><g:message code="wallet.value.label" default="Valor" /></th>
								
								</tr>
							</thead>
							<tbody>
								<g:each in="${walletInstanceList}" status="i" var="walletInstance">
									<tr class="odd gradeX">
									
										<td><g:link action="show" id="${walletInstance.id}">${fieldValue(bean: walletInstance, field: "walletName")}</g:link></td>
									
										<td>${fieldValue(bean: walletInstance, field: "value")}</td>
									
									</tr>
								</g:each>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>