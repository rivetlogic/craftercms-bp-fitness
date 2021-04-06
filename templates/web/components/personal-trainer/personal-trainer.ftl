<#import "/templates/system/common/ice.ftl" as studio />

<div class="trainer-thumb">
	<@studio.img
		$field="trainerImage_s"
		class="img-responsive trainer-image"
		src=(contentModel.trainerImage_s)
		alt="Trainer"
	/>
	<div class="trainer-overlay">
		<div class="trainer-des">
			<@studio.h2 $field="trainerName_t">
				${contentModel.trainerName_t}
			</@studio.h2>
			<@studio.h3 $field="trainerTitle_t">
				${contentModel.trainerTitle_t}
			</@studio.h3>

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
<@studio.p $field="trainerDescription_t" class="trainer-description_t">
	${contentModel.trainerDescription_t}
</@studio.p>
