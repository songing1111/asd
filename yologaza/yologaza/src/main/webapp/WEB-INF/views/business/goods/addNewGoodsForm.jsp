<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />	
<!DOCTYPE html>
<meta charset="utf-8">
<head>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
  var cnt=0;
  function fn_addFile(){
	  if(cnt == 0){
		  $("#d_file").append("<br>"+"<input  type='file' name='goods' id='f_goods' />");	  
	  }else{
		  $("#d_file").append("<br>"+"<input  type='file' name='goods"+cnt+"' />");
	  }
  	
  	cnt++;
  }
  
  
  function fn_add_new_goods(obj){
		 fileName = $('#f_goods').val();
		 if(fileName != null && fileName != undefined){
			 obj.submit();
		 }else{
			 alert("메인 이미지는 반드시 첨부해야 합니다.");
			 return;
		 }
		 
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
</script>
<style>
	.sub_top_wrap{
	  height: 150px;
	  background:rgb(52, 152, 219);
	}
	.sub_top{
	  position:relative;
	  width:1024px;
	  height:150px;
	  margin:0 auto;
	  border-radius:0;
	  text-align:left;
	}
	
	.sub_top a{
		position: absolute;
	    color: #ddd;
	    font-weight: 500;
	    font-size: 32px;
	    bottom:20px;
	    text-align: center;
	}
	.sub_top a{
		color:#ddd;
	}
	.sub_top a:nth-child(1){
		color:white;
	}
	.sub_top a:nth-child(1) i{
		color:white;
	}
	.sub_top a:nth-child(2){
		left:333px;
	}
	.sub_top a:nth-child(3){
		right:333px;
	}
	.sub_top a:nth-child(4){
		right:0;
	}
	.sub_top a div{
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
		font-size:12px;
		display:inline-block;
		width:110px;
		line-height:25px;
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
</style>
    
</head>
<body>
<section>
	  <div class="sub_top_wrap">
        <div class="sub_top">
          <a href="${contextPath}/business/goods/addNewGoodsForm.do"><i class="fas fa-house-user"></i> <div>숙박등록</div></a>
          <a href="#"><i class="fas fa-concierge-bell"></i> <div>서비스등록</div></a>
          <a href="#"><i class="fas fa-calendar-alt"></i> <div>이용약관등록</div></a>
          <a href="#"><i class="fas fa-hotel"></i> <div>객실등록</div></a>
        </div>
      </div>
      <form action="${contextPath}/business/goods/addNewGoods.do" method="post"  enctype="multipart/form-data" style="width:1024px; min-width:1024px; margin:0 auto;">
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
                 <select name="goods_type" style="width:150px; height:40px; margin-top:10px; margin-bottom: 20px; color:#555">
                   <option value="motel"  >모텔</option>
                   <option value="hotel" >호텔</option>
                   <option value="pension" >펜션</option>
                   <option value="resort" >리조트</option>
                   <option value="guestHouse" >게스트하우스</option>
                   <option value="camping" >캠핑/글램핑</option>
                   <option value="hanok" >한옥</option>
                 </select>
                   <br><strong>업체명</strong>
                   <p><input type="text" name="goods_name"  placeholder="업체명을 입력하세요"></p>
                   <strong>숙소 핸드폰 번호</strong>
                   <p><input name="goods_hp" type="text" /></p>
                   <strong>숙소 연락처</strong>
                   <p><select name="goods_tel1" type="text" style="width:20%; height:40px; font-size:16px;" >
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
                     <span style="padding:0px 7px; font-size:18px;">-</span><input name="goods_tel2" type="text" style="width:20%;"/><span style="padding:0px 7px; font-size:18px;">-</span><input name="goods_tel3" type="text" style="width:20%;" /></p>
                   <strong>숙소 이메일</strong>
                   <p><input name="goods_email1" type="text" style="width:27%;"/><span style="padding:0px 7px; font-size:18px;">@</span><input name="goods_email2" type="text" style="width:35%;"/></p>
                      <strong>주소</strong>
                      <div>
                         <input type="text" id="zipcode" name="zipcode" size="10" /> <a href="javascript:execDaumPostcode()" style="color: black; text-decoration: none; cursor:pointer; padding:8px; background:#eee; border-radius:3px; border:1px solid #777; box-sizing:border-box;">우편번호검색</a>
                       <br>
                       
                        지번 주소<br><input type="text" id="roadAddress"  name="roadAddress" size="50"	/><br>
                        도로명 주소<br><input type="text" id="jibunAddress" name="jibunAddress" size="50"	/><br>
                        나머지 주소<br><input type="text" id="namujiAddress"  name="namujiAddress" size="50" />
                   
                         
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
                    <div  align="left"> <input type="button"  value="파일 추가" onClick="fn_addFile()" style="width:auto; cursor:pointer;"/></div>
				            <div>
					            <div id="d_file">
					            </div>
				            </div>
             </td>
           </tr>

           <tr>
             <th>주인장 소개글 <br> (호스트 소개)</th>
             <td>
             <p><br>
               <textarea name="goods_description" rows="20" cols="110" maxlength="1000" placeholder="사장님의 특이 경력 혹은 사장님만의 재밌는 이야기가 있으면 게스트들에게 소개해주세요. 게스트는 숙소의 시설과 위치, 서비스는 물론, 사장님이 어떤 분인지도 관심이 있답니다."></textarea>
             </p><br>
           </td>
           </tr>

           <tr>
             <br>
             <th>숙소<br>기초 정보</th>
           <td><span>교통 편의 시설</span><br><br>
             <div class="wep">
               <textarea id="goods_baseImpormation "name="goods_baseImpormation" rows="20" cols="110" maxlength="1000" placeholder="주요 버스터미널이나 기차역 혹은 공항 등에서 숙소까지 찾아가는 방법을 자세히 기재해 주세요."></textarea>
             </div><br>
             <div style="width:50%; height:150px; float:left;">
               
               <strong>이용 시간</strong>
               <div class="checkIn">
                  <span>체크인 가능시간</span>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="goods_checkIn">
                    <option value="13:00" selected>오후 01:00</option>
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
                  &nbsp;&nbsp;<select name="goods_checkOut">
                    <option value="10:00" selected>오전 10:00</option>
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
               <div style="width:50%; height:150px; float:left;">
                 <strong>예약 취소 가능 여부</strong><br>
                 <select name="goods_chargeImpormation">
                   <option value="예약취소 가능"  >예약취소 가능</option>
                   <option value="예약취소 불가능" >예약취소 불가능</option>
                 </select>
                 <br> <br>
               </div>
              <div>
                <strong>숙박가격</strong>
                 <div>
                  <input name="goods_price1" type="text" />
                 </div>
                <strong>대실가격</strong>
                 <div>
                  <input name="goods_price2" type="text" />
                 </div>
              </div>
           </td>
         </tr>
         <tr>
           <th>예약 정산<br>입금 계좌명</th>
           <td>
             <div class="account_bank" style="margin-bottom:30px;">
               <div><strong>계좌은행</strong></div>
               <select name="account_bank">
                 <option value="삼성" selected>삼성</option>
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
             <p><input type="text" name="account_name"  placeholder="계좌주 이름"></p>
             <strong>계좌 번호</strong>
             <p><input type="text" name="account"  placeholder="계좌 번호"></p>
           </td>
           </tr>
       </tbody>
      </table>
      <div id="button" style="margin: 0 auto; margin-top:30px; text-align: center;">
        <input  type="button" value="저장 후 다음 단계"  onClick="fn_add_new_goods(this.form)" style="width:150px; cursor:pointer;">
      </div>
   </form>
 
 </section>
</body>