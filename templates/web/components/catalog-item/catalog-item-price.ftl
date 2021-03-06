<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="wow fadeInUp col-md-4 col-sm-6" data-wow-delay="1s" <@studio.iceAttr iceGroup="iceCatalogItem" path=contentModel.storeUrl/>>
	<div class="pricing__item">
		<h3 class="pricing__title">${contentModel.titleText_t}</h3>
        <div class="pricing__price"><span class="pricing__currency">$</span>${contentModel.price_t}</div>
			<ul class="pricing__feature-list">
			    <#if contentModel.services_o?? && contentModel.services_o.item??>
                    <#list contentModel.services_o.item as item>
                        <#assign myContentItem =  siteItemService.getSiteItem(item.key) />
                        <li class="pricing__feature">${myContentItem.titleText_t}</li>
                    </#list>
                </#if>
           	</ul>
            <#if contentModel.displayButton_b>
              	<button class="pricing__action" onclick="location.href = '${contentModel.buttonUrl_s}';">${contentModel.buttonText_t}</button>
          	</#if>
	</div>
</div>