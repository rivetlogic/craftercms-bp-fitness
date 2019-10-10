<#import "/templates/system/common/cstudio-support.ftl" as studio />

<section id="trainer" class="parallax-section">
	<div class="container">
		<div class="row" <@studio.iceAttr iceGroup="iceTrainersHeader" path=contentModel.storeUrl /> >

			<div class="wow fadeInUp col-md-12 col-sm-12" data-wow-delay="1.3s">
				<h2>${contentModel.titleText_t}</h2>
				<p>${contentModel.description_t}</p>
			</div>

			<#list contentModel.trainerList_o.item as trainer>
				<@renderComponent component=trainer />
			</#list>

		</div>
	</div>
</section>