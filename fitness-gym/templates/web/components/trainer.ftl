<#import "/templates/system/common/cstudio-support.ftl" as studio />

<section id="trainer" class="parallax-section">
	<div class="container">
		<div class="row" <@studio.iceAttr iceGroup="iceTrainersHeader" path=contentModel.storeUrl /> >

			<div class="wow fadeInUp col-md-12 col-sm-12" data-wow-delay="1.3s">
				<h2>${contentModel.titleText}</h2>
				<p>${contentModel.description}</p>
			</div>

			<#list contentModel.trainerList.item as trainer>
				<@renderComponent component=trainer />
			</#list>

		</div>
	</div>
</section>