<#import "/templates/system/common/ice.ftl" as studio />

 
<#if contentModel.imageBackground_s?? && contentModel.imageBackground_s != "">
	<section id="price" class="catalog-section parallax-section prices-background" style="background: url('${contentModel.imageBackground_s}') 50% 0 repeat-y fixed">
<#else>
	<section id="class" class="catalog-section parallax-section">
</#if>
	<div class="container">
		<div class="row">

			<div class="col-md-12 col-sm-12 text-center">
				<@studio.h2 $field="titleText_t" style="color:${contentModel.titleColor_s}">
					${contentModel.titleText_t}
				</@studio.h2>
				<@studio.p $field="description_t">
					${contentModel.description_t}
				</@studio.p>
			</div>
			<#if contentModel.items_o?? && contentModel.items_o.item??>
				<@studio.tag $field="items_o">
					<#list contentModel.items_o.item as class>
						<#assign index = class?index />
						<#assign classItem =  siteItemService.getSiteItem(class.key) />
						<#assign field = "content-type" />
						<#if classItem[field] == "/component/component-catalog-item-price" >
							<#assign columnSize = "col-md-4 col-sm-6" />
						<#else>
							<#assign columnSize = "col-md-6 col-sm-12" />
						</#if>

						<@studio.tag $field="items_o" $index=index class="${columnSize}">
							<@renderComponent component=class />
						</@studio.tag>
					</#list>
				</@studio.tag>
			</#if>
		</div>
	</div>
</section>