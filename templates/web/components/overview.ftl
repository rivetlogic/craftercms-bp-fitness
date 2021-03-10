<#import "/templates/system/common/ice.ftl" as studio />

<@studio.componentRootTag $tag="section" id=(contentModel.sectionId) class="parallax-section">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-sm-12">
        <@studio.img $field="imageSection_s" class="img-responsive" src=(contentModel.imageSection_s) alt=(contentModel.titleText_t) />
        <#if contentModel.displayBlockQuote_b>
          <@studio.tag $tag="blockquote" $field="quoteDescription_html" class="wow fadeInUp" $attrs={'data-wow-delay': '1.9s'}>
            ${contentModel.quoteDescription_html}
          </@studio.tag>
        </#if>
      </div>

      <div class="col-md-1"></div>

      <div class="wow fadeInUp col-md-4 col-sm-12" data-wow-delay="1s">
        <div class="overview-detail">
          <@studio.h2 $field="titleText_t">
            ${contentModel.titleText_t}
          </@studio.h2>

          <@studio.span $field="description_t">
            ${contentModel.description_t}
          </@studio.span>

          <#if contentModel.displayButton_b>
            <a href="${contentModel.buttonSectionLink_s}" class="btn btn-default smoothScroll">
              <@studio.span $field="buttonText_t">
                ${contentModel.buttonText_t}
              </@studio.span>
            </a>
          </#if>
        </div>
      </div>

      <div class="col-md-1"></div>

    </div>
  </div>
</@studio.componentRootTag>
