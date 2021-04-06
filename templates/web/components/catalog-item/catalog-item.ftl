<#import "/templates/system/common/ice.ftl" as studio />


<div class="catalog-item wow fadeInUp" data-wow-delay="1.9s">
	<div class="blog-thumb catalog-item-size" onmouseover='this.style.backgroundImage="url(${contentModel.classImage_s})"'>
		<#assign classDays = "" />
    <#if contentModel.classDays_o?? && contentModel.classDays_o.item??>
      <#list contentModel.classDays_o.item as row>
        <#if classDays?has_content>
          <#assign classDays = classDays + " | " + row.day_s />
        <#else>
          <#assign classDays = classDays + row.day_s />
        </#if>
      </#list>
    </#if>
		<span class="blog-date">
			<@studio.span $field="classCategory_s">
				${contentModel.classCategory_s!''}
			</@studio.span>
			/ ${classDays} - ${contentModel.startTime_dt?time?string.short}
		</span>

		<@studio.h3 $field="titleText_t" class="blog-title">
			${contentModel.titleText_t}
		</@studio.h3>

		<h5 id="blog-author">
			by
			<@studio.span $field="trainerName_t">
				${contentModel.trainerName_t}
			</@studio.span>
		</h5>
	</div>
</div>
