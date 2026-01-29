<#assign attr = generator.map(field$attribute, "attributes")>
if (${input$entity} instanceof LivingEntity _entity) {
	AttributeModifier modifier = new AttributeModifier(${'"' + modid + ':' + field$name + '"'}, ${input$value}, AttributeModifier.Operation.${field$operation});
	if (_entity.getAttribute(${attr}).getModifiers().stream().noneMatch((e) -> e.name().equals(modifier.name()))) {
		<#if field$permanent == "TRUE">
			_entity.getAttribute(${attr}).addPermanentModifier(modifier);
		<#else>
			_entity.getAttribute(${attr}).addTransientModifier(modifier);
		</#if>
	}
}