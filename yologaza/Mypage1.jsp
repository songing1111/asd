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
    border-bottom: 1px solid black;
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

.withdrawal {
  color:black;
  position:relative;
  top:10px;
}

.tab_each ul li div span{
  font-size:16px;
  width:130px;
  display:inline-block;
}

.tab_each ul li div input{
  width:150px;
  font-size:16px;
  border:0px;
}

.tab_each ul li .modify{
  width:130px;
  height:32px;
  margin-top:20px;
  border : 1px solid rgba(0,0,0,0.2);
  border-radius : 4px;
  background-color: #fff;
  font-weight: 400;
  padding : 4px;
  color:black;
  text-align: center;
  font-size : 16px;
  position : relative;
  box-shadow: 0px 0px 1px 1px rgba(190, 190, 190, 0.6);
  cursor:pointer;
}

.tab_each ul li a{
  position:relative;
  top:10px;
}

</style>
<script type="text/javascript">
$(function() {
  $('.modify').val('수정')
  $('.modify').click( function() {
  var idx = $(".modify").index(this)
    if( $(this).val() == '수정' ) {
      $(this).replaceWith('<input type="submit" class="modify" value="변경"></input>');
      $('.mod').eq(idx).attr("readonly", false);
      $('.mod').eq(idx).css({'border':'1px solid rgba(0,0,0,0.2)','border-radius':'4px;', 'width':'150px', 'box-shadow': '0px 0px 1px 1px rgba(190, 190, 190, 0.6)','height':'28px','border-radius':'4px'});
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
              <a href="#" class="active">회원정보 수정</a>
            </li>
            <li>
              <a href="#">쿠폰/포인트</a>
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
                  <li><a href="#">회원정보 수정</a></li>
                </ul>
              </div>
            </div>
            <div class="tab_each">
              <ul>
                <li>
                  <div>
                    <span>닉네임</span>
                    <input type="text" class="mod" value="#" readonly>
                  </div>
                </li>
                <li>
                  <input type="button" class="modify">
                  </input>
                </li>
              </ul>
              <ul>
                <li>
                  <div>
                    <span>예약자 성함</span>
                    <input type="text" class="mod" value="#" readonly>
                  </div>
                </li>
                <li>
                  <input type="button" class="modify">
                  </input>
                </li>
              </ul>
              <ul>
                <li>
                  <div>
                    <span>휴대폰 번호</span>
                    <input type="text" class="mod" value="#" readonly>
                  </div>
                </li>
                <li>
                  <a>개인정보 보호를 위해 내 정보는 모두 안전하게 암호화됩니다.</a>
                </li>
                <li>
                  <input type="button" class="modify">
                  </input>
                </li>
              </ul>
            </div>
            <a href="#" class="withdrawal">회원 탈퇴</a>
          </div>
        </div>
      </div>
    </div>
</body>
</html>