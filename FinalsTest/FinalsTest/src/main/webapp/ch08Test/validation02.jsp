<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Validation</title></head>
<script type="text/javascript">

   // 연속 찾는 메소드
   function checkPWD(pwd1){
      for(var i = 0; i < pwd1.length - 2; i++){ // 한번에 3문자 비교로 length-2까지만 비교
         var ch1 = pwd1.charCodeAt(i);
         var ch2 = pwd1.charCodeAt(i + 1);
         var ch3 = pwd1.charCodeAt(i + 2);
         if(ch1 + 1 == ch2 && ch2 + 1 == ch3){
            return false;   
         }
      }
      return true;
   }
   function checkLogin(){
      var form = document.loginForm;
      var id = form.id.value;
      var pwd1 = form.pwd1.value;
      var pwd2 = form.pwd2.value;
      
      if(id == ""){
         alert("아이디를 입력하세요.");
         form.id.focus();
         return;
      }
      if(pwd1 == "" || pwd2 == ""){
         alert("비밀번호를 입력하세요.");
         return;
      }
      else if(pwd1 != pwd2){
         alert("비밀번호가 일치하지 않습니다.");
         return;
      }
      else{
         if(!checkPWD(pwd1, pwd2)){
            alert("비밀번호는 연속 3자 이상의 영문 또는 숫자를 포함할 수 없습니다.");
            return;
         }
         else
            alert("정상 로그인");
      }
   }
</script>
<body>
   <form name="loginForm" method="post">
      <p>아이디 : <input type="text" name="id">
      <p>비밀번호 : <input type="text" name="pwd1">
      <p>비밀번호 확인 : <input type="text" name="pwd2">
      <p><input type="button" value="전송" onclick = "checkLogin()">
   </form>
</body>
</html>