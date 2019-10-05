<#import "/templates/system/common/cstudio-support.ftl" as studio />

<section id="testimonial" class="quotes_o-section parallax-section prices-background" style="background: url('${contentModel.imageBackground_s}') 50% 0 repeat-y fixed" <@studio.iceAttr iceGroup="iceQuote" path=contentModel.storeUrl /> >
	<div class="container">
		<div class="row">
			
            <#if contentModel.displayTitleDescription_b>
                <div class="col-md-12 col-sm-12 text-center">
					<h2 style="color:${contentModel.titleColor_s}">${contentModel.titleText_t}</h2>
					<p>${contentModel.description_t}</p>
				</div>
            </#if>
            
			<!-- Testimonial Owl Carousel section
			================================================== -->
			<div id="owl-testimonial" class="owl-carousel">
				<#list contentModel.quotes_o.item as myItem>
                    <#assign myContentItem =  siteItemService.getSiteItem(myItem.key) />
                    <div class="item col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10 wow fadeInUp" data-wow-delay="0.6s" <@studio.iceAttr iceGroup="iceQuoteItem" path=myContentItem.storeUrl/> >
						<#if contentModel.quoteStyle_s == "quote">
                            <i class="fa fa-quote-left"></i>
                        </#if>
						<h3>${myContentItem.description_t}</h3>
						<h4>${myContentItem.authorFullName_t} ( ${myContentItem.authorProfession_t} )</h4>
					</div>
                </#list>
				

			</div>

		</div>
	</div>
</section>