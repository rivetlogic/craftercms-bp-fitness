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

			<@studio.renderComponentCollection $field="trainerList_o" $itemAttrs={'class': 'wow fadeInUp col-md-4 col-sm-6', 'data-wow-delay': '2.3s'} />
		</div>
	</div>
</section>
