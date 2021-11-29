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
    margin-right: 100px;
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

.wrap.show, footer.show {
    opacity: 1;
    visibility: visible;
}

.sub_wrap nav ul li {
    margin-bottom: 26px;
}

.tab .tab_btn ul li{
    display: inline-block;
    float: none;
    position: relative;
    margin-right: 64px;
    font-size: 18px;
    line-height: normal;
    text-align: left;
    cursor: pointer;
    padding-left:5px;
    top:10px;
    color:black;
}

.tab .tab_btn ul li a{
  color:black;
}

.tab_each .point{
  border-bottom:1px solid;
  padding-bottom:40px;
}

.tab_each .coupon{
  padding-top:20px;
}

.tab_each ul li span{
  width:150px;
  display:inline-block;
}

.tab_each ul li input{
  border:0;
  color:rgb(112,173,71);
  font-size:16px;
}

.tab_each .coupon .coupon_name{
  width:660px;
  height:120px;
  background:rgba(0,0,0,0.05);
  margin-top:40px;
  position:relative;
  padding:10px;
}

.coupon_name a1{
  display:block;
  font-size:22px;
}

.coupon_name a2{
  display:block;
  font-size:16px;
}

.coupon_name a3{
  display:block;
  position:absolute;
  bottom:10px;
  right:10px;
}

</style>
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
              <a href="#" class="active">쿠폰/포인트</a>
            </li>
            <li>
              <a href="#">예약 내역</a>
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
                  <li><a href="#">쿠폰/포인트</a></li>
                </ul>
              </div>
            </div>
            <div class="tab_each">
              <ul class="point">
                <li>
                  <span>사용가능 포인트</span>
                  <input type="text" value="#P" readonly>
                </li>
              </ul>
              <ul class="coupon">
                <li>
                  <span>보유 쿠폰</span>
                  <input type="text" value="#장" readonly>
                </li>
                <div class="coupon_name">
                  <a1>쿠폰명</a1>
                  <a2>쿠폰사용기한</a2>
                  <a3>할인가/할인율</a3>
                </div>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
</body>
</html>