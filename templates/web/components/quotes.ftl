<#import "/templates/system/common/ice.ftl" as studio />

<section id="testimonial" class="quotes-section parallax-section prices-background" style="background: url('${contentModel.imageBackground_s}') 50% 0 repeat-y fixed">
	<div class="container">
		<div class="row">

			<#if contentModel.displayTitleDescription_b>
				<div class="col-md-12 col-sm-12 text-center">
					<@studio.h2 $field="titleText_t" style="color:${contentModel.titleColor_s}">
						${contentModel.titleText_t}
					</@studio.h2>
					<@studio.p $field="description_t">
						${contentModel.description_t}
					</@studio.p>
				</div>
			</#if>

			<!-- Testimonial Owl Carousel section
			================================================== -->

			<@studio.renderRepeatCollection
				$field="quotes_o"
				$containerTag="div"
				$containerAttributes={'class': 'owl-carousel', 'id': 'owl-testimonial'}
				$itemTag="div"
				$itemAttributes={'class': 'item col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10 wow fadeInUp', 'data-wow-delay': '0.6s'};
				<#-- Nested content values passed down by the macro: -->
				item, index
			>
				<div>
					<#if item.component??>
						<#assign myContentItem = item.component />
					<#else>
						<#assign myContentItem =  siteItemService.getSiteItem(item.key) />
					</#if>

					<#if contentModel.quoteStyle_s == "quote">
						<i class="fa fa-quote-left"></i>
					</#if>
					<@studio.h3 $model=myContentItem $field="description_t">
						${myContentItem.description_t}
					</@studio.h3>
					<h4>
						<@studio.span $model=myContentItem $field="authorFullName_t">
							${myContentItem.authorFullName_t}
						</@studio.span>
						( <@studio.span $model=myContentItem $field="authorProfession_t">
							${myContentItem.authorProfession_t}
						</@studio.span> )
					</h4>
				</div>
			</@studio.renderRepeatCollection>
		</div>
	</div>
</section>