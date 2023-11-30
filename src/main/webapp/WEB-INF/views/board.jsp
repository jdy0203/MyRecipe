<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page session="true"%>
<c:set var="loginId" value="${sessionScope.id}"/>
<c:set var="loginOutLink" value="${loginId=='' ? '/login/login' : '/login/logout'}"/>
<c:set var="loginOut" value="${loginId=='' ? 'Login' : 'ID='+=loginId}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Vegan Title</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="main.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://code.jquery.com/jquery-1.11.3.js"></script>
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      font-family: "Noto Sans KR", sans-serif;
    }

    .container {
      width : 50%;
      margin : auto;
    }

    .writing-header {
      position: relative;
      margin: 20px 0 0 0;
      padding-bottom: 10px;
      border-bottom: 1px solid #323232;
    }

    input {
      width: 100%;
      height: 35px;
      margin: 5px 0px 10px 0px;
      border: 1px solid #e9e8e8;
      padding: 8px;
      background: #f8f8f8;
      outline-color: #e6e6e6;
    }

    textarea {
      width: 100%;
      background: #f8f8f8;
      margin: 5px 0px 10px 0px;
      border: 1px solid #e9e8e8;
      resize: none;
      padding: 8px;
      outline-color: #e6e6e6;
    }

    .frm {
      width:100%;
    }
    .btn {
      background-color: rgb(236, 236, 236); /* Blue background */
      border: none; /* Remove borders */
      color: black; /* White text */
      padding: 6px 12px; /* Some padding */
      font-size: 16px; /* Set a font size */
      cursor: pointer; /* Mouse pointer on hover */
      border-radius: 5px;
    }

    .btn:hover {
      text-decoration: underline;
    }

    * {
      border : 0;
      padding : 0;
    }

    ul {
      border:  1px solid rgb(235,236,239);
      border-bottom : 0;
    }

    /*li {*/
    /*  background-color: #f9f9fa;*/
    /*  list-style-type: none;*/
    /*  border-bottom : 1px solid rgb(235,236,239);*/
    /*  padding : 18px 18px 0 18px;*/
    /*}*/

    .comment-item {
      background-color: #f9f9fa;
      list-style-type: none;
      border-bottom : 1px solid rgb(235,236,239);
      padding : 18px 18px 0 18px;
    }

    #commentList {
      width : 50%;
      margin : auto;
    }

    .comment-content {
      overflow-wrap: break-word;
    }

    .comment-bottom {
      font-size:9pt;
      color : rgb(97,97,97);
      padding: 8px 0 8px 0;
    }

    .comment-bottom > a {
      color : rgb(97,97,97);
      text-decoration: none;
      margin : 0 6px 0 0;
    }

    .comment-area {
      padding : 0 0 0 46px;
    }

    .commenter {
      font-size:12pt;
      font-weight:bold;
    }

    .commenter-writebox {
      padding : 15px 20px 20px 20px;
    }

    .comment-img {
      font-size:36px;
      position: absolute;
    }

    .comment-item {
      position:relative;
    }

    .up_date {
      margin : 0 8px 0 0;
    }

    #comment-writebox {
      width : 50%;
      margin : auto;
      background-color: white;
      border : 1px solid #e5e5e5;
      border-radius: 5px;
    }

    textarea {
      display: block;
      width: 100%;
      min-height: 17px;
      padding: 0 20px;
      border: 0;
      outline: 0;
      font-size: 13px;
      resize: none;
      box-sizing: border-box;
      background: transparent;
      overflow-wrap: break-word;
      overflow-x: hidden;
      overflow-y: auto;
    }

    #comment-writebox-bottom {
      padding : 3px 10px 10px 10px;
      min-height : 35px;
    }

    /*.btn {*/
    /*    font-size:10pt;*/
    /*    color : black;*/
    /*    background-color: #eff0f2;*/
    /*    text-decoration: none;*/
    /*    padding : 9px 10px 9px 10px;*/
    /*    border-radius: 5px;*/
    /*    float : right;*/
    /*}*/

    #btn-write-comment, #btn-write-reply {
      color : #009f47;
      background-color: #e0f8eb;
    }

    #btn-cancel-reply {
      background-color: #eff0f2;
      margin-right : 10px;
    }

    #btn-write-modify {
      color : #009f47;
      background-color: #e0f8eb;
    }

    #btn-cancel-modify {
      margin-right : 10px;
    }

    #reply-writebox {
      display : none;
      background-color: white;
      border : 1px solid #e5e5e5;
      border-radius: 5px;
      margin : 10px;
    }

    #reply-writebox-bottom {
      padding : 3px 10px 10px 10px;
      min-height : 35px;
    }

    #modify-writebox {
      background-color: white;
      border : 1px solid #e5e5e5;
      border-radius: 5px;
      margin : 10px;
    }

    #modify-writebox-bottom {
      padding : 3px 10px 10px 10px;
      min-height : 35px;
    }

    /* The Modal (background) */
    .modal {
      display: none; /* Hidden by default */
      position: fixed; /* Stay in place */
      z-index: 1; /* Sit on top */
      padding-top: 100px; /* Location of the box */
      left: 0;
      top: 0;
      width: 100%; /* Full width */
      height: 100%; /* Full height */
      overflow: auto; /* Enable scroll if needed */
      background-color: rgb(0,0,0); /* Fallback color */
      background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    }

    /* Modal Content */
    .modal-content {
      background-color: #fefefe;
      margin: auto;
      padding: 20px;
      border: 1px solid #888;
      width: 50%;
    }

    /* The Close Button */
    .close {
      color: #aaaaaa;
      float: right;
      font-size: 28px;
      font-weight: bold;
    }

    .close:hover,
    .close:focus {
      color: #000;
      text-decoration: none;
      cursor: pointer;
    }

    .paging {
      color: black;
      width: 100%;
      text-align: center;
    }

    .page {
      color: black;
      text-decoration: none;
      padding: 6px;
      margin-right: 10px;
    }

    .paging-active {
      background-color: rgb(216, 216, 216);
      border-radius: 5px;
      color: rgb(24, 24, 24);
    }

    .paging-container {
      width:100%;
      height: 70px;
      margin-top: 50px;
      margin : auto;
    }
  </style>
</head>
<body>
<!-- 헤더 -->
<jsp:include page="header.jsp"/>
<!-- 헤더 끝-->
<script>
  let msg = "${msg}";
  if(msg=="WRT_ERR") alert("게시물 등록에 실패하였습니다. 다시 시도해 주세요.");
  if(msg=="MOD_ERR") alert("게시물 수정에 실패하였습니다. 다시 시도해 주세요.");
</script>
<%--게시판기능--%>
<div class="container">
  <h2 class="writing-header">게시판 ${mode=="new" ? "글쓰기" : "읽기"}</h2>
  <form id="form" class="frm" action="" method="post">
    <input type="hidden" name="bno" value="${boardDto.bno}">

    <input name="title" type="text" value="<c:out value='${boardDto.title}'/>" placeholder="  제목을 입력해 주세요." ${mode=="new" ? "" : "readonly='readonly'"}><br>
    <textarea name="content" rows="20" placeholder=" 내용을 입력해 주세요." ${mode=="new" ? "" : "readonly='readonly'"}><c:out value="${boardDto.content}"/></textarea><br>


    <c:if test="${mode eq 'new'}">
      <button type="button" id="writeBtn" class="btn btn-write"><i class="fa fa-pencil"></i> 등록</button>
    </c:if>
    <c:if test="${mode ne 'new'}">
      <button type="button" id="writeNewBtn" class="btn btn-write"><i class="fa fa-pencil"></i> 글쓰기</button>
    </c:if>
    <c:if test="${boardDto.writer eq loginId}">
      <button type="button" id="modifyBtn" class="btn btn-modify"><i class="fa fa-edit"></i> 수정</button>
      <button type="button" id="removeBtn" class="btn btn-remove"><i class="fa fa-trash"></i> 삭제</button>
    </c:if>
    <button type="button" id="listBtn" class="btn btn-list"><i class="fa fa-bars"></i> 목록</button>
  </form>
</div>
<%--게시판기능 끝--%>
<%--댓글기능--%>
  <form id="comment-form" class="comment-form" action="" method="post">
  <div id="comment-writebox">
    <div class="commenter commenter-writebox">${id}</div>
    <div id="comment-writebox-content" class="comment-writebox-content">
      <textarea name="" id="write-comment" cols="30" rows="3" placeholder="댓글을 남겨보세요"></textarea>
    </div>
  <div id="comment-writebox-bottom">
    <div class="register-box">
        <a class="btn" id="btn-write-comment">등록</a>
    </div>
  </div>
  </div>
  </form>
<div id="commentList"></div>
<div id="modalWin" class="modal">
  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <p>
    <h2> | 댓글 수정</h2>
    <div id="modify-writebox">
      <div class="commenter commenter-writebox"></div>
      <div class="modify-writebox-content">
        <textarea name="" id="modify-comment-content" cols="30" rows="5" placeholder="댓글을 남겨보세요"></textarea>
      </div>
      <div id="modify-writebox-bottom">
        <div class="register-box">
          <a class="btn" id="btn-write-modify">등록</a>
        </div>
      </div>
    </div>
    </p>
  </div>
</div>
<div class="paging-container">
  <div class="paging">
    <c:if test="${totalCnt==null || totalCnt==0}">
      <div> 댓글이 없습니다. </div>
    </c:if>
    <c:if test="${totalCnt!=null && totalCnt!=0}">
      <c:if test="${ph.showPrev}">
        <a class="page" href="<c:url value="/board/list${ph.sc.getQueryString(ph.beginPage-1)}"/>">&lt;</a>
      </c:if>
      <c:forEach var="i" begin="${ph.beginPage}" end="${ph.endPage}">
        <a class="page ${i==ph.sc.page? "paging-active" : ""}" href="<c:url value="/board/list${ph.sc.getQueryString(i)}"/>">${i}</a>
      </c:forEach>
      <c:if test="${ph.showNext}">
        <a class="page" href="<c:url value="/board/list${ph.sc.getQueryString(ph.endPage+1)}"/>">&gt;</a>
      </c:if>
    </c:if>
  </div>
</div>
<%--댓글기능 끝--%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script>
  $(document).ready(function(){
    let formCheck = function() {
      let form = document.getElementById("form");
      if(form.title.value=="") {
        alert("제목을 입력해 주세요.");
        form.title.focus();
        return false;
      }

      if(form.content.value=="") {
        alert("내용을 입력해 주세요.");
        form.content.focus();
        return false;
      }
      return true;
    }

    $("#writeNewBtn").on("click", function(){
      location.href="<c:url value='/board/write'/>";
    });

    $("#writeBtn").on("click", function(){
      let form = $("#form");
      form.attr("action", "<c:url value='/board/write'/>");
      form.attr("method", "post");

      if(formCheck())
        form.submit();
    });

    $("#modifyBtn").on("click", function(){
      let form = $("#form");
      let isReadonly = $("input[name=title]").attr('readonly');

      // 1. 읽기 상태이면, 수정 상태로 변경
      if(isReadonly=='readonly') {
        $(".writing-header").html("게시판 수정");
        $("input[name=title]").attr('readonly', false);
        $("textarea").attr('readonly', false);
        $("#modifyBtn").html("<i class='fa fa-pencil'></i> 등록");
        return;
      }

      // 2. 수정 상태이면, 수정된 내용을 서버로 전송
      form.attr("action", "<c:url value='/board/modify${searchCondition.queryString}'/>");
      form.attr("method", "post");
      if(formCheck())
        form.submit();
    });

    $("#removeBtn").on("click", function(){
      if(!confirm("정말로 삭제하시겠습니까?")) return;

      let form = $("#form");
      form.attr("action", "<c:url value='/board/remove${searchCondition.queryString}'/>");
      form.attr("method", "post");
      form.submit();
    });

    $("#listBtn").on("click", function(){
      location.href="<c:url value='/board/list${searchCondition.queryString}'/>";
    });
  });
</script>
<script>
  urlSearch = new URLSearchParams(location.search);
  bno = urlSearch.get('bno');

  let addZero = function(value=1){
    return value > 9 ? value : "0"+value;
  }

  let dateToString = function(ms=0) {
    let date = new Date(ms);

    let yyyy = date.getFullYear();
    let mm = addZero(date.getMonth() + 1);
    let dd = addZero(date.getDate());

    let HH = addZero(date.getHours());
    let MM = addZero(date.getMinutes());
    let ss = addZero(date.getSeconds());

    return yyyy+"."+mm+"."+dd+ " " + HH + ":" + MM + ":" + ss;
  }

  let showList = function (bno){
    $.ajax({
      type:'GET',       // 요청 메서드
      url: '/ch2/comments?bno='+bno,  // 요청 URI
      success : function(result){
        let tmp = "<ul>";
        result.forEach(function(comment){
          tmp += '<li class="comment-item" data-cno="' + comment.cno + '" data-pcno="' + comment.pcno + '" data-bno="' + comment.bno + '">';
          tmp += '<span class="comment-img">';
          tmp += '<i class="fa fa-user-circle" aria-hidden="true"></i>';
          tmp += '</span>';
          tmp += '<div class="comment-area">';
          tmp += '<div class="commenter">' + comment.commenter + '</div>';
          tmp += '<div class="comment-content">' + comment.comment + '</div>';
          tmp += '<div class="comment-bottom">';
          tmp += '<span class="up_date">' + dateToString(comment.up_date) + '</span>';
          tmp += '<a class="btn-write"  data-cno="16" data-bno="880" data-pcno="">답글쓰기</a>';
          tmp += '<a class="btn-modify" data-cno="' + comment.cno + '" data-bno="' + comment.bno + '" data-pcno="">수정</a>';
          tmp += '<a class="btn-delete" data-cno="' + comment.cno + '" data-bno="' + comment.bno + '" data-pcno="">삭제</a>';
          tmp += '</div>';
          tmp += '</div>';
          tmp += '</li>';
        })
        tmp += "</ul>";
        $("#commentList").html(tmp);
      },
      error   : function(){ alert("error") } // 에러가 발생했을 때, 호출될 함수
    }); // $.ajax()
  }

  $(document).ready(function() {

    showList(bno);

    $("#btn-write-comment").click(function (){

      let comment = $("#write-comment").val();

      $.ajax({
        type:'POST',       // 요청 메서드
        url: '/ch2/comments?bno='+bno,  // 요청 URI
        headers: {"content-type": "application/json"}, //요청헤더
        data: JSON.stringify({bno:bno, comment:comment}),
        success : function(result){
          alert(result);
          showList(bno);
          $("#write-comment").val('');
        },
        error   : function(){ alert("error") } // 에러가 발생했을 때, 호출될 함수
      }); // $.ajax()
    });


    $("#commentList").on("click", ".btn-modify", function (e) {
      let target = e.target;
      let cno = target.getAttribute("data-cno");
      let li = $("li[data-cno="+cno+"]");
      let commenter = $(".commenter", li).first().text();
      let comment = $(".comment-content", li).first().text();

      $("#modalWin textarea").empty();
      // 1. commet의 내용을 댓글 수정창에 뿌려주기
      $("#modalWin .commenter").text(commenter);
      $("#modalWin textarea").val(comment);
      // 2. cno 전달하기
      $("#btn-write-modify").attr("data-cno", cno);
      // 팝업창을 열고 내용을 보여준다.
      $("#modalWin").css("display","block");
    });

    $("#btn-write-modify").click(function(){
      let cno = $(this).attr("data-cno");
      let comment = $("#modalWin textarea").val();
      // 1. 변경된 내용을 서버로 전송
      $.ajax({
        type:'PATCH',       // 요청 메서드
        url: '/ch2/comments/'+cno,  // 요청 URI
        headers: {"content-type": "application/json"}, //요청헤더
        data: JSON.stringify({cno:cno, comment:comment}),
        success : function(result){
          showList(bno);
          alert(result);
        },
        error   : function(){ alert("error") } // 에러가 발생했을 때, 호출될 함수
      }); // $.ajax()

      // 2. 모달 창을 닫는다.
      $(".close").trigger("click");
    });

    $(".close").click(function(){
      $("#modalWin").css("display","none");
    });

    $("#commentList").on("click", ".btn-delete", function () {
      let cno = $(this).attr("data-cno");
      $.ajax({
        type:'DELETE',       // 요청 메서드
        url: '/ch2/comments/'+cno+'?bno='+bno,  // 요청 URI
        success : function(result){
          alert(result);
          showList(bno);
        },
        error   : function(){ alert("error") } // 에러가 발생했을 때, 호출될 함수
      }); // $.ajax()
    });
  });
</script>
</body>
</html>