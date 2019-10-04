<#import "/templates/system/common/cstudio-support.ftl" as studio />

<div class="wow fadeInUp col-md-6 col-sm-12" data-wow-delay="1.9s" <@studio.iceAttr iceGroup="iceCatalogItem" path=contentModel.storeUrl/> >
	<div class="blog-thumb catalog-item-size" onmouseover='this.style.backgroundImage="url(${contentModel.classImage_s})"' onmouseout='this.style.backgroundImage="url()"'>
  	<#assign classDays = "" />
  	<#list contentModel.classDays.item as row>
    	<#if classDays?has_content>
		  	<#assign classDays = classDays + " | " + row.day />
        <#else>
		  	<#assign classDays = classDays + row.day />        
  		</#if>
	</#list>
    <span class="blog-date">${contentModel.classCategory_s} / ${classDays} - ${(contentModel.startTime_dt?keep_after(" "))?keep_before_last(":")}</span>
    <h3 class="blog-title">${contentModel.titleText_t}</h3>
    
	<h5 id="blog-author">by ${contentModel.trainerName_t}</h5>
  </div>
</div>