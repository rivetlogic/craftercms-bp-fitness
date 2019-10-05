<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- =========================
    HEADER SECTION
============================== -->
<div class="navbar navbar-default navbar-fixed-top sticky-navigation" role="navigation">
	<div class="container" <@studio.iceAttr path=contentModel.storeUrl iceGroup="iceHeader"/> >

		<div class="navbar-header">
			<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
			</button>
			<a href="#" class="navbar-brand">${contentModel.gymName_t}</a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right main-navigation">
            <#list contentModel.navigationMenuList_o.item as row>
				<li><a href="${row.navigationMenu_s}" class="smoothScroll">${row.navigationMenuLabel_t}</a></li>
			</#list>
			</ul>
		</div>

	</div>
</div>
<section id="home" class="parallax-section" <@studio.iceAttr path=contentModel.storeUrl iceGroup="iceHeaderBanner"/> >
	<div class="container">
		<div class="row">

			<div class="col-md-offset-1 col-md-10 col-sm-12">
				<h3 class="wow bounceIn" data-wow-delay="0.9s">${contentModel.h3FirstText_t}</h3>
				<h1 class="wow fadeInUp" data-wow-delay="1.6s">${contentModel.h1SecondText_t}<br>${(contentModel.h1ThirdText_t)!""}</h1>
				<a href="${contentModel.buttonSectionLink_s}" class="wow fadeInUp smoothScroll btn btn-default" data-wow-delay="2s">${contentModel.buttonText_t}</a>
			</div>

		</div>
	</div>
    <#if contentModel.mediaBanner_o.item??>
		<#assign myItem = siteItemService.getSiteItem(contentModel.mediaBanner_o.item.key) />
        
		<#if myItem.displayMedia_s = 'video'>
            <div class="header-video">
            	<#if myItem.videoBackground_s??>
                	<video playsinline autoplay muted loop class="header-video__teaser-video" id="header-video__teaser-video">
                    	<source src="${myItem.videoBackground_s}" type="video/mp4">
                	</video>
                </#if>
    		</div>
        <#else>
            <#assign imageSource = "" />
            <#if myItem.bannerImages_o.item?? >
            	<#list myItem.bannerImages_o.item as row>
                    <#if (imageSource?length > 0) >
                        <#assign imageSource = imageSource + ',' + row.bannerImage />
                    <#else>
                        <#assign imageSource = row.bannerImage />
                    </#if>
                </#list>
                <input type="hidden" id="mediaBannerImages" data-media-banner-images="${imageSource}"/>
            </#if>
       </#if>
	</#if>
</section>