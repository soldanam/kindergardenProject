<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html lang="en">

<head>

<!-- alert 옆에 뜨는 거 넣기 -->
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/alertify.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/alertify.min.css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/default.min.css"/>

    <meta charset="UTF-8">
    <title>login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	
    <link rel="stylesheet" href="/resources/src/font/iconsmind-s/css/iconsminds.css" />
    <link rel="stylesheet" href="/resources/src/font/simple-line-icons/css/simple-line-icons.css" />

    <link rel="stylesheet" href="/resources/src/css/vendor/bootstrap.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/bootstrap.rtl.only.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/bootstrap-float-label.min.css" />
    <link rel="stylesheet" href="/resources/src/css/main.css" />
</head>

<body class="background show-spinner no-footer">
    
    <main>
        <div class="container">
            <div class="row h-100">
                <div class="col-12 col-md-10 mx-auto my-auto">
                    <div class="card auth-card">
                      
                        <div class="form-side">
                            <a href="/">
                               <img src="/resources/src/img/log-new.JPG"/>
                                
                            </a>
                            <hr>
                           
                            <form>
                                <label class="form-group has-float-label mb-4">
                                    <input class="form-control" id = "userEmail" />
                                    <span>E-mail</span>
                                </label>

                                <label class="form-group has-float-label mb-4">
                                    <input class="form-control" id = "userPassword" type="password" placeholder="" />
                                    <span>Password</span>
                                </label>
                                <div class="d-flex justify-content-between align-items-center">
                                    <a href="#">Forget password?</a>
                                    
                                </div>
                            </form>
                            <button class="btn btn-primary btn-lg btn-shadow" id="btn_login">Sign in</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <script src="/resources/src/js/vendor/jquery-3.3.1.min.js"></script>
    <script src="/resources/src/js/vendor/bootstrap.bundle.min.js"></script>
    <script src="/resources/src/js/dore.script.js"></script>
    <script src="/resources/src/js/scripts.js"></script>
    
    <script>
    $(document).ready(function() {
        
        $("#btn_login").click(function(){
           
           if( validate() ){
              login();
           }
        });

    
  });
  
    function validate(){
    	var isUserEmailValid = false;
    	var isUserPasswordValid=false;
    	
		var patternEmail = new RegExp(/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i);
		
		var patternEngAtListOne = new RegExp(/[a-zA-Z]+/);// + for at least one
	    var patternSpeAtListOne = new RegExp(/[~!@#$%^&*()_+|<>?:{}]+/);// + for at least one
	    var patternNumAtListOne = new RegExp(/[0-9]+/);// + for at least one
	    
	    
    	//userEmail
        var userEmailValue = $("#userEmail").val();
        var userEmailLength = userEmailValue.length;
        
        if( patternEmail.test( userEmailValue ) ){
           isUserEmailValid = true;
        }
        
        if( isUserEmailValid ){
           $("#userEmail").removeClass("is-invalid");
        }else{
           $("#userEmail").addClass("is-invalid");
        }
        
        
      //password
        
        var userPasswordValue = $("#userPassword").val();
        var userPasswordLength = userPasswordValue.length;
        if( patternEngAtListOne.test( userPasswordValue ) 
                && patternSpeAtListOne.test( userPasswordValue )  
                && patternNumAtListOne.test( userPasswordValue )){
             isUserPasswordValid = true;
          }else if( userPasswordLength >= 10 ){
             isUserPasswordValid = true;
          }
        if( isUserPasswordValid ){
            $("#userPassword").removeClass("is-invalid");
         }else{
            $("#userPassword").addClass("is-invalid");
         }
        
        if(   isUserEmailValid && isUserPasswordValid ){
            return true;
         }else{
            return false;
         }

    }
    function login(){
        $.ajax(
        {
             type : 'post',
             url : '/login',
             dataType : 'json',
             data : 
           {
              userEmail: $("#userEmail").val(),
              userPassword: $("#userPassword").val(),
           },
             beforeSend : function(xhr){
                 //xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
                 xhr.setRequestHeader("AJAX", true);
             },
             success : function(data, status, xhr) { // alertify or another welcome page 이동
                console.log(data);
                console.log(status);
                
                if( data ){
                   window.location.href="/main";
                   
                }else{
                   alertify.notify(
                       'Opps!! 이메일 또는 비밀번호가 올바르지 않습니다.', 
                       'error', //'error','warning','message'
                       3
                    );
                }
             }, 
             error: function(jqXHR, textStatus, errorThrown) 
             { 
                console.log(jqXHR);
                console.log(textStatus);
                console.log(errorThrown);
                alertify.notify(
                   'Opps!! 로그인 과정에 문제가 생겼습니다.', 
                   'error', //'error','warning','message'
                   3, //-1
                   function(){
                      console.log(jqXHR.responseText); 
                   }
                );
             }
         });
     }

    </script>
</body>

</html>