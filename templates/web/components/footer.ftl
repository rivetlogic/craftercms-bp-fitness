<#import "/templates/system/common/cstudio-support.ftl" as studio />

<footer>
	<div class="container">
		<div class="row">

			<div class="wow fadeInUp col-md-4 col-sm-4" data-wow-delay="0.6s" <@studio.iceAttr iceGroup="iceContentText" path=contentModel.storeUrl/> >
				<h2>${contentModel.tcs_titleText_t}</h2>
				<p>${contentModel.tcs_description_t}</p>
			</div>

			<div class="wow fadeInUp col-md-5 col-sm-4"  data-wow-delay="0.9s" <@studio.iceAttr iceGroup="iceSession" path=contentModel.storeUrl/> >
				<h2>${contentModel.ss_titleText_t}</h2>
					<div>
						<h5>Morning</h5>
						<h4>
                        ${(contentModel.ss_morningFrom_dt?keep_after(" "))?keep_before_last(":")} - 
                        ${(contentModel.ss_morningTo_dt?keep_after(" "))?keep_before_last(":")}</h4>
					</div>
					<div>
						<h5>Evening</h5>
						<h4>
                        ${(contentModel.ss_eveningFrom_dt?keep_after(" "))?keep_before_last(":")} - 
                        ${(contentModel.ss_eveningTo_dt?keep_after(" "))?keep_before_last(":")}</h4>
					</div>
			</div>

			<div class="wow fadeInUp col-md-3 col-sm-4" data-wow-delay="1s" <@studio.iceAttr iceGroup="iceSocial" path=contentModel.storeUrl/> >
				<h2>${contentModel.sns_titleText_t}</h2>
				<ul class="social-icon">
					<#list contentModel.socialNetwork_o.item as row>
                        <li><a href="${row.sns_url_s}" class="fa fa-${row.sns_socialNetwork_s} wow fadeIn" data-wow-delay="1s"></a></li>
                    </#list>
				</ul>
			</div>

			<div class="clearfix"></div>

			<div class="col-md-12 col-sm-12" <@studio.iceAttr iceGroup="iceCopyRight" path=contentModel.storeUrl/> >
				<p class="copyright-text">Copyright &copy; ${contentModel.year_s} ${contentModel.companyName_t}
					<#if contentModel.displayThemeCredits_b>
                        | Design: <a rel="nofollow" href="${contentModel.themeCredits_tURL}" target="_parent">${contentModel.themeCredits_t}</a>
                    </#if>
                </p>
			</div>

		</div>
	</div>
</footer>