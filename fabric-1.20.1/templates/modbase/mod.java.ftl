<#-- @formatter:off -->
package ${package};
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ${package}.item;

public class ${JavaModName} implements ModInitializer {

    public static final String MOD_ID = "${modid}";
    public static final Logger LOGGER = LoggerFactory.getLogger(MOD_ID);

    @Override
    public void onInitialize() {
        LOGGER.info("Starting ${JavaModName}");

        <#if w.hasElementsOfBaseType("item")>// ==== ITEMS ==== //</#if>
		<#if w.hasElementsOfBaseType("item")>ModItems.registerModItems();</#if>

        <#if w.hasSounds()>// ==== SOUNDS ==== //</#if>
        <#if w.hasSounds()>ModSounds.registerSounds()</#if>
    }
}
<#-- @formatter:on -->