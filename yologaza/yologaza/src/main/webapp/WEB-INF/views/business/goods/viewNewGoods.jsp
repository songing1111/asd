<!-- 1차기여도 : 이택진100%-->
<!-- 2차기여도 : 이택진100%-->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"	isELIgnored="false"
	%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />	
<c:set var="goods"  value="${goodsMap.goodsVO}"  />
<c:set var="imageFileList"  value="${goodsMap.imageFileList}"  />
<%
String goods_id = request.getParameter("goods_id");
%>


<!DOCTYPE html>
<meta charset="utf-8">
<head>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	
	$(document).ready(function() {
		<!-- textarea의 줄바꿈 -->	

		$("#goods_description").keydown(function(){
			$('#text').val($(this).val());
		});
		$("#goods_description").change(function(){
			var str = $("#goods_description").val();
			str = str.replace(/(?:\r\n|\r|\n)/g, "<br />");
			$('#text').val(str);
	    });
		
		
		
	});
	
	$(document).ready(function() {

		$("#goods_baseImpormation").keydown(function(){
			$('#text2').val($(this).val());
		});
		$("#goods_baseImpormation").change(function(){
			var strs = $("#goods_baseImpormation").val();
			strs = strs.replace(/(?:\r\n|\r|\n)/g, "<br />");
			$('#text2').val(strs);
	    });
		
	});
	
	
	function readURL(input,preview) {
		//  alert(preview);
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	            $('#'+preview).attr('src', e.target.result);
	        }
	        reader.readAsDataURL(input.files[0]);
	    }
	  } 
	
	var cnt =0;
	function fn_addFile(){
		  $("#d_file").append("<br>"+"<input  type='file' name='goods"+cnt+"' id='goods"+cnt+"'  onchange=readURL(this,'previewImage"+cnt+"') />");
		  $("#d_file").append("<img  id='previewImage"+cnt+"'   width=200 height=200  />");
		  $("#d_file").append("<input  type='button' value='추가'  onClick=addNewImageFile('goods"+cnt+"')  />");
		  cnt++;
	}
	
	function modifyImageFile(fileId,goods_id, goods_uimg, fileType){
		// alert(fileId);
		var form = $('#FILE_FORM')[0];
		var formData = new FormData(form);
		formData.append("goods_id", goods_id);
		formData.append("goods_uimg", goods_uimg);
		formData.append("fileType", fileType);
		
		$.ajax({
		  url: '${contextPath}/business/goods/modifyGoodsImageInfo.do',
		  processData: false,
		  contentType: false,
		  data: formData,
		  type: 'POST',
		 success: function(result){
		    alert("이미지를 수정했습니다!");
		  }
		});
	}
	
	function addNewImageFile(fileType){
		   //  alert(fileId);
			  var form = $('#FILE_FORM')[0];
		      var formData = new FormData(form);
		      formData.append("fileType", fileType);
	    	  $.ajax({
		          url: '${contextPath}/business/goods/addNewGoodsImage.do?goods_id='+<%=goods_id%>,
		                  processData: false,
		                  contentType: false,
		                  data: formData,
		                  type: 'post',
		                  success: function(result){
		                      alert("이미지를 추가했습니다.!");
		                  }
		          });

		  }
	
	function deleteImageFile(goods_id,goods_uimg,fileName,trId){
		var tr = document.getElementById(trId);

	      	$.ajax({
	    		type : "post",
	    		async : true, //false인 경우 동기식으로 처리한다.
	    		url : "${contextPath}/business/goods/removeGoodsImage.do",
	    		data: {goods_id:goods_id,
	     	         goods_uimg:goods_uimg,
	     	         fileName:fileName},
	    		success : function(data, textStatus) {
	    			alert("이미지를 삭제했습니다!!");
	                tr.style.display = 'none';
	    		},
	    		error : function(data, textStatus) {
	    			alert("에러가 발생했습니다."+textStatus);
	    		},
	    		complete : function(data, textStatus) {
	    			//alert("작업을완료 했습니다");
	    			
	    		}
	    	}); //end ajax	
	  }

  function fn_modify_goods(obj){
		 obj.action="${contextPath}/business/goods/modGoods.do?goods_id="+${goods.goods_id};
		 obj.submit();
	 }
  
  function execDaumPostcode() {
	  new daum.Postcode({
	    oncomplete: function(data) {
	      // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	      // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
	      // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	      var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
	      var extraRoadAddr = ''; // 도로명 조합형 주소 변수

	      // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	      // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	      if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	        extraRoadAddr += data.bname;
	      }
	      // 건물명이 있고, 공동주택일 경우 추가한다.
	      if(data.buildingName !== '' && data.apartment === 'Y'){
	        extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	      }
	      // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	      if(extraRoadAddr !== ''){
	        extraRoadAddr = ' (' + extraRoadAddr + ')';
	      }
	      // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
	      if(fullRoadAddr !== ''){
	        fullRoadAddr += extraRoadAddr;
	      }

	      // 우편번호와 주소 정보를 해당 필드에 넣는다.
	      document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
	      document.getElementById('roadAddress').value = fullRoadAddr;
	      document.getElementById('jibunAddress').value = data.jibunAddress;

	      // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	      if(data.autoRoadAddress) {
	        //예상되는 도로명 주소에 조합형 주소를 추가한다.
	        var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	        document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

	      } else if(data.autoJibunAddress) {
	          var expJibunAddr = data.autoJibunAddress;
	          document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
	      } else {
	          document.getElementById('guide').innerHTML = '';
	      }
	      
	     
	    }
	  }).open();
	}
  
	function fn_enable(obj){
		document.getElementById("goods_type").disabled=false;
		document.getElementById("goods_name").disabled=false;
		document.getElementById("goods_hp").disabled=false;
		document.getElementById("goods_tel1").disabled=false;
		document.getElementById("goods_tel2").disabled=false;
		document.getElementById("goods_tel3").disabled=false;
		document.getElementById("goods_email1").disabled=false;
		document.getElementById("goods_email2").disabled=false;
		document.getElementById("zipcode").disabled=false;
		document.getElementById("roadAddress").disabled=false;
		document.getElementById("jibunAddress").disabled=false;
		document.getElementById("namujiAddress").disabled=false;
		document.getElementById("goods_description").disabled=false;
		document.getElementById("goods_baseImpormation").disabled=false;
		document.getElementById("goods_checkIn").disabled=false;
		document.getElementById("goods_checkOut").disabled=false;
		document.getElementById("goods_chargeImpormation").disabled=false;
		document.getElementById("goods_price1").disabled=false;
		document.getElementById("goods_price2").disabled=false;
		document.getElementById("account_bank").disabled=false;
		document.getElementById("account_name").disabled=false;
		document.getElementById("account").disabled=false;
		document.getElementById("goods_motel_endtime").disabled=false;
		document.getElementById("goods_motel_usetime").disabled=false;
		document.getElementById("tr_btn").style.display="none";
		document.getElementById("tr_btn_modify").style.display="block";
		
	}
	
	function chageLangSelect(){ 
		var langSelect = document.getElementById("selectbox"); 
		var selectValue = langSelect.options[langSelect.selectedIndex].value;  
		var selectText = langSelect.options[langSelect.selectedIndex].text; 
	}
	
	function getCheckboxValue()  {
		  // 선택된 목록 가져오기
		  const query = 'input[name="yolo_themes"]:checked';
		  const selectedEls = 
		      document.querySelectorAll(query);
		  
		  // 선택된 목록에서 value 찾기
		  let yolo_theme = '';
		  selectedEls.forEach((el) => {
			  yolo_theme += el.value + ' ';
		  });
		  
		  // 출력
		  document.getElementById('yolo_theme').innerText
		    = yolo_theme;
		}
	
</script>
<style>
	.sub_top_wrap{
	  height: 150px;
	  background:rgb(52, 152, 219);
	}
	.sub_top ul{
	  position:relative;
	  width:1024px;
	  height:150px;
	  margin:0 auto;
	  border-radius:0;
	  text-align:left;
	}
	
	.sub_top ul li{
		position: absolute;
	    color: #ddd;
	    font-weight: 500;
	    font-size: 32px;
	    bottom:20px;
	    text-align: center;
	}
	.sub_top ul li{
		color:#ddd;
	}
	.sub_top ul li:nth-child(1){
		color:white;
	}
	.sub_top ul li:nth-child(1) i{
		color:white;
	}
	.sub_top ul li:nth-child(2){
		left:333px;
	}
	.sub_top ul li:nth-child(3){
		right:333px;
	}
	.sub_top ul li:nth-child(4){
		right:0;
	}
	.sub_top ul li a div{
		font-size:14px;
	}
	th {
		background-color:rgb(52, 152, 219);
		font-size:12px;
		width:130px;
	}
	div#cent {
		text-align:center;
		margin-top: 50px;
		}
	label {
	    font-size: 16px;
	    display: inline-block;
	    width: 180px;
	    line-height: 25px;
	    margin-bottom: 10px;
		}
	
	input#checkbox {
		border:1px soild ;
		width:10px;
		height:10px;
		margin-right:5px;
		margin-left:5px;
		}
	p {
		font-size:14px;
	  color:#555;
		}
	p#img {
		font-size:14px;
	  color:#555;
		}
	button {
	  width:150px;
	  height:40px;
	  color:black;
	  padding-bottom: 5px;
	  box-sizing: border-box;
	  font-size:16px;
	}textarea{
	  padding:10px;
	  box-sizing:border-box;
	  width: 750px;
	}
	input#zipcode {
		width:200px;
		height:40px;
		font-size:12px;
		margin-bottom:5px;
	  padding:10px;
	  box-sizing:border-box;
		}
	input {
		width:550px;
		height:30px;
		font-size:16px;
		margin-bottom:5px;
	  box-sizing:border-box;
		}
	select{
	  width:150px;
	  height:40px;
	  margin-top:10px;
	}
	section form table{
	  width: 100%;
	  margin: 0 auto;
	  box-sizing: border-box;
	  padding: 40px 50px;
	  border-radius: 15px;
	  box-shadow: 1px 1px 2px 2px #ddd;
	}
	section form table tbody tr:nth-child(1) td{
		border-top:1px solid #999;
	}
	section form table tbody tr:nth-child(1) th{
		border-top:1px solid #999;
	}
	section form table tbody tr td{
	  padding: 20px;
	  box-sizing:border-box;
	  text-align:left;
	  border-bottom: 1px solid #999;
	  border-right: 1px solid #999;
      box-sizing: border-box;
	}
	section form table tbody tr th{
	  color:white;
	  font-size:16px;
	  border-bottom: 1px solid #999;
	  border-left: 1px solid #999;
	  border-right: 1px solid #999;
      box-sizing: border-box;
	}
	.fas{
		font-size:50px;
		padding-bottom:10px;
		box-sizing: border-box;
		color: #eee;
	}
	#tr_btn_modify{
       display:none;
     }
     #FILE_FORM input{
     	width:auto;
     }
     #serviceBox input{
		width: auto;
    	height: auto;
	}
	#text{
		height:0px;
		visibility: hidden;
	}
	#text2{
		height:0px;
		visibility: hidden;
	}
</style>
    
</head>
<body>
<section>
	  <div class="sub_top_wrap">
        <div class="sub_top">
        	<ul>
        		<li><a href="${contextPath}/business/goods/listGoods.do"><i class="fas fa-house-user"></i> <div>숙박등록</div></a></li>
        		<li><a href="#tab2"><i class="fas fa-concierge-bell"></i> <div>서비스등록</div></a></li>
        		<li><a href="#tab3"><i class="fas fa-calendar-alt"></i> <div>이용약관등록</div></a></li>
        		<li><a href="${contextPath}/business/goods/listRoom.do?goods_id=<%=goods_id%>"><i class="fas fa-hotel"></i> <div>객실등록</div></a></li>
        	</ul>
        </div>
      </div>
      <form name="frmGoods" action="${contextPath}" method="post"  enctype="multipart/form-data" style="width:1024px; min-width:1024px; margin:0 auto;">
        <div id="cent">
        
        <input name="uid" type="text" value="${member.uid}" style="visibility: hidden;" readonly/>
        
        </div>
         <table cellspacing="0"	>
          <tbody>
          <div>
          * [이용규칙관리]는 업체 공통적인 정책을 기입하는 란입니다. (체크인, 체크아웃, 성수기 설정 등)
          <h3>[필수 기입 정보]</h3>
          </div>
           <tr>
             <th>게스트하우스 <br> 기본 정보</th>
             <td>
                 <strong>숙박 시설</strong><br>
                 <select id="goods_type" name="goods_type" onchange="goods_typeSelect" style="width:150px; height:40px; margin-top:10px; margin-bottom: 20px; color:#555" disabled>
                   <option value="${goods.goods_type }" selected>${goods.goods_type }</option>
                   <option value="motel" >모텔</option>
                   <option value="hotel" >호텔</option>
                   <option value="pension" >펜션</option>
                   <option value="resort" >리조트</option>
                   <option value="guestHouse" >게스트하우스</option>
                   <option value="camping" >캠핑/글램핑</option>
                   <option value="hanok" >한옥</option>
                 </select>
                   <br><strong>업체명</strong>
                   <p><input type="text" id="goods_name" name="goods_name" value="${goods.goods_name }"  placeholder="업체명을 입력하세요" disabled></p>
                   <div><strong>숙소 핸드폰 번호</strong></div>
                   <p><input id="goods_hp" name="goods_hp" type="text" value="${goods.goods_hp }" disabled/></p>
                   <strong>숙소 연락처</strong>
                   <p><select id="goods_tel1" name="goods_tel1" type="text" style="width:20%; height:40px; font-size:16px;" disabled>
	                     <option value="${goods.goods_tel1 }" selected>${goods.goods_tel1 }</option>
	                     <option>없음</option>
	                     <option value="02">02</option>
	                     <option value="031">031</option>
	                     <option value="032">032</option>
	                     <option value="033">033</option>
	                     <option value="041">041</option>
	                     <option value="042">042</option>
	                     <option value="043">043</option>
	                     <option value="044">044</option>
	                     <option value="051">051</option>
	                     <option value="052">052</option>
	                     <option value="053">053</option>
	                     <option value="054">054</option>
	                     <option value="055">055</option>
	                     <option value="061">061</option>
	                     <option value="062">062</option>
	                     <option value="063">063</option>
	                     <option value="064">064</option>
	                     <option value="0502">0502</option>
	                     <option value="0503">0503</option>
	                     <option value="0505">0505</option>
	                     <option value="0506">0506</option>
	                     <option value="0507">0507</option>
	                     <option value="0508">0508</option>
	                     <option value="070">070</option>
	                   </select>
                     <span style="padding:0px 7px; font-size:18px;">-</span><input id="goods_tel2" name="goods_tel2" value="${goods.goods_tel2}" type="text" style="width:20%;" disabled/><span style="padding:0px 7px; font-size:18px;">-</span><input id="goods_tel3" name="goods_tel3" value="${goods.goods_tel3}" type="text" style="width:20%;" disabled/></p>
                   <strong>숙소 이메일</strong>
                   <p><input id="goods_email1" name="goods_email1" type="text" style="width:27%;" value="${goods.goods_email1 }" disabled/><span style="padding:0px 7px; font-size:18px;">@</span><input id="goods_email2" name="goods_email2" type="text" style="width:35%;" value="${goods.goods_email2 }" disabled/></p>
                      <strong>주소</strong>
                      <div>
                         <input type="text" id="zipcode" name="zipcode" size="10" value="${goods.zipcode }" disabled/> <a href="javascript:execDaumPostcode()" style="color: black; text-decoration: none; cursor:pointer; padding:8px; background:#eee; border-radius:3px; border:1px solid #777; box-sizing:border-box;" >우편번호검색</a>
                       <br>
                       
                        지번 주소<br><input type="text" id="roadAddress"  name="roadAddress"  value="${goods.roadAddress }" disabled/><br>
                        도로명 주소<br><input type="text" id="jibunAddress" name="jibunAddress" 	value="${goods.jibunAddress }" disabled/><br>
                        나머지 주소<br><input type="text" id="namujiAddress"  name="namujiAddress"  value="${goods.namujiAddress }" disabled/>
                   
                         
                      </div>
                    </div>
            </td>
            </tr>

            <tr>
              <th>업체 이미지 <br> (최대 20장)</th>
               <td>
                 <p>
                   *객실 및 업체 전경, 로비, 주차장 등 업체의 전반적인 이미지를 업로드해주시길 바랍니다. <br>
                   *이미지 교체를 원하시면 "변경"을 선택하시고 삭제를 원하시면 우측 "삭제"를 선택하시길 바랍니다. <br>
                   *이미지 장소는 짧게 기입해주시길 바랍니다. ex). 전경, 로비, 주차장 등 <br>
                   *첫 이미지가 메인 이미지이며 드래그를 통해 순서 변경이 가능합니다. <br><br></p>
                    
		            <ul>
		            <c:forEach var="item" items="${goodsMap.imageList}" >
		          		<li class="pic" style="width:204px;height:144px;overflow: hidden; float:left; margin:10px; border:1px solid #ddd; margin-top:30px;"><img src="${contextPath}/goods_download.do?goods_id=${item.goods_id}&fileName=${item.fileName}" alt="숙박정보 사진" style="width:100%;" /></li>
					</c:forEach>
					</ul>
             </td>
           </tr>

           <tr>
             <th>주인장 소개글 <br> (호스트 소개)</th>
             <td>
             <p><br>
               <textarea id="goods_description" rows="20" cols="110" maxlength="1000" '
              				placeholder="사장님의 특이 경력 혹은 사장님만의 재밌는 이야기가 있으면 게스트들에게 소개해주세요. 게스트는 숙소의 시설과 위치, 서비스는 물론, 사장님이 어떤 분인지도 관심이 있답니다." 
              				disabled>${fn:replace(goods.goods_description, '<br />', '
')}</textarea>
             </p>
             <textarea id="text" name="goods_description" >${goods.goods_description }</textarea>
           </td>
           </tr>

           <tr>
             <br>
             <th>숙소<br>기초 정보</th>
           <td><span>교통 편의 시설</span><br><br>
             <div class="wep">
               <textarea id="goods_baseImpormation" rows="20" cols="110" maxlength="1000" 
			               placeholder="주요 버스터미널이나 기차역 혹은 공항 등에서 숙소까지 찾아가는 방법을 자세히 기재해 주세요." 
			               disabled>${fn:replace(goods.goods_baseImpormation, '<br />', '
')}</textarea>
             </div>
             <textarea id="text2" name="goods_baseImpormation">${goods.goods_baseImpormation }</textarea>
             <div style="width:50%; height:150px; float:left;">
               
               <strong>이용 시간</strong>
               <div class="checkIn">
                  <span>체크인 가능시간</span>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select id="goods_checkIn" name="goods_checkIn" disabled>
                  	<option value="${goods.goods_checkIn }" selected>${goods.goods_checkIn }</option>
                    <option value="13:00">오후 01:00</option>
                    <option value="14:00">오후 02:00</option>
                    <option value="15:00">오후 03:00</option>
                    <option value="16:00">오후 04:00</option>
                    <option value="17:00">오후 05:00</option>
                    <option value="18:00">오후 06:00</option>
                    <option value="19:00">오후 07:00</option>
                    <option value="20:00">오후 08:00</option>
                  </select>
                </div>
                <div class="checkOut">
                  <span>체크아웃 가능시간</span>
                  &nbsp;&nbsp;<select id="goods_checkOut" name="goods_checkOut" disabled>
                  	<option value="${goods.goods_checkOut }" selected>${goods.goods_checkOut }</option>
                    <option value="10:00">오전 10:00</option>
                    <option value="11:00">오전 11:00</option>
                    <option value="12:00">오후 12:00</option>
                    <option value="13:00">오후 01:00</option>
                    <option value="14:00">오후 02:00</option>
                    <option value="15:00">오후 03:00</option>
                    <option value="16:00">오후 04:00</option>
                    <option value="17:00">오후 05:00</option>
                  </select>
                </div>
              </div>
              <c:choose>
	          <c:when test="${goods.goods_type == 'motel'}">
              <div id="goods_motel_time" style="width:100%; margin-bottom:20px;">
               <strong>대실 시간</strong>
               <div class="goods_motel_usetime">
                  <span>대실 사용 시간</span>
                  &nbsp;&nbsp;<select id="goods_motel_usetime" name="goods_motel_usetime" disabled>
                  	<option value="${goods.goods_motel_usetime }" selected>${goods.goods_motel_usetime }시간</option>
                    <option value="1" >1시간</option>
                    <option value="2">2시간</option>
                    <option value="3">3시간</option>
                    <option value="4">4시간</option>
                    <option value="5">5시간</option>
                    <option value="6">6시간</option>
                    <option value="7">7시간</option>
                    <option value="8">8시간</option>
                  </select>
                </div>
                <div class="goods_motel_endtime">
                  <span>대실 마감 시간</span>
                  &nbsp;&nbsp;<select id="goods_motel_endtime" name="goods_motel_endtime" disabled>
                  	<option value="${goods.goods_motel_endtime }" selected>오후 ${goods.goods_motel_endtime }시</option>
                    <option value="5" >오후 05:00</option>
                    <option value="6">오후 06:00</option>
                    <option value="7">오후 07:00</option>
                    <option value="8">오후 08:00</option>
                    <option value="9">오후 09:00</option>
                    <option value="10">오후 10:00</option>
                    <option value="11">오후 11:00</option>
                    <option value="12">오후 12:00</option>
                  </select>
                </div>
              </div>
              </c:when>
              <c:otherwise>
              	<input id="goods_motel_usetime" name="goods_motel_usetime" value='0' style="display:none;">
              	<input id="goods_motel_endtime" name="goods_motel_endtime" value='0' style="display:none;">
              </c:otherwise>
              </c:choose>
               <div style="width:100%; float:left;">
                 <strong>예약 취소 가능 여부</strong><br>
                 <select id="goods_chargeImpormation" name="goods_chargeImpormation" disabled>
                   <option value="${goods.goods_chargeImpormation }" selected>${goods.goods_chargeImpormation }</option>
                   <option value="예약취소 가능"  >예약취소 가능</option>
                   <option value="예약취소 불가능" >예약취소 불가능</option>
                 </select>
                 <br> <br>
               </div>
              <div style="float:left;">
                <strong>숙박가격</strong>
                 <div>
                  <input id="goods_price1" name="goods_price1" type="text" value="${goods.goods_price1 }" disabled/>
                 </div>
                <c:choose>
	                <c:when test="${goods.goods_type == 'motel'}">
						<strong>대실가격</strong>
						<div>
							<input id="goods_price2" name="goods_price2" type="text" value="${goods.goods_price2 }" disabled/>
						</div>
	                </c:when>
	                <c:otherwise>
						<div>
							<input id="goods_price2" name="goods_price2" type="text" value="0" style="visibility:hidden;" disabled/>
						</div>
	                </c:otherwise>
                </c:choose>
              </div>
           </td>
         </tr>
         <tr>
           <th>예약 정산<br>입금 계좌명</th>
           <td>
             <div class="account_bank" style="margin-bottom:30px;">
               <div><strong>계좌은행</strong></div>
               <select id="account_bank" name="account_bank" disabled>
               	 <option value="${goods.account_bank }" selected>${goods.account_bank }</option>
                 <option value="삼성" >삼성</option>
                 <option value="하나SK">하나SK</option>
                 <option value="현대">현대</option>
                 <option value="KB">KB</option>
                 <option value="신한">신한</option>
                 <option value="롯데">롯데</option>
                 <option value="BC">BC</option>
                 <option value="시티">시티</option>
                 <option value="NH농협">NH농협</option>
               </select>
             </div>
             <strong>계좌주 이름</strong>
             <p><input type="text" id="account_name" name="account_name"  placeholder="계좌주 이름" value=${goods.account_name } disabled /></p>
             <strong>계좌 번호</strong>
             <p><input type="text" id="account" name="account"  placeholder="계좌 번호" value='${goods.account }' disabled /></p>     
           </td>
           </tr>
           <div id="tab2">
				<tr>
					<th>
						편의시설<br>
						서비스 안내
					</th>
					<td id="serviceBox">
													<label for="theme90" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme90" name="yolo_themes" onclick='getCheckboxValue()' value="주방">주방</label>
                                                    <label for="theme91" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme91" name="yolo_themes" onclick='getCheckboxValue()' value="세탁기">세탁기</label>
                                                    <label for="theme92" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme92" name="yolo_themes" onclick='getCheckboxValue()' value="건조기">건조기</label>
                                                    <label for="theme93" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme93" name="yolo_themes" onclick='getCheckboxValue()' value="공용PC">공용PC</label>
                                                    <label for="theme94" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme94" name="yolo_themes" onclick='getCheckboxValue()' value="미니바">미니바</label>
                                                    <label for="theme95" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme95" name="yolo_themes" onclick='getCheckboxValue()' value="주차장">주차장</label>
                                                    <label for="theme96" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme96" name="yolo_themes" onclick='getCheckboxValue()' value="와이파이">와이파이</label>
                                                    <label for="theme98" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme98" name="yolo_themes" onclick='getCheckboxValue()' value="욕실용품">욕실용품</label>
                                                    <label for="theme99" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme99" name="yolo_themes" onclick='getCheckboxValue()' value="에어컨">에어컨</label>
                                                    <label for="theme100" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme100" name="yolo_themes" onclick='getCheckboxValue()' value="냉장고">냉장고</label>
                                                    <label for="theme101" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme101" name="yolo_themes" onclick='getCheckboxValue()' value="객실샤워실">객실샤워실</label>
                                                    <label for="theme102" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme102" name="yolo_themes" onclick='getCheckboxValue()' value="욕조">욕조</label>
                                                    <label for="theme103" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme103" name="yolo_themes" onclick='getCheckboxValue()' value="드라이기">드라이기</label>
                                                    <label for="theme104" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme104" name="yolo_themes" onclick='getCheckboxValue()' value="다리미">다리미</label>
                                                    <label for="theme105" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme105" name="yolo_themes" onclick='getCheckboxValue()' value="조식포함">조식포함</label>
                                                    <label for="theme106" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme106" name="yolo_themes" onclick='getCheckboxValue()' value="금연">금연</label>
                                                    <label for="theme107" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme107" name="yolo_themes" onclick='getCheckboxValue()' value="반려견동반">반려견동반</label>
                                                    <label for="theme127" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme127" name="yolo_themes" onclick='getCheckboxValue()' value="짐보관가능">짐보관가능</label>
                                                    <label for="theme128" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme128" name="yolo_themes" onclick='getCheckboxValue()' value="공용PC">공용PC</label>
                                                    <label for="theme130" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme130" name="yolo_themes" onclick='getCheckboxValue()' value="개인사물함">개인사물함</label>
                                                    <label for="theme163" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme163" name="yolo_themes" onclick='getCheckboxValue()' value="프린터사용">프린터사용</label>
                                                    <label for="theme165" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme165" name="yolo_themes" onclick='getCheckboxValue()' value="무료주차">무료주차</label>
                                                    <label for="theme166" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme166" name="yolo_themes" onclick='getCheckboxValue()' value="BBQ">BBQ</label>
                                                    <label for="theme167" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme167" name="yolo_themes" onclick='getCheckboxValue()' value="라운지">라운지</label>
                                                    <label for="theme169" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme169" name="yolo_themes" onclick='getCheckboxValue()' value="카페">카페</label>
                                                    <label for="theme170" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme170" name="yolo_themes" onclick='getCheckboxValue()' value="전자레인지">전자레인지</label>
                                                    <label for="theme171" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme171" name="yolo_themes" onclick='getCheckboxValue()' value="취사가능">취사가능</label>
                                                    <label for="theme172" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme172" name="yolo_themes" onclick='getCheckboxValue()' value="개인콘센트">개인콘센트</label>
                                                    <label for="theme173" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme173" name="yolo_themes" onclick='getCheckboxValue()' value="카드결제">카드결제</label>
                                                    <label for="theme295" class="checkbox-inline icon-label">
                        <input type="checkbox" id="theme295" name="yolo_themes" onclick='getCheckboxValue()' value="TV">TV</label>
                        <textarea style="visibility:hidden; height:0px;" id='yolo_theme' name="yolo_theme" >${goods.yolo_theme}</textarea>       
					</td>
				</tr>
			</div>
       </tbody>
      </table>
	  <div id="tr_btn_modify" align="center" style="margin: 0 auto; margin-top:30px; text-align: center;">
		<div>
			<input type=button value="수정반영하기"   onClick="fn_modify_goods(frmGoods)" style="width:150px; cursor:pointer;">
			<input type=button value="취소"  onClick="backToList(frmGoods)" style="width:150px; cursor:pointer;">
		</div>   
	  </div>
      <div id="tr_btn" style="margin: 0 auto; margin-top:30px; text-align: center; display:block;">
      	<c:if test="${member.uid == goods.uid }">
	      <input type=button value="수정하기" onClick="fn_enable(this.form)" style="width:150px; cursor:pointer;">
	      <form id="FILE_FORM" method="post" enctype="multipart/form-data" style="width:1024px; min-width:1024px; margin:0 auto;" >
				<h4>상품이미지</h4>
				<table>
					<tr>
					<c:forEach var="item" items="${goodsMap.imageList}"  varStatus="itemNum">
						<tr  id="${itemNum.count}">
									<td>상세 이미지${itemNum.count }</td>
									<td>
										<input type="file" name="goods"  id="goods"   onchange="readURL(this,'preview${itemNum.count}');" />
										<%-- <input type="text" id="goods_uimg${itemNum.count }"  value="${item.fileName }" disabled  /> --%>
										<input type="text"  name="goods_uimg" value="${item.goods_uimg }"  />
										<input type="text"  name="fileType" value="${item.fileType }"  />
										<br>
									</td>
									<td>
										<img  id="preview${itemNum.count }"   width=100 height=100 src="${contextPath}/goods_download.do?goods_id=${item.goods_id}&fileName=${item.fileName}">
									</td>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;
									</td>
									<td>
										<input  type="button" value="수정"  onClick="modifyImageFile('${item.fileType}','${item.goods_id}','${item.goods_uimg}','${item.fileType}')"/>
										<input  type="button" value="삭제"  onClick="deleteImageFile('${item.goods_id}','${item.goods_uimg}','${item.fileName}','${itemNum.count}')"/>
									</td> 
								</tr>		
					</c:forEach>
					<tr align="center">
						<td colspan="3">
							<div id="d_file">
								<%-- <img  id="preview${itemNum.count }"   width=200 height=200 src="${contextPath}/goods_download.do?goods_id=${item.goods_id}&fileName=${item.fileName}" /> --%>
							</div>
						</td>
					</tr>
					<tr>
						<td align=center colspan=2> 
						<input   type="button" value="이미지파일추가하기"  onClick="fn_addFile()"  />
						</td>
						
					</tr> 
				</table>
			</form>
	    </c:if>
        <input  type="button" value="돌아가기"  onclick="location.href='${contextPath}/business/goods/listGoods.do' " style="width:150px; cursor:pointer;">
      </div>
		
	</form>
	
	

	</section>
</body>