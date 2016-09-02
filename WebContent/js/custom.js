jQuery(document).ready(function() {
  

   $('#carouselHacked').carousel();
  
	//this code is for the gmap
   var isShow = false;
   var map = new GMaps({
        el: '#map',
        lat: 24.150693,
        lng: 120.650955
      });

   var markers = [];
   //創造店家資訊的物件
   function createShop (varlat,varlng, bussiness , addr , tel , fax , mail) {
      var shopInfo = {
          lat: varlat,
          lng: varlng,
          bussiness:bussiness,
          addr:addr,
          tel:tel,
          fax:fax,
          mail:mail,
      }  
      return shopInfo;
   }

   function createMarker(shopInfo) {
      var tempMark = {
        lat: shopInfo.lat,
        lng: shopInfo.lng,
        title: 'Store',
        click: function(e) {
          event.stopPropagation();
          $('#listInfo ul:nth-child(1) li span:nth-child(3)').html(shopInfo.bussiness);
          $('#listInfo ul:nth-child(2) li span:nth-child(3)').html(shopInfo.addr);
          $('#listInfo ul:nth-child(3) li span:nth-child(3)').html(shopInfo.tel);
          $('#listInfo ul:nth-child(4) li span:nth-child(3)').html(shopInfo.fax);
          $('#listInfo ul:nth-child(5) li span:nth-child(3)').html(shopInfo.mail);
          $('#section').css("visibility","visible");
          isShow = true;
        }
      };
      return tempMark;
   }


   //增加markers
   markers.push(createMarker(createShop(24.150693,120.650955,1,22,333,4444,5)));
   markers.push(createMarker(createShop(24.150991,120.648557,6,77,888,9999,10)));

   map.addMarkers(markers);

  $(document).on("click", function  (argument) {
      if (isShow) {
        $('#section').css("visibility","hidden");
        isShow = false;
       }         
  });
  $("#sectionBlock").on("click", function  (argument) {
      if (isShow) {
        event.stopPropagation();
        $('#section').css("visibility","visible");
        isShow = true;
       }         
  });


      //this code is for smooth scroll and nav selector
            $(document).ready(function () {
              $(document).on("scroll", onScroll);
//              document.getElementById('section').style.visibility = 'hidden';
              //smoothscroll
              $('a[href^="#"]').on('click', function (e) {
                  e.preventDefault();
                  $(document).off("scroll");
                  
                  $('a').each(function () {
                      $(this).removeClass('active');
                  })
                  $(this).addClass('active');
                
                  var target = this.hash,
                      menu = target;
                  $target = $(target);
                  $('html, body').stop().animate({
                      'scrollTop': $target.offset().top+2
                  }, 500, 'swing', function () {
                      window.location.hash = target;
                      $(document).on("scroll", onScroll);
                  });
              });
          });

          function onScroll(event){
              var scrollPos = $(document).scrollTop();
              $('.navbar-default .navbar-nav>li>a').each(function () {
                  var currLink = $(this);
                  var refElement = $(currLink.attr("href"));
                  if (refElement.position().top <= scrollPos && refElement.position().top + refElement.height() > scrollPos) {
                      $('.navbar-default .navbar-nav>li>a').removeClass("active");
                      currLink.addClass("active");
                  }
                  else{
                      currLink.removeClass("active");
                  }
              });
          }
     
     
     //this code is for animation nav
     jQuery(window).scroll(function() {
        var windowScrollPosTop = jQuery(window).scrollTop();

        if(windowScrollPosTop >= 150) {
          jQuery(".header").css({"background": "#B193DD",});
          jQuery(".top-header img.logo").css({"margin-top": "-40px", "margin-bottom": "0"});
          jQuery(".navbar-default").css({"margin-top": "-15px",});
        }
        else{
          jQuery(".header").css({"background": "transparent",});
           jQuery(".top-header img.logo").css({"margin-top": "-12px", "margin-bottom": "25px"});
           jQuery(".navbar-default").css({"margin-top": "12px", "margin-bottom": "0"});
          
        }
     });

      
     

});