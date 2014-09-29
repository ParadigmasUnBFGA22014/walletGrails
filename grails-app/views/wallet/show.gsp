<%@ page import="com.wallet.Wallet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'wallet.label', default: 'Wallet')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
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
	                	<g:link action="index">
							Carteiras
						</g:link>
						<i class="fa fa-angle-right"></i>
	                </li>
	                <li>
						Detalhar
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
							<i class="fa fa-reorder"></i>Detalhar Carteira
						</div>
					</div>
					<div class="portlet-body form">
						<div class="form-horizontal" role="form">
							<div class="form-body">
								<h3 class="form-section">Dados</h3>

								<div class="row">
									<g:if test="${walletInstance?.walletName}">
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label col-md-3">Nome</label>
												
												<div class="col-md-9">
													<p class="form-control-static">
														<g:fieldValue bean="${walletInstance}" field="walletName"/>
													</p>
												</div>
											
											</div>
										</div>
									</g:if>

									<g:if test="${walletInstance?.value}">
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label col-md-3">Valor</label>
												
												<div class="col-md-9">
													<p class="form-control-static">
														<g:fieldValue bean="${walletInstance}" field="value"/>
													</p>
												</div>
											
											</div>
										</div>
									</g:if>

									<g:if test="${walletInstance?.standardDeviation}">
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label col-md-3">Desvio Padrão</label>
												
												<div class="col-md-9">
													<p class="form-control-static">
														<g:fieldValue bean="${walletInstance}" field="standardDeviation"/>
													</p>
												</div>
											
											</div>
										</div>
									</g:if>

									<g:if test="${walletInstance?.varianceCoeffient}">
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label col-md-3">Coeficiente de Variação</label>
												
												<div class="col-md-9">
													<p class="form-control-static">
														<g:fieldValue bean="${walletInstance}" field="varianceCoeffient"/>
													</p>
												</div>
											
											</div>
										</div>
									</g:if>

									<g:if test="${walletInstance?.varience}">
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label col-md-3">Variância</label>
												
												<div class="col-md-9">
													<p class="form-control-static">
														<g:fieldValue bean="${walletInstance}" field="varience"/>
													</p>
												</div>
											
											</div>
										</div>
									</g:if>

									<g:if test="${walletInstance?.averageReturn}">
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label col-md-3">Retorno Médio</label>
												
												<div class="col-md-9">
													<p class="form-control-static">
														<g:fieldValue bean="${walletInstance}" field="averageReturn"/>
													</p>
												</div>
											
											</div>
										</div>
									</g:if>
								</div>
							</div>

							<g:form>
								<div class="form-actions right">
									<div class="row">
										<div class="col-md-12">
											<div class="col-md-offset-3 col-md-9">
												<g:hiddenField name="id" value="${walletInstance?.id}" />
												<g:link class="btn green" action="calculate" id="${walletInstance?.id}"><g:message code="default.button.calculate.label" default="Calcular" /></g:link>
												<g:link class="btn green" action="edit" id="${walletInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
												<g:actionSubmit class="btn red" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Você tem certeza?')}');" />
											</div>
										</div>
									</div>
								</div>
							</g:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>