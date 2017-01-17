 $(document).ready(function(){
   $("div#userdata").hide();
   $("div#orderdata").hide();
      $("div#image").show();
       $("div#pw").hide();
       $("div#teaching").hide();
       $('div.user_list_a').click(function(){
           $(this).addClass('user_list_active').siblings().removeClass('user_list_active'); 
        });   
       $(function(){
         var h = $(window).height();
         $('div.user_content').css({
           minHeight: h-180
         });
       });
  });
  function showuserdata(){
    
     $("div#userdata").show();
     $("div#orderdata").hide();
     $("div#image").hide();
     $("div#pw").hide();
     $("div#teaching").hide();
  }
  function showorderdata(){
    $("div#userdata").hide();
    $("div#orderdata").show();
    $("div#image").hide();
   $("div#teaching").hide();
  }
  function showpw(){
    $("div#pw").show();
  }
    function showteaching(){
       $("div#userdata").hide();
   $("div#orderdata").hide();
       $("div#image").hide();
       $("div#pw").hide();
       $("div#teaching").show();
  }
   function showlogout(){
  alert("已成功登出!歡迎繼續參觀小農橋!")
  }
