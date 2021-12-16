<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록 화면</title>
  <link rel="stylesheet" href="../css/jquery-ui.css">
  <script src="../script/jquery-3.6.0.js"></script>
  <script src="../script/jquery-ui.js"></script>
<script>

$( function() {
    $( "#birthday" ).datepicker({ // jquery 달력
      changeMonth: true,
      changeYear: true
    });
  } );

</script>
</head>

<style>

body{
	margin:0;
}
button{
  height:52px;
  border: solid 1px #dadada;
  background-color: #6b68e6;
  padding: 0;
  margin: 0;
  color: #ffffff
}
p {
  margin-bottom: 0px !important;
  word-break: keep-all;
}

/* width 460px로 고정 시키는 class */
.width460{
  width:460px;
}

/* input 애들 460px로 고정 시키는 class */
.input460{
  width: 460px;
  height: 50px;
  border: solid 1px #dadada;
  padding: 0;
  font-size:16px;
}

/* display를 flex인데 content가 나오는 방향을 오른쪽으로 나오게 */
.FR {
  display: flex;
  flex-direction: row;
}
/* display를 flex인데 content가 나오는 방향을 아래로 나오게 */
.FC {
  display: flex;
  flex-direction: column;
}

/* display flex에서 row 일때 중앙정렬, column일때 가운데정렬 */
.AC {
  align-items: center;
}

/* display flex에서 row 일때 가운데정렬, column일때 중앙정렬 */
.JC {
  justify-content: center;
}

/* display flex에서 간격 동일하게 배치 */
.JSB {
  justify-content: space-between;
}

/* placeholder 클릭시 배경색으로 변하게 */
input:focus::placeholder {
  color: transparent;
}

::placeholder { 
  color: #000000;
  opacity: 0.38; /* opacity : 투명도 조절 */
  font-size:16px;
}

</style>

<script>

</script>

<body>

<form name="frm" method="post" action="memberWriteSave.jsp">
  
    <div class="FC AC" style="background-color: #e2e2e2;">
      <h2 class="width460" style="text-align:center">회원가입</h2>

      <p class="width460">이메일</p>
      <div class="FR width460">
        <input type="text" name="mb_email" class="input460" placeholder="이메일 E-mail : " autofocus />
        <button style="width:150px; margin-left:10px;">
          중복확인
        </button>
      </div>

      <p class="width460">비밀번호</p>
      <div class="width460">
        <input type="password" name="mb_password" class="input460" placeholder="비밀번호 PassWord : (8자이상 + 특수문자)" autofocus style="font-size:30px;" />
      </div>

      <p class="width460">비밀번호 확인</p>
      <div class="width460">
        <input type="password" class="input460" placeholder="비밀번호 확인 : " autofocus style="font-size:30px;" />
      </div>

      <p class="width460">이름</p>
      <div class="width460">
        <input type="text" name="mb_name" class="input460" placeholder="이름 Name : " autofocus />
      </div>

	  <p class="width460">연락처</p>
      <div class="width460">
        <input type="text" name="mb_phone" class="input460" placeholder="연락처 Phone : (-자 생략)" autofocus />
      </div>

      <p class="width460">생년월일</p>
      <div class="width460">
        <input type="text" name="mb_birth" class="input460" id="birthday" placeholder="생년월일(달력) : yyyy-mm-dd" autofocus />
      </div>

      <p class="width460">우편번호</p>
      <div class="FR width460">
        <input type="text" name="mb_zipcode" class="input460" placeholder="우편번호 : " autofocus />
        <button style="width:150px; margin-left:10px;">
          우편 번호 찾기
        </button>
      </div>

      <p class="width460">주소</p>
      <div class="width460">
        <input type="text" name="mb_address" class="input460" placeholder="주소 : " autofocus />
      </div>

      <p class="width460">상세주소</p>
      <div class="width460" style="margin-bottom:20px;">
        <input type="text" name="mb_detailaddress" class="input460" placeholder="상세주소 : " autofocus />
      </div>

      <div class="FR JSB width460" style="margin-bottom:40px;">
        <button style="width:50%; margin-right:10px;">
          가입완료
        </button>
        <button style="width:50%; margin-left:10px;">
          가입취소
        </button>
      </div>

    </div>
</form>

</body>
</html>