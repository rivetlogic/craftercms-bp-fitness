<#import "/templates/system/common/ice.ftl" as studio />

<section id="trainer" class="parallax-section">
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
			<@studio.tag $field="trainerList_o">
				<#list contentModel.trainerList_o.item as trainer>
					<#assign index = trainer?index />
					<@studio.tag $field="trainerList_o" $index=index class="wow fadeInUp col-md-4 col-sm-6" $attrs={'data-wow-delay': '2.3s'}>
						<@renderComponent component=trainer />
					</@studio.tag>
				</#list>
			</@studio.tag>
		</div>
	</div>
</section>
