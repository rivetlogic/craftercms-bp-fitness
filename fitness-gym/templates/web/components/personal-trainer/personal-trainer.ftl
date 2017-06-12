<#import "/templates/system/common/cstudio-support.ftl" as studio />

<div class="wow fadeInUp col-md-4 col-sm-6" data-wow-delay="2.3s">
	<div class="trainer-thumb" <@studio.iceAttr iceGroup="iceTrainer" path=contentModel.storeUrl /> >
		<img src="${contentModel.trainerImage}" class="img-responsive" alt="Trainer">
		<div class="trainer-overlay">
			<div class="trainer-des">
				<h2>${contentModel.trainerName}</h2>
				<h3>${contentModel.trainerTitle}</h3>
				<ul class="social-icon">
                	<#list contentModel.socialMediaLinks.item as item>
						<li><a href="${item.url}" class="fa fa-${item.socialNetwork} wow fadeInUp" data-wow-delay="1s"></a></li>
                    </#list>
				</ul>
			</div>
		</div>
	</div>
	<p>${contentModel.trainerDescription}</p>
</div>