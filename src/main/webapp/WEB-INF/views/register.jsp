<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html lang="en">

<head>
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/alertify.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/alertify.min.css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/default.min.css"/>
    <meta charset="UTF-8">
    <title>Register</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	
    <link rel="stylesheet" href="/resources/src/font/iconsmind-s/css/iconsminds.css" />
    <link rel="stylesheet" href="/resources/src/font/simple-line-icons/css/simple-line-icons.css" />

    <link rel="stylesheet" href="/resources/src/css/vendor/bootstrap.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/bootstrap.rtl.only.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/bootstrap-float-label.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/component-custom-switch.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/glide.core.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/perfect-scrollbar.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/baguetteBox.min.css" />
    <link rel="stylesheet" href="/resources/src/css/main.css" />
</head>

<body class="background show-spinner no-footer">
	  <div class="fixed-background"></div>
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
                                    <input class="form-control" type ="email" id="userEmail" name="userEmail" />
                                    <span>E-mail</span>
                                      <div class="invalid-feedback">이메일 주소를 올바르게 입력하세요.</div>
                                    
                                </label>
                                <label class="form-group has-float-label mb-4">
                                    <input class="form-control" id="userPassword" name="userPassword"  type="password" placeholder="" />
                                    <span>Password</span>
                                    <div class="invalid-feedback">10자리이상의 영문, 숫자, 특수문자 포함하도록 입력하세요</div>
                                </label>
                                <label class="form-group has-float-label mb-4">
                                    <input class="form-control" type ="text"  id="userName" name="name" />
                                    <span>Name</span>
                                    <div class="invalid-feedback">이름을 입력하세요.</div>
                                </label>
                                <hr>
								<!-- 파일 추가  start -->
								<div class="col-xl-12 form-group">


									<div class="form-check form-check-flat form-check-primary">
										<div class="checkbox-custom checkbox-primary">
											<input type="checkbox" id="chkFileUploadInsert"> <label
												for="chkFileUploadInsert">사진 추가</label>
										</div>
									</div>
									<div class="col-xl-12 form-group" style="display: none;"
										id="imgFileUploadInsertWrapper">
										<input type="file" id="inputFileUploadInsert">
										<div class="thumbnail-wrapper">
											<img id="imgFileUploadInsert">
										</div>
									</div>
								</div>
								<!-- 파일 추가   end-->
                                
                            </form>
                            
                            <div class="d-flex justify-content-end align-items-center">
                                    <button id="btn_register" class="btn btn-primary btn-lg btn-shadow"  >REGISTER</button>
                            </div>
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
           
           $("#btn_register").click(function(){
              
              if( validate() ){
                 sendReqeust();
              }
           });
			
         //파일 업로드 11.19
       	  $("#chkFileUploadInsert").change(function(){
       	         if( $(this).prop("checked")){
       	            $("#imgFileUploadInsertWrapper").show();
       	         }else{
       	            $("#inputFileUploadInsert").val("");
       	            $("#imgFileUploadInsert").attr("src", "");
       	            $("#imgFileUploadInsertWrapper").hide();
       	         }
       	   });
       
     });
     

    
    function validate(){
    	var isUserPasswordValid=false;
		var isUserNameValid =false;
		var isUserEmailValid = false;
		
		
		var patternEng = new RegExp(/[a-zA-Z]/);   // all english
		var patternEmail = new RegExp(/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i);
		
		var patternEngAtListOne = new RegExp(/[a-zA-Z]+/);// + for at least one
	    var patternSpeAtListOne = new RegExp(/[~!@#$%^&*()_+|<>?:{}]+/);// + for at least one
	    var patternNumAtListOne = new RegExp(/[0-9]+/);// + for at least one
	    
	    var patternNum = new RegExp(/[0-9]/);
	    
	    
	    //userName
        var userNameValue = $("#userName").val();
	    console.log(userNameValue.length);
        var userNameLength = userNameValue.length;
        
        
        if( userNameLength > 0 ){
           isUserNameValid = true;
        }
        
        if( isUserNameValid ){
           $("#userName").removeClass("is-invalid");
        }else{
           $("#userName").addClass("is-invalid");
        }

        
		
        
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

        
      
  	  if(   isUserNameValid && isUserEmailValid && isUserPasswordValid ){
          return true;
       }else{
          return false;
       }

    }
    function sendReqeust(){
    	var formData = new FormData();
    	formData.append("userName", $("#userName").val());
    	formData.append("userEmail",$("#userEmail").val());
    	formData.append("userPassword", $("#userPassword").val());
    	formData.append("file", $("#inputFileUploadInsert")[0].files[0]);
    	
        $.ajax(
        {
             type : 'post',
             url : '/register',
             dataType : 'json',
          	data: formData,
          	contentType: false,   // forcing jQuery not to add a Content-Type header for you, otherwise, the boundary string will be missing from it
            processData: false, // 
             beforeSend : function(xhr){
                 //xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
                 xhr.setRequestHeader("AJAX", true);
             },
             success : function(data, status, xhr) { // alertify or another welcome page 이동
                alertify.alert(
                      'Upwiden', 
                      '회원가입을 축하합니다. 로그인 페이지로 이동합니다', 
                      function(){ 
                         window.location.href="/";
                      })
             }, 
             error: function(jqXHR, textStatus, errorThrown) 
             { 
                alertify.notify(
                      'Opps!! 회원가입에 문제가 생겼습니다.', 
                      'error', //'error','warning','message'
                      3, //-1
                      function(){
                         console.log(jqXHR.responseText); 
                      }
                   );
             }
         });
        
//           $.post("/user",
//           {
//              userName: $("#userName").val(),
//              userEmail: $("#userEmail").val(),
//              userPassword: $("#userPassword").val(),
//           },
//           function(data, status){
//              console.log("Data: " + data + "\nStatus: " + status);
//           });
     }

    
    		
    		
    	   
      		


    	
    </script>
    
</body>

</html>