<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="java.util.ArrayList" %>
  <%@page import="T1_Dto.package_info" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

 .detail{
 display:none;
 height: 100px;
 border-style: dotted;

 }
 a{
 text-decoration: none;
 }
 ul{
 list-style: none;
 }
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function package_list( obj){
	
	  let li  = obj.parentElement;	
	  let noTag  = li.querySelector("#no");
	  let no =  noTag.value;
	  alert( no);
	 $.ajax(
			{
				 type:"get",
				 dataType:"json",
				 data:{ no : no} ,
				 url:"/tour_pk/package_list.do",	    
				 success: function( data, textStatus){
				   //alert("fsf");
			        console.log( data);	  //콘솔에서 json 데이터 확인하기 			        
			        let pk_name = data.pk_name;
			        let price = data.price;
			        alert(price );
			        
			          
			        let pk_nameTag  = li.querySelector("#pk_name");
			        let priceTag  = li.querySelector("#price");
			        pk_nameTag.value= pk_name;	
			        priceTag.value= price;
			        /*
			        
			        departure
					: 
					"TW0281"
					destination
					: 
					"TW0282"
					ht_key
					: 
					"H1031"
					pk_name
					: 
					"행복한 오사카여행"
					pk_num
					: 
					"Pj123"
					price
					: 
					500000
					schedule
					: 
					"2박3일"
					trv_place
					: 
					"일본(오사카)"
			        */
			        
			      		        				 
				  			    
				 }
				 ,
				 error: function( data, textStatus){			 
				 },		 
				 complete:function(data, textStatus){
					 alert("done");
				 }	 
			}
		 );
}
</script>

<script>
    //ajax로 데이터받기
    function toggle(obj){  
        alert("dkfkdkf");
        let li  = obj.parentElement;
      //  alert( li );
        let detail  = li.querySelector(".detail");
       // alert( detail);
        let flagTag  =  li.querySelector("#flag");
        

     // alert(detail ) ;
     // alert( flagTag.value);
        let flag = flagTag.value;
       
        if( flag ==0){
           package_list(obj);         	
        	//package_list();   
            detail.style.display="block";
            flagTag.value=1;
        }else{      
            detail.style.display="none";
            flagTag.value=0;;
        }
    }

</script>


</head>
<body>

<header>AcornTour</header>
	
	<nav>
	<a href="/Team1_ex1/mainIndex.html">홈페이지</a>
	<a href="/Team1_ex1/tourMypage">마이페이지</a>
	<a></a> 
	</nav>
	
	<div>
	<h2 id="id">고객님만을 위한 추천 패키지여행
	<img src = "/images/img1"  alt=""/> 
	</h2>	
	<section>
	
<h3>아시아/유럽/미주</h3>
<div class="wrap"> 

<ul id="list">
<li><a href="package_detail?pk_num=Pj123"><img src=" "><p>[슈퍼세이브] 행복한 오사카여행<br> 12월 20일부터 12월 23일까지 [로칸1일숙박] 바쁜 당신을 위한 추천 상품// </p><p>여행기간 2박3일<br>★4.2</p></a>	
<button onclick="toggle(this)">상품요약보기</button>
	<div  class="detail">
	
		<패키지 가격 (원)> 
		<input id="flag" type="hidden" value="0">
		<input id="no" type="hidden"  value="Pj123"/>	 
		 
		 <div id="info">
		    패키지정보
		     <input type="text"  id="pk_name" >		
		    <input type="text"  id="price" >		
		         
		  </div>

	</div>
</li> 

<li><a href="package_detail?pk_num=PA987"><img src=" "><p>[마감임박!!] 로스앤젤레스 관광<br>12월 10일부터 12월 17일일까지 미주여행 고민중이라면! [슈퍼세이브] 가족단위 추천 상품// </p><p>여행기간 8일<br>★4.5</p></a>
<button  onclick="toggle(this)">상품요약보기</button>
	<div  class="detail">
	
		<패키지 가격 (원)> 
		<input id="flag" type="hidden" value="0">
		<input id="no" type="hidden"  value="PA987"/>	 
		 
		 <div id="info">
		    패키지정보
		    <input type="text"  id="pk_name" >
		    <input type="text"  id="price" >		     
		  </div>

	</div>
</li> 

<li><a href=" package_detail?pk_num=PU456 "><img src=" "><p>[크리스마스 마켓투어포함] 영국 런던 깊이보기<br>12월 25일부터 12월 31일까지 크리스마스부터 연말분위기 유럽감성찬스!  [추천도1위] 크리스마스를 느끼고 싶은 당신을 위한 선택!// </p><p>여행기간 6박7일<br>★4.7</p></a>
<button  onclick="toggle(this)">상품요약보기</button>
    <div class="detail" >
	
		<패키지 가격 (원)> 
		<input id="flag" type="hidden" value="0">
		<input id="no" type="hidden"  value="PU456"/>	 
		 
		 <div id="info">
		    패키지정보
		    <input type="text"  id="pk_name" >
		    <input type="text"  id="price" >		     
		  </div>

	
    </div>
    </li> 

<li><a href=" "><img src=" "><p>[얼리버드 & 슈퍼세이브] 보라카이<br>10월 31일부터 11월 13일까지 즐기는 보라카이 특별 할인 찬스!  [슈퍼세이브] 알뜰한 해외여행을 준비하는 당신을 위한 선택! 가성비 추천 상품// </p><p>여행기간 4/5/6일<br>★4.2</p></a>
<button  onclick="toggle(this)">상품요약보기</button>
    <div class="detail" >
        <input type="hidden" value="0">
		   <div></div><패키지일정>
		   <div></div>
    </div>
    </li> 

</ul>
</div>
				
	</section>
	
	<footer>
		AcornTour Footer
	</footer>


</div>


</body>
</html>