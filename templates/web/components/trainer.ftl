<#import "/templates/system/common/ice.ftl" as studio />

<@studio.componentRootTag $tag="section" id="trainer" class="parallax-section">
	<div class="container">
		<div class="row">

			<div class="wow fadeInUp col-md-12 col-sm-12" data-wow-delay="1.3s">
				<@studio.h2 $field="titleText_t">
					${contentModel.titleText_t}
				</@studio.h2>
				<@studio.p $field="description_t">
					${contentModel.description_t}
				</@studio.p>
			</div>

			<#list contentModel.trainerList_o.item as trainer>
				<@renderComponent component=trainer />
			</#list>

		</div>
	</div>
</@studio.componentRootTag>
