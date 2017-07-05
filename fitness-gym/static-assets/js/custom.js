
 /* jQuery Pre loader
  -----------------------------------------------*/
$(window).load(function(){
    $('.preloader').fadeOut(1000); // set duration in brackets
});


/* HTML document is loaded. DOM is ready.
-------------------------------------------*/
$(document).ready(function() {

  /* template navigation
  -----------------------------------------------*/
 $('.main-navigation').onePageNav({
        scrollThreshold: 0.2, // Adjust if Navigation highlights too early or too late
        scrollOffset: 75, //Height of Navigation Bar
        filter: ':not(.external)',
        changeHash: true
    });

    /* Navigation visible on Scroll */
    mainNav();
    $(window).scroll(function () {
        mainNav();
    });

    function mainNav() {
        var top = (document.documentElement && document.documentElement.scrollTop) || document.body.scrollTop;
        if (top > 40) $('.sticky-navigation').stop().animate({
            "opacity": '1',
            "top": '0'
        });
        else $('.sticky-navigation').stop().animate({
            "opacity": '0',
            "top": '-75'
        });
    }


   /* Hide mobile menu after clicking on a link
    -----------------------------------------------*/
    $('.navbar-collapse a').click(function(){
        $(".navbar-collapse").collapse('hide');
    });


  /*  smoothscroll
  ----------------------------------------------*/
   $(function() {
        $('.navbar-default a, #home a, #overview a').bind('click', function(event) {
            var $anchor = $(this);
            $('html, body').stop().animate({
                scrollTop: $($anchor.attr('href')).offset().top - 49
            }, 1000);
            event.preventDefault();
        });
    });


 /* Parallax section
    -----------------------------------------------*/
  function initParallax() {
    $('#home').parallax("100%", 0.1);
    $('#overview').parallax("100%", 0.3);
    $('#trainer').parallax("100%", 0.2);
    $('#newsletter').parallax("100%", 0.3);
    $('.catalog-section').parallax("100%", 0.1);
    $('.quotes-section').parallax("100%", 0.2);

  }
  initParallax();


   /* home slider section
  -----------------------------------------------*/
  $(function(){
    jQuery(document).ready(function() {
      var mediaBannerImagesDOM = $('#mediaBannerImages');
      if(mediaBannerImagesDOM) {
          var mediaBannerImageArray;
          var mediaBannerImagesValue = mediaBannerImagesDOM.attr('data-media-banner-images');
          if(mediaBannerImagesValue) {
              mediaBannerImageArray = mediaBannerImagesValue.split(",");
              $('#home').backstretch(mediaBannerImageArray,  {duration: 2000, fade: 750});
          }
      }
    });
  })


  /* Owl Carousel
  -----------------------------------------------*/
  $(document).ready(function() {
    $("#owl-testimonial").owlCarousel({
      autoPlay: 6000,
      items : 1,
      itemsDesktop : [1199,1],
      itemsDesktopSmall : [979,1],
      itemsTablet: [768,1],
      itemsTabletSmall: false,
      itemsMobile : [479,1],
    });
  });


  /* wow
  -------------------------------*/
  new WOW({ mobile: false }).init();

  });

  /* .modal-backdrop classes
  -------------------------------*/
$('form').submit(function(event) {
    event.preventDefault();
    if (!this.checkValidity()) {
        // If the form is invalid, submit it. The form won't actually submit;
        // this will just cause the browser to display the native HTML5 error messages.
        this.find('input[type=submit]').click()
    } else {
        var values = $(this).serialize();
        $.ajax({
            type: this.method,
            url: this.action,
            data: values,
            success: function(data){
                if (data.success) {
                    $("#modal-transparent").modal();
                } else {
                    $('#fail-dialog').modal('show');
                }
            },
            error: function(response) {
                $('#fail-dialog').modal('show');
            }
        });

    }
});

$(".modal-transparent").on('show.bs.modal', function () {
    setTimeout( function() {
        $(".modal-backdrop").addClass("modal-backdrop-transparent");
    }, 0);
    //$("#newsletter-signup").submit();
});

$(".modal-transparent").on('hidden.bs.modal', function () {
  $(".modal-backdrop").addClass("modal-backdrop-transparent");
});
