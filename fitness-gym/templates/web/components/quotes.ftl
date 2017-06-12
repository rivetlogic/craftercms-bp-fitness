<#import "/templates/system/common/cstudio-support.ftl" as studio />

<section class="quotes-section parallax-section" <@studio.iceAttr iceGroup="iceQuote" path=contentModel.storeUrl /> >
	<div class="container">
		<div class="row">
			
            <#if contentModel.displayTitleDescription = 'true'>
                <div class="col-md-12 col-sm-12 text-center">
					<h2 style="color:${contentModel.titleColor}">${contentModel.titleText}</h2>
					<p>${contentModel.description}</p>
				</div>
            </#if>
            
			<!-- Testimonial Owl Carousel section
			================================================== -->
			<div id="owl-testimonial" class="owl-carousel">
				<#list contentModel.quotes.item as myItem>
                    <#assign myContentItem =  siteItemService.getSiteItem(myItem.key) />
                    <div class="item col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10 wow fadeInUp" data-wow-delay="0.6s" <@studio.iceAttr iceGroup="iceQuoteItem" path=myContentItem.storeUrl/> >
						<#if contentModel.quoteStyle == "quote">
                            <i class="fa fa-quote-left"></i>
                        </#if>
						<h3>${myContentItem.description}</h3>
						<h4>${myContentItem.authorFullName} ( ${myContentItem.authorProfession} )</h4>
					</div>
                </#list>
				

			</div>

		</div>
	</div>
</section>