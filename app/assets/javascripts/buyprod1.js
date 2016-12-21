
        
        function tran(){
         if($("input:checked").val()==="home"){
             $("input#customer_homeaddress").attr("placeholder", "宅配地址");
             $("div.homeaddress").show();
             $("div.convenienceaddress").hide();
             $("div.faceaddress").hide();
             $("div#sweet-potato").show();
             $("input#customer_faceaddress").val("");
             $("input#customer_convenienceaddress").val("");
         }
         else if($("input:checked").val()==="convenience"){
             $("input#customer_convenienceaddress").attr("placeholder", "門市編號");
             $("div.homeaddress").hide();
             $("div.convenienceaddress").show();
             $("div.faceaddress").hide();
             $("div#sweet-potato").hide();
             $("input#customer_productnumber").val(0);
             $("input#customer_faceaddress").val("");
             $("input#customer_homeaddress").val("");
         }
         else {
             $("input#customer_faceaddress").attr("placeholder", "面交地點(限政治大學,10:00-20:00)");
             $("div.homeaddress").hide();
             $("div.convenienceaddress").hide();
             $("div.faceaddress").show();
             $("div#sweet-potato").show();
             $("input#customer_homeaddress").val("");
             $("input#customer_convenienceaddress").val("");
         }
         count();
         };
        function savedata(){
        window.sessionStorage["cusname"]=$("input#customer_cusname").val();
        window.sessionStorage["email"]=$("input#customer_email").val();
        window.sessionStorage["cellphone"]=$("input#customer_cellphone").val();
        window.sessionStorage["homeaddress"]=$("input#customer_homeaddress").val();
        window.sessionStorage["convenienceaddress"]=$("input#customer_convenienceaddress").val();
        window.sessionStorage["faceaddress"]=$("input#customer_faceaddress").val();
        window.sessionStorage["quantity"]=$("input#customer_productnumber").val();
        window.sessionStorage["quantity1"]=$("input#customer_productnumber1").val();
        window.sessionStorage["quantity2"]=$("input#customer_productnumber2").val();
        window.sessionStorage["quantity3"]=$("input#customer_productnumber3").val();
        window.sessionStorage["totalprice"]=$("span.price").text();
      
        
        }
    
    $(document).ready(function(){
        
     if($("input:checked").val()==="home"){
         $("input#customer_homeaddress").attr("placeholder", "宅配地址");
         $("div.homeaddress").show();
         $("div.convenienceaddress").hide();
         $("div.faceaddress").hide();
         $("div#sweet-potato").show();
         $("input#customer_faceaddress").val("");
         $("input#customer_convenienceaddress").val("");
     }
    });

    
　 　　	function count(){
　 　　	    
　 　　	    $("span.SP-tran-price").text("150");
　 　　	    $("span.tran-price").text("80");
　 　　	  
　 　　		var quantity=$("input.quantity").val();
　 　　		var quantity1=$("input.quantity1").val();
　 　　		var quantity2=$("input.quantity2").val();
　 　　		var quantity3=$("input.quantity3").val();
　 　　		if(quantity<0){
　 　　		 quantity=0;	
　 　　		 $("input.quantity").val(0);
　 　　		}
　 　　		if(quantity1<0){
　 　　				quantity1=0;	
　 　　	　		 $("input.quantity1").val(0);
　 　　		}
　 　　		if(quantity2<0){
　 　　				quantity2=0;	
　 　　　		 $("input.quantity2").val(0);
　 　　		}
　 　　		if(quantity3<0){
　 　　				quantity3=0;	
　 　　	　		 $("input.quantity3").val(0);
　 　　		}
        var SPprice=0;
        var Normalprice=0;
　 　　		if(quantity>0){
　 　　		    SPprice=50*quantity+150;
　 　　		}
　 　　		if(quantity>19||$("input:checked").val()==="face"){
　 　　		    SPprice-=150
　 　　		    $("span.SP-tran-price").text("0");
　 　　		}
　 　　	
　 　　		if(quantity1>0||quantity2>0||quantity3>0){
　 　　		   
　 　　		    Normalprice=120*quantity1+150*quantity2+158*quantity3+80;
　 　　		}
　 　　		if(Normalprice-80>=500||$("input:checked").val()==="face"){
　 　　		    Normalprice-=80
　 　　		    $("span.tran-price").text("0");
　 　　		}
　 　　		
　 　　		
　 　　		
　 　　		if(totalprice<0){
　 　　		 totalprice=0;	
　 　　		 $("span.price").val(0);
　 　　		}
　 　　		if(SPprice<0){
　 　　		 SPprice=0;	
　 　　		 $("span.SP-totalprice").val(0);
　 　　		}
　 　　		if(Normalprice<0){
　 　　		 Normalprice=0;	
　 　　		 $("span.totalprice").val(0);
　 　　		}
　 　　		var totalprice=SPprice+Normalprice;
　 　　		$("span.SP-totalprice").text(SPprice);
　 　　		$("span.totalprice").text(Normalprice);
　 　　		$("span.price").text(totalprice);
　 　　		$("input#customer_price").val(totalprice);
　 　　	}
