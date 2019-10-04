<#import "/templates/system/common/cstudio-support.ftl" as studio />

 
	<#if contentModel.imageBackground_s?? && contentModel.imageBackground_s != "">
		<section id="price" class="catalog-section parallax-section prices-background" style="background: url('${contentModel.imageBackground_s}') 50% 0 repeat-y fixed" <@studio.iceAttr iceGroup="iceCatalog" path=contentModel.storeUrl /> >
    <#else>
    	<section id="class" class="catalog-section parallax-section" <@studio.iceAttr iceGroup="iceCatalog" path=contentModel.storeUrl /> >
	</#if>
	<div class="container">
		<div class="row">

			<div class="col-md-12 col-sm-12 text-center">
				<h2 style="color:${contentModel.titleColor_s}">${contentModel.titleText_t}</h2>
				<p>${contentModel.description_t}</p>
			</div>
            <#if contentModel.items_o?? && contentModel.items_o.item??>
                <#list contentModel.items_o.item as class>
                    <@renderComponent component=class />
                </#list>
            </#if>
		</div>
	</div>
</section>