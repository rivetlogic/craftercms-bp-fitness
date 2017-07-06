<#import "/templates/system/common/cstudio-support.ftl" as studio />

 
	<#if contentModel.imageBackground?? && contentModel.imageBackground != "">
		<section id="price" class="catalog-section parallax-section" style="background: url('${contentModel.imageBackground}') 50% 0 repeat-y fixed" <@studio.iceAttr iceGroup="iceCatalog" path=contentModel.storeUrl /> >
    <#else>
    	<section id="class" class="catalog-section parallax-section" <@studio.iceAttr iceGroup="iceCatalog" path=contentModel.storeUrl /> >
	</#if>
	<div class="container">
		<div class="row">

			<div class="col-md-12 col-sm-12 text-center">
				<h2 style="color:${contentModel.titleColor}">${contentModel.titleText}</h2>
				<p>${contentModel.description}</p>
			</div>

            <#list contentModel.items.item as class>
                <@renderComponent component=class />
            </#list>
		</div>
	</div>
</section>