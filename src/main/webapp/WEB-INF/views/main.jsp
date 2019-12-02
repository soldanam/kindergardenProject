<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import = "com.kindergarden.service.dto.*" %>
<% 

  UserDto userDto = (UserDto) session.getAttribute("userDto");
  if(userDto != null){
     System.out.println(userDto.getUserSeq());
  }
  
  %>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/alertify.min.js"></script>
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/alertify.min.css"/>
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/default.min.css"/>
<head>
	<link rel="stylesheet" href="css/vendor/fullcalendar.min.css" />
    <meta charset="UTF-8">
    <title>Main</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- <link rel="stylesheet" type="text/css" href="css/dore.light.orange.min.css"> -->
    <link rel="stylesheet" href="/resources/src/font/iconsmind-s/css/iconsminds.css" />
    <link rel="stylesheet" href="/resources/src/font/simple-line-icons/css/simple-line-icons.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/bootstrap.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/bootstrap.rtl.only.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/component-custom-switch.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/perfect-scrollbar.css" />
   
  
    
	<link rel="stylesheet" href="/resources/css/common.css">
    <link rel="stylesheet" href="/resources/src/css/vendor/jquery.contextMenu.min.css" />

 <link rel="stylesheet" href="/resources/src/css/vendor/fullcalendar.min.css" />
      <link rel="stylesheet" href="/resources/src/css/vendor/bootstrap-datepicker3.min.css" />
   <link rel="stylesheet" href="/resources/src/css/main.css" />



</head>

<body id="app-container" class="menu-default show-spinner">

    <nav class="navbar fixed-top">
        <div class="d-flex align-items-center navbar-left">
            <a href="#" class="menu-button d-none d-md-block">
                <svg class="main" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 9 17">
                    <rect x="0.48" y="0.5" width="7" height="1" />
                    <rect x="0.48" y="7.5" width="7" height="1" />
                    <rect x="0.48" y="15.5" width="7" height="1" />
                </svg>
                <svg class="sub" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 18 17">
                    <rect x="1.56" y="0.5" width="16" height="1" />
                    <rect x="1.56" y="7.5" width="16" height="1" />
                    <rect x="1.56" y="15.5" width="16" height="1" />
                </svg>
            </a>

            <a href="#" class="menu-button-mobile d-xs-block d-sm-block d-md-none">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 26 17">
                    <rect x="0.5" y="0.5" width="25" height="1" />
                    <rect x="0.5" y="7.5" width="25" height="1" />
                    <rect x="0.5" y="15.5" width="25" height="1" />
                </svg>
            </a>

           

            
        </div>


        <a class="navbar-logo" href="/main">
           <img src="/resources/src/img/log-new.JPG"/>
        </a>

        <div class="navbar-right">
       			<!--  Insert Modal -->
 
  <button type="button" id="btnBabyAdd"  class="btn btn-primary" data-toggle="modal" data-target="#babyInsertModal">
    KID ADD
  </button>
   <button type="button" class="btn btn-primary mb-1" id = "logout" onclick = "location.href='/login'">LOGOUT</button>
					
  
            <div class="header-icons d-inline-block align-middle">
            
                <div class="position-relative d-inline-block">
                    <button class="header-icon btn btn-empty" type="button" id="notificationButton"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="simple-icon-bell"></i>
                        <span class="count">3</span>
                    </button>
                    <div class="dropdown-menu dropdown-menu-right mt-3 position-absolute" id="notificationDropdown">
                        <div class="scroll">
                            <div class="d-flex flex-row mb-3 pb-3 border-bottom">
                                <a href="#">
                                    <img src="/resources/src/img/profile-pic-l-2.jpg" alt="Notification Image"
                                        class="img-thumbnail list-thumbnail xsmall border-0 rounded-circle" />
                                </a>
                                <div class="pl-3">
                                    <a href="#">
                                        <p class="font-weight-medium mb-1">Joisse Kaycee just sent a new comment!</p>
                                        <p class="text-muted mb-0 text-small">09.04.2018 - 12:45</p>
                                    </a>
                                </div>
                            </div>
                            <div class="d-flex flex-row mb-3 pb-3 border-bottom">
                                <a href="#">
                                    <img src="/resources/src/img/notification-thumb.jpg" alt="Notification Image"
                                        class="img-thumbnail list-thumbnail xsmall border-0 rounded-circle" />
                                </a>
                                <div class="pl-3">
                                    <a href="#">
                                        <p class="font-weight-medium mb-1">1 item is out of stock!</p>
                                        <p class="text-muted mb-0 text-small">09.04.2018 - 12:45</p>
                                    </a>
                                </div>
                            </div>
                            <div class="d-flex flex-row mb-3 pb-3 border-bottom">
                                <a href="#">
                                    <img src="/resources/src/img/notification-thumb-2.jpg" alt="Notification Image"
                                        class="img-thumbnail list-thumbnail xsmall border-0 rounded-circle" />
                                </a>
                                <div class="pl-3">
                                    <a href="#">
                                        <p class="font-weight-medium mb-1">New order received! It is total $147,20.</p>
                                        <p class="text-muted mb-0 text-small">09.04.2018 - 12:45</p>
                                    </a>
                                </div>
                            </div>
                            <div class="d-flex flex-row mb-3 pb-3 ">
                                <a href="#">
                                    <img src="/resources/src/img/notification-thumb-3.jpg" alt="Notification Image"
                                        class="img-thumbnail list-thumbnail xsmall border-0 rounded-circle" />
                                </a>
                                <div class="pl-3">
                                    <a href="#">
                                        <p class="font-weight-medium mb-1">3 items just added to wish list by a user!
                                        </p>
                                        <p class="text-muted mb-0 text-small">09.04.2018 - 12:45</p>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <div class="user d-inline-block">
                <button class="btn btn-empty p-0" type="button" data-toggle="dropdown" aria-haspopup="true"
                    aria-expanded="false">
                    <span class="name"><%=userDto.getUserName() %></span>
                    <span>
                        <img alt="Profile Picture" src="<%=userDto.getProfileImageUrl() %>" />
                    </span>
                </button>

                <div class="dropdown-menu dropdown-menu-right mt-3">
                    <a class="dropdown-item" href="#">Account</a>
                    <a class="dropdown-item" href="#">Features</a>
                    <a class="dropdown-item" href="#">History</a>
                    <a class="dropdown-item" href="#">Support</a>
                    <a class="dropdown-item" href="#">Sign out</a>
                </div>
            </div>
        </div>
    </nav>
    

    <div class="menu">
        <div class="main-menu">
            <div class="scroll">
                <ul class="list-unstyled">
                    <li>
                        <a href="/kidsNote">
                            <i class="iconsminds-shop-4"></i>
                            <span>kids Note</span>
                        </a>
                    </li>
                    <li>
                        <a href="/Notice">
                            <i class="iconsminds-digital-drawing"></i> Notice
                        </a>
                    </li>
                    <li>
                        <a href="/schedule">
                            <i class="iconsminds-air-balloon-1"></i> Schedule
                        </a>
                    </li>
                    <li>
                        <a href="/album">
                            <i class="iconsminds-pantone"></i> Album
                        </a>
                    </li>
                    <li>
                        <a href="/message">
                            <i class="iconsminds-three-arrow-fork"></i> Message
                        </a>
                    </li>
                     <li>
                        <a href="/consentform">
                            <i class="iconsminds-bucket"></i> consent form
                        </a>
                    
                   
                        
                    </li>
                </ul>
            </div>
        </div>
	</div>


	<main>
		 <div class="container-fluid">
         <div class="row">
                <div class="col-12 col-md-12 col-xl-8 col-left">
                    <div class="card mb-4">
                        <div class="card-body">

                            <img alt="detail" src="/resources/src/img/introduce.jpg"
                                    class="responsive border-0 border-radius img-fluid mb-3" />

                           
                        </div>
                    </div>

                    
                </div>

                <!-- <div class="col-12 col-md-12 col-xl-4 col-right">
                   

                            <div class="card d-flex flex-row mb-3">
                                <a class="d-flex" href="#">
                                    <img alt="Profile" src="/resources/src/img/profile-pic-l.jpg"
                                        class="img-thumbnail border-0 rounded-circle m-4 list-thumbnail align-self-center">
                                </a>
                                <div class=" d-flex flex-grow-1 min-width-zero">
                                    <div
                                        class="card-body pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                        <div class="min-width-zero">
                                            <a href="#">
                                                <p class="list-item-heading mb-1 truncate">kids Note</p>
                                            </a>
                                            <p class="mb-2 text-muted text-small">2019.11.07</p>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="card d-flex flex-row mb-3">
                                <a class="d-flex" href="#">
                                    <img alt="Profile" src="/resources/src/img/profile-pic-l.jpg"
                                        class="img-thumbnail border-0 rounded-circle m-4 list-thumbnail align-self-center">
                                </a>
                                <div class=" d-flex flex-grow-1 min-width-zero">
                                    <div
                                        class="card-body pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                        <div class="min-width-zero">
                                            <a href="#">
                                                <p class="list-item-heading mb-1 truncate">kidergarten newsletter</p>
                                            </a>
                                            <p class="mb-2 text-muted text-small">2019.11.06</p>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                             <hr>
                            <div class="card d-flex flex-row mb-3">
                                <a class="d-flex" href="#">
                                    <img alt="Profile" src="/resources/src/img/profile-pic-l.jpg"
                                        class="img-thumbnail border-0 rounded-circle m-4 list-thumbnail align-self-center">
                                </a>
                                <div class=" d-flex flex-grow-1 min-width-zero">
                                    <div
                                        class="card-body pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                        <div class="min-width-zero">
                                            <a href="#">
                                                <p class="list-item-heading mb-1 truncate">kids Note</p>
                                            </a>
                                            <p class="mb-2 text-muted text-small">2019.11.06</p>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                             <hr>
                            <div class="card d-flex flex-row mb-3">
                                <a class="d-flex" href="#">
                                    <img alt="Profile" src="/resources/src/img/profile-pic-l.jpg"
                                        class="img-thumbnail border-0 rounded-circle m-4 list-thumbnail align-self-center">
                                </a>
                                <div class=" d-flex flex-grow-1 min-width-zero">
                                    <div
                                        class="card-body pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                        <div class="min-width-zero">
                                            <a href="#">
                                                <p class="list-item-heading mb-1 truncate">kids Note</p>
                                            </a>
                                            <p class="mb-2 text-muted text-small">2019.11.05</p>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                
            </div> -->
        </div>
              <!-- Insert Modal -->
			<div class="modal fade modal-right" id="babyInsertModal">
				<div class="modal-dialog">
					<div class="modal-content">

						<!-- Modal Header -->
						<div class="modal-header">
							<h4 class="modal-title" id="boardInsertModalTitle">아이 추가</h4>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>

						<!-- Modal body -->
						<div class="modal-body">
							<div class="row">

								<div class="col-xl-12 form-group">
									<label>이름</label>
									<input id="nameInsert" type="text" class="form-control"
										name="title" placeholder="이름">

								</div>
								<div class="col-xl-12 form-group">                         
                                    <div class="form-group mb-3">
                                        <label>아이의 생년월일</label>
                                        <input id ="dateInsert" class="form-control datepicker" placeholder="월/일/년">
                                    </div>
                            	</div>
                            	<div class="col-xl-12 form-group">
                            		<label>반 이름</label>
									<input id="classInsert" type="text" class="form-control" 
										name="title" placeholder="" disabled>
								</div>
                        	</div>
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

								
								
							</div>

							<!-- Modal footer -->
							<div class="modal-footer">
								
									<button id="btnBabyInsert"
										class="btn btn-sm btn-primary btn-outline"
										data-target="#myModal" data-dimiss="modal" type="button">등록</button>

								
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Close</button>
							</div>

						</div>
					</div>
				</div>

			</div>
	</main>

	<footer class="page-footer">
        <div class="footer-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-sm-6">
                        <p class="mb-0 text-muted">ColoredStrategies 2019</p>
                    </div>
                    <div class="col-sm-6 d-none d-sm-block">
                        <ul class="breadcrumb pt-0 pr-0 float-right">
                            <li class="breadcrumb-item mb-0">
                                <a href="#" class="btn-link">Review</a>
                            </li>
                            <li class="breadcrumb-item mb-0">
                                <a href="#" class="btn-link">Purchase</a>
                            </li>
                            <li class="breadcrumb-item mb-0">
                                <a href="#" class="btn-link">Docs</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <script>
    var MONTH =0;
    var YEAR =0;
    var DAY =0;
    var DATE = "";
   // var CLASS =0;
    $(document).ready(function(){
    	babycheck();
    	
    	 $("#logout").click(function(){
   			logout();
   		})
    	
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
  	  

  	  $("#btnBabyInsert").click(function() {
          //   alert("버튼 접근");
          
        		if(validate()){ 
             //alert("boardinsert 접근");
            		 babyInsert();
            		 
            		$("#babyInsertModal").modal("hide");
            		
         	 } 
        		
        	
        
        
      	 });
  	  
    	$("#dateInsert").change( function(){
    		console.log($("#dateInsert").val())
    		var date =$("#dateInsert").val();
    	 	var datearray=date.split("/");
    	 	MONTH=datearray[0];
    	 	YEAR=datearray[2];
    	 	DAY=datearray[1];
    	 	DATE=YEAR+"."+MONTH+"."+DAY;
    	 	classmatch(YEAR);
    		
    	});
    });
    
    function babyInsert(){
    	var formData= new FormData();
    	formData.append("babyName", $("#nameInsert").val());
    	 formData.append("userEmail", '<%=userDto.getUserEmail()%>');
    	 formData.append("babyDate" ,DATE);
    	 formData.append("file", $("#inputFileUploadInsert")[0].files[0]);
    	 formData.append("className",  $("#classInsert").val());
    	 
    	 $.ajax(
    	          {
    	               type : 'post',
    	               url : '/baby/babyinsertFile',
    	               dataType : 'json',
    	               data : formData,
    	               contentType: false,   // forcing jQuery not to add a Content-Type header for you, otherwise, the boundary string will be missing from it
    	               processData: false, // otherwise, jQuery will try to convert your FormData into a string, which will fail.
    	               beforeSend : function(xhr){
    	                   //xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
    	                   xhr.setRequestHeader("AJAX", true);
    	               },
    	               success : function(data, status, xhr) { 
    	            	   alertify.success('아이가 추가되었습니다.');
    	            	   $("#btnBabyAdd").hide();
    	             
    	               }, 
    	               error: function(jqXHR, textStatus, errorThrown) 
    	               { 
    	                  if( jqXHR.responseText == "timeout" ){
    	                     window.location.href = "/login"
    	                  }else{
    	                     alertify.notify(
    	                            'Opps!! 글 등록 과정에 문제가 생겼습니다.', 
    	                            'error', //'error','warning','message'
    	                            3, //-1
    	                            function(){
    	                               console.log(jqXHR.responseText); 
    	                            }
    	                         );
    	                  }
    	                  
    	               }
    	           });
    	 
    }
    
    function babycheck(){
    	var userEmail = "<%=userDto.getUserEmail()%>";
    	
    	$.ajax({
    		type: 'post',
    		url: '/baby/babycheck',
    		dataType: 'json',
    		data:{
    			userEmail: userEmail
    		},
    		beforeSend: function(xhr){
  			  xhr.setRequestHeader("AJAX",true);
  		  	},
  		  	success : function(data, status, xhr){
  			  if(data>=1){
  				 
  				  $("#btnBabyAdd").hide();
  				  console.log(data);
  			  }
  			  
  			 
  		 	 }, 
  		  	error: function(jqXHR, textStatus, errorThrown){
  		
  			  alertify.notify(
                        'Opps!! ', 
                        'error', //'error','warning','message'
                        3, //-1
                        function(){
                           console.log(jqXHR.responseText); 
                        }
               );
  		  	}
    	});
    	
    }
    function classmatch(YEAR){
    	console.log(YEAR);
    	$.ajax({
    		type: 'post',
    		url: '/baby/classmatch',
    		dataType: 'text',
    		data:{
    			year: YEAR
    			
    		},
    		beforeSend: function(xhr){
  			  xhr.setRequestHeader("AJAX",true);
  		  	},
  		  	success : function(data, status, xhr){
  			  console.log(data);
  			  var dataup = data;
  				$("#classInsert").val(dataup);
  			 
  			 
  		 	 }, 
  		  	error: function(jqXHR, textStatus, errorThrown){
  		
  		  	if( jqXHR.responseText == "timeout" ){
                window.location.href = "/login"
             }else{
                alertify.notify(
                   'Opps!! 글 수정 과정에 문제가 생겼습니다.', 
                   'error', //'error','warning','message'
                   3, //-1
                   function(){
                	   
                      console.log(jqXHR.responseText); 
                   }
                );
             }
  		  	}
    	});
    	
    	
    }
    function validate(){
        
        // alert("조건 검사 if문");
         var isNameValid = false;
         var isDateValid = false;
         
         
         var name = $("#nameInsert").val();
         var nameLength = name.length;
         
         if(nameLength > 0 ){
   
            isNameValid = true;
         }
         
         var dateValid = $("#dateInsert").val();
         var dateLength = dateValid.length;
         
         if(dateLength >0){
            isDateValid = true;
         }
         if(isNameValid && isDateValid){
            return true;
         }else{
            return false;
         }
         
      }
    </script>
 
  <script src="/resources/src/js/dore-plugins/select.from.library.js"></script>
 <script src="/resources/src/js/vendor/jquery.contextMenu.min.js"></script>
    <script src="/resources/src/js/vendor/jquery-3.3.1.min.js"></script>
    <script src="/resources/src/js/vendor/bootstrap.bundle.min.js"></script>
    <script src="/resources/src/js/vendor/perfect-scrollbar.min.js"></script>
    <script src="/resources/src/js/vendor/mousetrap.min.js"></script>
    <script src="/resources/src/js/dore.script.js"></script>
    <script src="/resources/src/js/scripts.js"></script>
    
     <!-- <script src="/resources/src/js/vendor/jquery-3.3.1.min.js"></script> -->
    <script src="/resources/src/js/vendor/moment.min.js"></script>
    <script src="/resources/src/js/vendor/fullcalendar.min.js"></script>
    <script src="/resources/src/js/vendor/bootstrap-datepicker.js"></script>


</body>

</html>