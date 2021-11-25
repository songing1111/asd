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
  height:400px;
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
    border-top: 1px solid black;
}

div {
    display: block;
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

.tab .tab_btn ul li.active a{
  color:rgb(112,173,71);
}

.tab .tab_btn ul li a{
  color:black;
}

.tab_each ul li label::before{
  content: "\f078";
  font-family:"Font Awesome 5 Free";
  font-weight: 600;
  display: block;
  color: black;
  float: right;
  cursor:pointer;
}

.tab_each ul li input:checked + label::before{
  content:"\f077"
}

.tab_each ul li label{
    font-size: 19px;
    cursor: pointer;
    border: none;
    outline: none;
    background: none;
    width: 97%;
    text-align: left;
}

.tab_each ul li{
  margin:15px;
}

.tab_each ul li input{
  display:none;
}

.tab_each ul li div{
  display: none;
  color: #666;
  font-size: 0.9375em;
  overflow: hidden;
  padding: 10px 0 10px 30px;
  box-sizing: border-box;
  transition: max-height 0.4s;
}

.tab_each ul li input:checked + label + div{
  display:block;
}

.tab_each ul{
  display:none;
}
.tab_each ul:nth-child(1){
  display:block;
}
</style>
<script type="text/javascript">
	const tabList = document.querySelectorAll('.tab_btn ul li');
const contents = document.querySelectorAll('.tab_each ul')
let activeCont = '';// 현재 활성화 된 컨텐츠

for(var i = 0; i < tabList.length; i++){
    tabList[i].querySelector('.tab_btn ul li a').addEventListener('click', function(e){
      e.preventDefault();
      for(var j = 0; j < tabList.length; j++){
        // 나머지 버튼 클래스 제거
        tabList[j].classList.remove('active');

        // 나머지 컨텐츠 display:none 처리
        contents[j].style.display = 'none';
      }

      // 버튼 관련 이벤트
      this.parentNode.classList.add('active');

      // 버튼 클릭시 컨텐츠 전환
      activeCont = this.getAttribute('href');
      document.querySelector(activeCont).style.display = 'block';
    });
  }
</script>
</head>
<body class="pc">
    <div class="wrap show">
      <div class="sub_top_wrap">
        <div class="sub_top">
          <h1><i class="fas fa-phone-alt fa-lg"></i> 고객센터</h1>
        </div>
      </div>
      <div id="content" class="sub_wrap">
        <nav>
          <ul>
            <li>
              <a href="#">공지사항</a>
            </li>
            <li>
              <a href="#" class="active">자주묻는 질문</a>
            </li>
            <li>
              <a href="#">1:1문의</a>
            </li>
          </ul>
        </nav>
        <div class="align_rt">
          <div class="notice">
            <!-- Tab -->
            <div class="tab">
              <div class="tab_btn">
                <ul>
                  <li class="active"><a href="#tab1">이용문의</a></li>
                  <li><a href="#tab2">예약취소</a></li>
                  <li><a href="#tab3">예약문의</a></li>
                  <li><a href="#tab4">리뷰</a></li>
                  <li><a href="#tab5">결제</a></li>
                </ul>
              </div>
            </div>
            <!-- 공지사항  -->
            <div class="tab_each">
              <ul id="tab1" class="active">
                <li>
                  <input type="checkbox" class="question" id="que-1">
                  <label for="que-1">자주묻는질문 이용문의1</label>
                  <div class="answer" id="ans-1">자주묻는질문 이용문의1 테스트</div>
                </li>
                <li>
                  <input type="checkbox" class="question" id="que-2">
                  <label for="que-2">자주묻는질문 이용문의2</label>
                  <div class="answer" id="ans-1">자주묻는질문 이용문의2 테스트</div>
                </li>
              </ul>
              <ul id="tab2">
                <li>
                  <input type="checkbox" class="question" id="que-3">
                  <label for="que-3">자주묻는질문 예약취소1</label>
                  <div class="answer" id="ans-3">자주묻는질문 예약취소1 테스트</div>
                </li>
                <li>
                  <input type="checkbox" class="question" id="que-4">
                  <label for="que-4">자주묻는질문 예약취소2</label>
                  <div class="answer" id="ans-4">자주묻는질문 예약취소2 테스트</div>
                </li>
              </ul>
              <ul id="tab3">
                <li>
                  <input type="checkbox" class="question" id="que-5">
                  <label for="que-5">자주묻는질문 예약문의1</label>
                  <div class="answer" id="ans-5">자주묻는질문 예약문의1 테스트</div>
                </li>
                <li>
                  <input type="checkbox" class="question" id="que-6">
                  <label for="que-6">자주묻는질문 예약문의2</label>
                  <div class="answer" id="ans-6">자주묻는질문 예약문의2 테스트</div>
                </li>
              </ul>
              <ul id="tab4">
                <li>
                  <input type="checkbox" class="question" id="que-7">
                  <label for="que-7">자주묻는질문 리뷰1</label>
                  <div class="answer" id="ans-7">자주묻는질문 리뷰1 테스트</div>
                </li>
                <li>
                  <input type="checkbox" class="question" id="que-8">
                  <label for="que-8">자주묻는질문 리뷰2</label>
                  <div class="answer" id="ans-8">자주묻는질문 리뷰2 테스트</div>
                </li>
              </ul>
              <ul id="tab5">
                <li>
                  <input type="checkbox" class="question" id="que-9">
                  <label for="que-9">자주묻는질문 결제1</label>
                  <div class="answer" id="ans-9">자주묻는질문 결제1 테스트</div>
                </li>
                <li>
                  <input type="checkbox" class="question" id="que-10">
                  <label for="que-10">자주묻는질문 결제2</label>
                  <div class="answer" id="ans-10">자주묻는질문 결제2 테스트</div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
</body>
</html>