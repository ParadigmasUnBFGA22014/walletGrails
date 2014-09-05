<%@ page import="com.wallet.Matrix" %>



<div class="fieldcontain ${hasErrors(bean: matrixInstance, field: 'content', 'error')} required">
	<label for="content">
		<g:message code="matrix.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: matrixInstance, field: 'nCol', 'error')} required">
	<label for="nCol">
		<g:message code="matrix.nCol.label" default="NC ol" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="nCol" type="number" value="${matrixInstance.nCol}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: matrixInstance, field: 'nLin', 'error')} required">
	<label for="nLin">
		<g:message code="matrix.nLin.label" default="NL in" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="nLin" type="number" value="${matrixInstance.nLin}" required=""/>
</div>

