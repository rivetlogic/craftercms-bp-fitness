<#import "/templates/system/common/ice.ftl" as studio />

<@studio.componentRootTag $tag="div" class="wow fadeInUp" $attrs={'data-wow-delay': '1s' }>
	<div class="pricing__item">
		<@studio.h3 $field="titleText_t" class="pricing__title">
			${contentModel.titleText_t}
		</@studio.h3>
		<div class="pricing__price">
			<span class="pricing__currency">$</span>
			<@studio.span $field="price_t">
				${contentModel.price_t}
			</@studio.span>
		</div>

		<@studio.renderRepeatCollection
			$field="services_o"
			$containerAttributes={'class': 'pricing__feature-list'}
			$itemAttributes={'class': 'pricing__feature'};
			<#-- Nested content values passed down by the macro: -->
			item, index
		>
			<#assign myContentItem = siteItemService.getSiteItem(item.key) />
			<@studio.span $model=myContentItem $field="titleText_t">
				${myContentItem.titleText_t}
			</@studio.span>
		</@studio.renderRepeatCollection>
		<#if contentModel.displayButton_b>
			<button class="pricing__action" onclick="location.href = '${contentModel.buttonUrl_s}';">
				<@studio.span $field="buttonText_t">
					${contentModel.buttonText_t}
				</@studio.span>
			</button>
		</#if>
	</div>
</@studio.componentRootTag>
