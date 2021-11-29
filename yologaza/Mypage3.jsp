<%-- 송상우 100% --%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"    
    %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">

<html>
<head>
<style>
a{text-decoration:none}
ul,ol,li{list-style:none}

html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, abbr, address, cite, code, del, dfn, em, img, ins, kbd, q, samp, small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    box-sizing: border-box;
}

ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

.sub_wrap .align_rt {
    float: right;
    width: 680px;
    margin-right: 80px;
  margin-top:10px;
  margin-bottom:100px;
  height:600px;
}

.sub_wrap nav {
    display: block;
    float: left;
    width: 238px;
    padding-left: 31px;
  padding-top:32px;
}

.sub_top_wrap{
  height: 211px;
  background:rgb(112,173,71);
}

.sub_top{
  width:1024px;
  height:211px;
  margin:0 auto;
  border-radius:0;
  padding-top:110px;
}

.sub_top h1{
  display:block;
  margin-left:40px;
  color:#fff;
}

.sub_wrap{
  width: 1024px;
  margin:0 auto 0 auto;
  padding_top:54px;
  padding_bottom:54px;
}

.show_list li .list_que span {
    font-size: 16px;
    color: black;
}

.tab_each {
    clear: both;
    display:block;
  padding-top:8px;
}

.sub_top{
  margin:0 auto;
}

.sub_wrap nav ul li a{
  display:block;
  font-size:20px;
  color:black;
}

.sub_wrap nav ul li a.active{
  font-size:20px;
  color:rgb(112,173,71);
  font-weight:bold;
}

.wrap.show{
    opacity: 1;
    visibility: visible;
}

.sub_wrap nav ul li {
    margin-bottom: 26px;
}

.tab .tab_btn ul li{
  display:inline-block;
}
.tab .tab_btn ul li a{
  color:black;
  font-size:20px;
  font-weight:500;
}

.tab .tab_btn ul input{
  position:absolute;
  right:0px;
  border:0px;
  background:#fff;
  color:rgb(112,173,71);
  font-size:18px;
}

.tab .tab_btn ul{
  position:relative;
  margin-top:30px;
}

.tab_each{
  height:500px;
}

.tab_each .reservation img{
  width:45%;
  height:220px;
  border:1px solid rgba(0,0,0,0.2);
  display:inline-block;
}

.tab_each .reservation .descript{
  width:54%;
  height:220px;
  border:1px solid rgba(0,0,0,0.2);
  display:inline-block;
  position:relative;
  right:6px;
  padding:10px 10px 10px 15px;
  vertical-align:top;
}

.tab_each .reservation .descript a1{
  font-size:24px;
}

.tab_each .reservation .descript input{
  float:right;
  zoom:1.5;
  cursor:pointer;
}

.tab_each .reservation .descript a2{
  display:block;
}

.tab_each .reservation .descript a3{
  display:inline-block;
  margin-top:15px;
}

.tab_each .reservation .descript a4{
  padding-left:15px;
}

.tab_each .reservation .descript .detail{
  display:block;
  width:330px;
  height:30px;
  margin-top:30px;
}

.tab_each .phonenumber{
  display:none;
  width:200px;
  height:30px;
  zoom:1;
  position:absolute;
  border : 1px solid rgba(0,0,0,0.2);
  border-radius : 4px;
  box-shadow: 0px 0px 1px 1px rgba(190, 190, 190, 0.6);
  text-align:center;
  z-index:1;
  margin-left:300px;
}

.tab_each .reservation .descript .detail .cancel{
  display:block;
  float:right;
  height:30px;
  font-size:16px;
  border:2px solid rgba(0,0,0,0.2);
  border-radius:6px;
  cursor:pointer;
}

.tab_each .reservation .descript .detail .used{
  display:block;
  float:right;
  height:30px;
  font-size:16px;
  border:0;
  background:#fff;
}

.tab_each .reservation .descript .button{
  position:absolute;
  bottom:0;
  width:330px;
}

.tab_each .reservation .descript .button button{
  width:45px;
  height:45px;
  border:0;
  border-radius:6px;
  margin-left:10px;
  margin-bottom:10px;
  cursor:pointer;
  position:relative;
}

.tab_each .reservation .descript .button button i{
  zoom:2;
}

.tab_each .reservation .descript .button .price{
  zoom:1;
  width:130px;
  float:right;
  position:relative;
  margin-top:15px;
  border:0;
  font-size:18px;
  color:red;
  text-align:right;
}

.map{
  display:none;
  width:300px;
  height:300px;
  background:red;
  position:absolute;
  margin-left:200px;
  z-index:10;
}
</style>
<script type="text/javascript">
$(function() {
  $('.phoneicon').click(function(){
    var idx = $(".phoneicon").index(this)
    if($('.phonenumber').eq(idx).css('display')=='none'){
           $('.phonenumber').eq(idx).show();
  }
    else{
      $('.phonenumber').eq(idx).hide();
    }
});
  $('.mapicon').click(function(){
    var idx = $(".mapicon").index(this)
    if($('.map').eq(idx).css('display')=='none'){
           $('.map').eq(idx).show();
  }
    else{
      $('.map').eq(idx).hide();
    }
});
});


</script>
</head>
<body class="pc">
    <div class="wrap show">
      <div class="sub_top_wrap">
        <div class="sub_top">
          <h1>MY페이지</h1>
        </div>
      </div>
      <div id="content" class="sub_wrap">
        <nav>
          <ul>
            <li>
              <a href="#">회원정보 수정</a>
            </li>
            <li>
              <a href="#">쿠폰/포인트</a>
            </li>
            <li>
              <a href="#" class="active">예약 내역</a>
            </li>
            <li>
              <a href="#">내 리뷰 관리</a>
            </li>
          </ul>
        </nav>
        <div class="align_rt">
          <div class="notice">
            <!-- Tab -->
            <div class="tab">
              <div class="tab_btn">
                <ul>
                  <li><a href="#">예약 내역</a></li>
                  <input type="submit" value="선택 삭제">
                </ul>
              </div>
            </div>
            <div class="tab_each">
              <div class="reservation">
                <img src="https://image.goodchoice.kr/resize_490x348/adimg_new/69041/19415/76471771556d9ece792699bf7c21c31c.jpg">
                <div class="descript">
                  <a1>숙소명</a1>
                  <input type="checkbox">
                  <a2>선택한 방 종류</a2>
                  <a3>체크인</a3>~<a3>체크아웃</a3>
                  <div class="detail">
                    <button class="cancel">예약 취소</button>
                  </div>
                  <div class="button">
                    <button class="mapicon"><i class="fas fa-map-marker-alt"></i></button>
                    <button class="phoneicon"><i class="fas fa-phone-alt"></i></button>
                    <a4>결제가</a4>
                    <input type="text" class="price" value="#원" readonly>
                  </div>
                </div>
                <div class="map">
                </div>
              </div>
              <input class="phonenumber" type="text" value="#" readonly>
              <div class="reservation">
                <img src="https://image.goodchoice.kr/resize_490x348/adimg_new/68065/381552/536f3a7ee6b4bba14b3c710645062570.jpg">
                <div class="descript">
                  <a1>숙소명</a1>
                  <input type="checkbox">
                  <a2>선택한 방 종류</a2>
                  <a3>체크인</a3>~<a3>체크아웃</a3>
                  <div class="detail">
                    <button class="used">이용 완료</button>
                  </div>
                  <div class="button">
                    <button class="mapicon"><i class="fas fa-map-marker-alt"></i></button>
                    <button class="phoneicon"><i class="fas fa-phone-alt"></i></button>
                    <a4>결제가</a4>
                    <input type="text" class="price" value="#원" readonly>
                  </div>
                </div>
                <div class="map">
                </div>
              </div>
              <input class="phonenumber" type="text" value="#" readonly>
            </div>
          </div>
        </div>
      </div>
    </div>
</body>
</html>