<%@ page import="com.wallet.Price" %>



<div class="fieldcontain ${hasErrors(bean: priceInstance, field: 'close', 'error')} required">
	<label for="close">
		<g:message code="price.close.label" default="Close" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="close" value="${fieldValue(bean: priceInstance, field: 'close')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: priceInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="price.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${priceInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: priceInstance, field: 'high', 'error')} required">
	<label for="high">
		<g:message code="price.high.label" default="High" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="high" value="${fieldValue(bean: priceInstance, field: 'high')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: priceInstance, field: 'low', 'error')} required">
	<label for="low">
		<g:message code="price.low.label" default="Low" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="low" value="${fieldValue(bean: priceInstance, field: 'low')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: priceInstance, field: 'open', 'error')} required">
	<label for="open">
		<g:message code="price.open.label" default="Open" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="open" value="${fieldValue(bean: priceInstance, field: 'open')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: priceInstance, field: 'volume', 'error')} required">
	<label for="volume">
		<g:message code="price.volume.label" default="Volume" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="volume" type="number" value="${priceInstance.volume}" required=""/>
</div>

