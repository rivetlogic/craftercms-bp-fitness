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
			<a href="#" class="navbar-brand">${contentModel.gymName}</a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right main-navigation">
            <#list contentModel.navigationMenuList.item as row>
				<li><a href="${row.navigationMenu}" class="smoothScroll">${row.navigationMenuLabel}</a></li>
			</#list>
			</ul>
		</div>

	</div>
</div>
<section id="home" class="parallax-section" <@studio.iceAttr path=contentModel.storeUrl iceGroup="iceHeaderBanner"/> >
	<div class="container">
		<div class="row">

			<div class="col-md-offset-1 col-md-10 col-sm-12">
				<h3 class="wow bounceIn" data-wow-delay="0.9s">${contentModel.h3FirstText}</h3>
				<h1 class="wow fadeInUp" data-wow-delay="1.6s">${contentModel.h1SecondText}<br>${(contentModel.h1ThirdText)!""}</h1>
				<a href="${contentModel.buttonSectionLink}" class="wow fadeInUp smoothScroll btn btn-default" data-wow-delay="2s">${contentModel.buttonText_t}</a>
			</div>

		</div>
	</div>
    <#if contentModel.mediaBanner.item??>
		<#assign myItem = siteItemService.getSiteItem(contentModel.mediaBanner.item.key) />
        
		<#if myItem.displayMedia = 'video'>
            <div class="header-video">
            	<#if myItem.videoBackground??>
                	<video playsinline autoplay muted loop class="header-video__teaser-video" id="header-video__teaser-video">
                    	<source src="${myItem.videoBackground}" type="video/mp4">
                	</video>
                </#if>
    		</div>
        <#else>
            <#assign imageSource = "" />
            <#if myItem.bannerImages.item?? >
            	<#list myItem.bannerImages.item as row>
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