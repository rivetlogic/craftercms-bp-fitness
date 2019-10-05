<#import "/templates/system/common/cstudio-support.ftl" as studio />

<!DOCTYPE html>
<html lang="en">
	<head>
      <!--
      Fitness Template
      http://www.templatemo.com/tm-487-fitness
      -->
      <title>${model.title_t}</title>
      <meta name="description" content="">
      <meta name="author" content="">
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=Edge">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
      
      
      <link rel="stylesheet" href="/static-assets/css/bootstrap.min.css">
      <link rel="stylesheet" href="/static-assets/css/animate.css">
      <link rel="stylesheet" href="/static-assets/css/font-awesome.min.css">
      <link rel="stylesheet" href="/static-assets/css/owl.theme.css">
      <link rel="stylesheet" href="/static-assets/css/owl.carousel.css">
      
      <!-- Main css -->
      <link rel="stylesheet" href="/static-assets/css/style.css">
      
      <!-- Google Font -->
      <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,600' rel='stylesheet' type='text/css'>
      <link href='https://fonts.googleapis.com/css?family=Lora:700italic' rel='stylesheet' type='text/css'>
	</head>
	<body data-spy="scroll" data-target=".navbar-collapse" data-offset="50">
        <!-- =========================
             PRE LOADER
        ============================== -->
        <div  class="preloader">
        
            <div class="sk-spinner sk-spinner-pulse"></div>
        
        </div>
        
        <!-- =========================
            HEADER SECTION
        ============================== -->
		<@renderComponent component=contentModel.header.item />

        <!-- =========================
			PAGE SECTIONS
        ============================== -->
        <#if menuList?? && menuList?size &gt; 0>
				MENU LIST IS HERE
		</#if>
        <div <@studio.componentContainerAttr target="pageSections" objectId=contentModel.objectId /> >
        	<#if contentModel.pageSections.item??>
              <#list contentModel.pageSections.item as section>
                  <@renderComponent component=section />
              </#list>
            </#if>
        </div>
        
        <!-- =========================
            FOOTER SECTION
        ============================== -->
		<@renderComponent component=contentModel.footer.item />

		<!-- =========================
             SCRIPTS
        ============================== -->
        <div class="modal modal-transparent fade" id="modal-transparent" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="myModalLabel">Newsletter Subscription</h4>
              </div>
              <div class="modal-body">
                Thanks for contact us and subscribed to our Newsletter service.
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              </div>
            </div>
          </div>
        </div>
        
        <!-- =========================
             SCRIPTS
        ============================== -->
        <script src="/static-assets/js/jquery.js"></script>
        <script src="/static-assets/js/bootstrap.min.js"></script>
        <script src="/static-assets/js/jquery.parallax.js"></script>
        <script src="/static-assets/js/jquery.nav.js"></script>
        <script src="/static-assets/js/jquery.backstretch.min.js"></script>
        <script src="/static-assets/js/owl.carousel.min.js"></script>
        <script src="/static-assets/js/smoothscroll.js"></script>
        <script src="/static-assets/js/wow.min.js"></script>
        <script src="/static-assets/js/custom.js"></script>

		<@studio.toolSupport/>	
	</body>
</html>