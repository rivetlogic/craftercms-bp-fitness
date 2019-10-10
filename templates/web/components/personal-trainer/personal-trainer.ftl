<#import "/templates/system/common/cstudio-support.ftl" as studio />

<div class="wow fadeInUp col-md-4 col-sm-6" data-wow-delay="2.3s">
	<div class="trainer-thumb" <@studio.iceAttr iceGroup="iceTrainer" path=contentModel.storeUrl /> >
		<img src="${contentModel.trainerImage_s}" class="img-responsive trainer-image" alt="Trainer">
		<div class="trainer-overlay">
			<div class="trainer-des">
				<h2>${contentModel.trainerName_t}</h2>
				<h3>${contentModel.trainerTitle_t}</h3>
				<ul class="social-icon">
				    <#if contentModel.socialMediaLinks_o?? && contentModel.socialMediaLinks_o.item??>
                        <#list contentModel.socialMediaLinks_o.item as item>
                            <li><a href="${item.url_s}" class="fa fa-${item.socialNetworkName_s} wow fadeInUp" data-wow-delay="1s"></a></li>
                        </#list>
                    </#if>
				</ul>
			</div>
		</div>
	</div>
	<p class="trainer-description_t">${contentModel.trainerDescription_t}</p>
</div>