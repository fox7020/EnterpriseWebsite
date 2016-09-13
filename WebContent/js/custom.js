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
   markers.push(createMarker(
		   createShop(
				   24.150693,120.650955,'09:00~21:00','台中市公益路二段51號20樓','(04)2326-5860','(04)2327-3572','http://taichung.iiiedu.org.tw/')));
   markers.push(createMarker(
		   createShop(
				   24.147984,120.649769,'07:00~23:00','台中市南屯區大墩路465號','(04)2329-3366','','chingshin.tw')));
   markers.push(createMarker(
		   createShop(
				   24.155786,120.649554,'07:00~23:00','台中市南屯區大墩路803號','(04)2320-7120','','50lan.com.tw')));
   markers.push(createMarker(
		   createShop(
				   24.151038,120.654619,'10:00~21:00','台中市西區公益路353號','(04)2325-5252','','https://www.facebook.com/fulltea2015')));
   map.addMarkers(markers);
   //for mobile
  $(document).on("click touchstart", function  (argument) {
      if (isShow) {
        $('#section').css("visibility","hidden");
        isShow = false;
       }         
  });
  $("#sectionBlock").on("click touchstart", function  (argument) {
      if (isShow) {
        event.stopPropagation();
        $('#section').css("visibility","visible");
        isShow = true;
       }         
  });
  //for PC
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
  /* from doctor*/

  //this code is for smooth scroll and nav selector
        $(document).ready(function () {
          $(document).on("scroll", onScroll);
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
          jQuery(".top-header img.logo").css({"margin-top": "-10px", "margin-bottom": "0"});
          jQuery(".navbar-default").css({"margin-top": "0px",});
        }
        else{
          jQuery(".header").css({"background": "transparent",});
           jQuery(".top-header img.logo").css({"margin-top": "-12px", "margin-bottom": "25px"});
           jQuery(".navbar-default").css({"margin-top": "12px", "margin-bottom": "0"});
          
        }
     });

      
     

});