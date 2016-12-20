
    $(document).ready(function(){ 
   $("div#userdata").hide();
   $("div#orderdata").hide();
   $("div#productdata").hide();
   $("div#articledata").hide();
   $("div#payerdata").hide();
   $("div#chart").show();
   $("div#GAselect").hide();
   
   $('div.admin_list_a').click(function(){
       $(this).addClass('admin_list_active').siblings().removeClass('admin_list_active'); 
    });   
   $(function(){
     var h = $(window).height();
     $('div.admin_content').css({
       minHeight: h-180
     });
   });   
  });
  function showorderdata(){
    $("div#userdata").hide();
    $("div#orderdata").show();
    $("div#productdata").hide();
   $("div#articledata").hide();
   $("div#payerdata").hide();
    $("div#chart").hide();
  }
  function showuserdata(){
    $("div#userdata").show();
    $("div#orderdata").hide();
    $("div#productdata").hide();
   $("div#articledata").hide();
   $("div#payerdata").hide();
    $("div#chart").hide();
  }
    function showpayerdata(){
    $("div#userdata").hide();
    $("div#orderdata").hide();
    $("div#productdata").hide();
   $("div#articledata").hide();
   $("div#payerdata").show();
    $("div#chart").hide();
  }
    function showproductdata(){
    $("div#userdata").hide();
    $("div#orderdata").hide();
    $("div#productdata").show();
   $("div#articledata").hide();
   $("div#payerdata").hide();
    $("div#chart").hide();
  }
   function showarticledata(){
    $("div#userdata").hide();
    $("div#orderdata").hide();
    $("div#productdata").hide();
   $("div#articledata").show();
   $("div#payerdata").hide();
   $("div#chart").hide();
  }
   function showchart(){
    $("div#userdata").hide();
    $("div#orderdata").hide();
    $("div#productdata").hide();
   $("div#articledata").hide();
   $("div#payerdata").hide();
   $("div#chart").show();
  }
   
   
 
   
