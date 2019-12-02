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
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>consentForm</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <script src="/resources/src/js/vendor/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="/resources/src/font/iconsmind-s/css/iconsminds.css" />
    <link rel="stylesheet" href="/resources/src/font/simple-line-icons/css/simple-line-icons.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/jquery.contextMenu.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/bootstrap.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/bootstrap.rtl.only.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/perfect-scrollbar.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/select2.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/select2-bootstrap.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/component-custom-switch.min.css" />
    <link rel="stylesheet" href="/resources/src/css/main.css" />
    <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/alertify.min.js"></script>
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/alertify.min.css"/>
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/default.min.css"/>
</head>

<body id="app-container" class="menu-sub-hidden show-spinner right-menu">
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
                     <li class="active">
                        <a href="/consentform">
                            <i class="iconsminds-bucket"></i> consent form
                        </a>
                        
                    </li>
                </ul>
            </div>
        </div>
	</div>

    <main>
        <div class="container-fluid disable-text-selection">
            <div class="row ">
                <div class="col-12">
                    <div class="mb-3">
                        <h1>CONSENT FORM</h1>
                        <div class="text-zero top-right-button-container">
                            <button id = "consentFormAdd" type="button" class="btn btn-primary btn-lg top-right-button  mr-1"
                                data-toggle="modal" data-target="#consentFormInsertModal">ADD NEW</button>
                            <div class="btn_group"> </div>
                           
                        </div>
                    </div>

                    
                   

                    
                </div>
                <div class="mb-2"></div>
                
        
		<div class="separator mb-5"></div>
		    </div>
        </div>
			<div class="row">
                <div class="col-12 list"  data-check-all="checkAll">
                	<div id = "consentFormTbody"> 
                	</div>
                	<div id ="paginationWrapper">
                	</div>
                </div>
            </div>

		<div class="modal fade modal-right" id="consentFormInsertModal">
			<div class="modal-dialog">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title" id="consentFormInsertModalTitle"> 귀가 동의서 작성</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

					<!-- Modal body -->
					<div class="modal-body">
						<div class="row">
						
							<div class="col-xl-12 form-group">
								<input id="dateInsert" type="text" class="form-control"
									name="date" placeholder="날짜" disabled>

							</div>

							<div class="col-xl-12 form-group">
								<input id="titleInsert" type="text" class="form-control"
									name="title" placeholder="제목" disabled>

							</div>

							<div class="col-xl-12 form-group">
								<textarea id="babyNameInsert" class="form-control" 
									placeholder="아기 이름" disabled></textarea>

							</div>
							
							<div class="col-xl-12 form-group">
								<textarea id="contentInsert" class="form-control" 
									placeholder="사유" ></textarea>

							</div>


							<div class="col-md-12 form-right">
								<button id="btnConsentFormInsert"
									class="btn btn-sm btn-primary btn-outline"
									data-target="#myModal" data-dimiss="modal" type="button">등록</button>

							</div>
						</div>

						<!-- Modal footer -->
						<div class="modal-footer">
							<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
						</div>

					</div>
				</div>
			</div>

		</div>

	</main>

	<script>
	LIST_ROW_COUNT = 4;   //limit
	var OFFSET = 0;
	var PAGE_COUNT_PER_BLOCK = 3;   // pagination link 갯수
	var TOTAL_LIST_ITEM_COUNT = 0;
	var CURRENT_PAGE_INDEX = 1;
	///////페이징//////////////////////////
	var day=new Date();
	var day_format=day.getFullYear()+"-"+(day.getMonth() + 1)+"-"+day.getDate()
	var babyName="";
	var babyId=0;
	var ok=0;
	$(document).ready(function() {
		function_babyId();
		
		
		$("#btnConsentFormInsert").click(function(){
			if(validate()){
				consentFormInsert();
				consentFormList();
				$("#consentFormInsertModal").modal("hide");
				
			}
		});
		$("#consentFormAdd").click(function(){
			baby_name();
		});
		
		
		
	});
	function function_babyId(){
		var userEmail = "<%=userDto.getUserEmail()%>";
    	
		$.ajax({
			type: 'post',
			url: '/kidsNote/babyselect',
			dataType: 'json',
			data: {
				userEmail : userEmail
			},
			beforeSend: function(xhr){
	  			  xhr.setRequestHeader("AJAX",true);
	  		  	},
	  		  	success : function(data, status, xhr){
	  		  			babyId=data.babyId;
	  		  			console.log(babyId);
	  		  		consentFormList();
	  			  
	  			 
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
	function baby_name(){
		var userEmail=  "<%=userDto.getUserEmail()%>";
		$.ajax({
			type: 'post',
			url: '/kidsNote/babyselect',
			dataType: 'json',
			data: {
				userEmail : userEmail
			},
			beforeSend: function(xhr){
	  			  xhr.setRequestHeader("AJAX",true);
	  		  	},
	  		  	success : function(data, status, xhr){
	  		  			$("#babyNameInsert").val(data.babyName);
	  		  			$("#titleInsert").val(data.babyName+" 귀가동의서");
	  		  		 	$("#dateInsert").val(day_format);
	  		  			babyId=data.babyId;
	  		  			babyName=data.babyName;
	  		  			//console.log(babyId_ok);
	  		  			
	  		  			
	  			  
	  			 
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
	function consentFormInsert() {
		var formData= new FormData();
		formData.append("babyId", babyId);
		formData.append("babyName",babyName);
		formData.append("title", babyName+ " 귀가동의서");
		formData.append("date", day_format);
		formData.append("content",$("#contentInsert").val());
		
		
		$.ajax({
  	               type : 'post',
  	               url : '/consentForm/insert',
  	               dataType : 'json',
  	               data : formData,
  	               contentType: false,   // forcing jQuery not to add a Content-Type header for you, otherwise, the boundary string will be missing from it
  	               processData: false, // otherwise, jQuery will try to convert your FormData into a string, which will fail.
  	               beforeSend : function(xhr){
  	                   //xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
  	                   xhr.setRequestHeader("AJAX", true);
  	               },
  	               success : function(data, status, xhr) { 
  	            	   
  	            	 if( data ){
  	                     alertify.success('귀가동의서가 등록되었습니다.');
  	                     consentFormList();
  	                  }
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
	
	function validate() {

		// alert("조건 검사 if문");
		var isContentValid = false;
		

		var content = $("#contentInsert").val();
		var contentLength = content.length;

		if (contentLength > 0) {

			return true;
		}

	
		
	}
	
	//controller완성
	function consentFormList(){
		console.log(babyId+" list")
  	  $.ajax({
  		  
  		  type: 'get',
  		  url: '/consentForm/list',
  		  dataType:'json',
  		  data :{
  			  limit: LIST_ROW_COUNT,
  			  offset: OFFSET,
  			  babyId: babyId
  			  
  		  },
  		  beforeSend: function(xhr){
  			  xhr.setRequestHeader("AJAX",true);
  		  },
  		  success : function(data, status, xhr){
  			  
  			  console.log(data)
  			  makeListHtml(data);
  			 
  		  }, 
  		  error: function(jqXHR, textStatus, errorThrown){
  			 /*  if(dqXHR.responseText == "timeout"){
  				  window.location.href="/login";
  			  }else{
  				  
  			  } */
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
	

		function makeListHtml(list) {

			$("#consentFormTbody").html("");

			for (var i = 0; i < list.length; i++) {
				var title = list[i].title;
				var date = list[i].date;
				var babyId = list[i].babyId;
				var babyName = list[i].babyName;
				var content = list[i].content;
				var consentFormId = list[i].consentFormId;

				var listHtml = '<div class=" card d-flex flex-row mb-3" >'
						+

						'</a>'
						+ '<div class="pl-2 d-flex flex-grow-1 min-width-zero">'
						+ '<div '+
                      'class="card-body align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero align-items-lg-center">'
						+ '<p class="boardItem list-item-heading mb-0 truncate" data-consentFormId ='+consentFormId+'>'
						+ title
						+ '</p>'
						+ '</a>'
						+ '<p class="mb-0 text-muted text-small w-15 w-sm-100">'
						+ content
						+ '</p>'
						+ '<p class="mb-0 text-muted text-small w-15 w-sm-100">'
						+ date + '</p>' +
						'  <button id ="okBtn" type="button" class="btn btn-primary btn-lg top-right-button mr-1" >ok</button>'+
						'</div>' +

						'</div>' + '</div>';
						
						

				$("#consentFormTbody").append(listHtml);
				$("#okBtn").click(function(){

					alertify.success('확인되었습니다.');
					
				});
				
				
			}

			//makeListHtmlEventHandler();

			consentFormListTotalCnt();

		}

		
		//페이징
		function consentFormListTotalCnt() {

			$.ajax({
				type : 'get',
				url : '/consentForm/list/totalCnt',
				dataType : 'json',
				data : {
					
				},
				beforeSend : function(xhr) {
					//xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
					xhr.setRequestHeader("AJAX", true);
				},
				success : function(data, status, xhr) {
					TOTAL_LIST_ITEM_COUNT = data;
					addPagination();
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.responseText == "timeout") {
						window.location.href = "/login"
					} else {
						alertify.notify('Opps!! 글 전체 갯수 조회 과정에 문제가 생겼습니다.',
								'error', //'error','warning','message'
								3, //-1
								function() {
									console.log(jqXHR.responseText);
								});
					}
				}
			});
		}
		
		//페이징
	     function addPagination(){

	         makePaginationHtml(LIST_ROW_COUNT, PAGE_COUNT_PER_BLOCK, CURRENT_PAGE_INDEX, TOTAL_LIST_ITEM_COUNT, "paginationWrapper", consentFormList );
	      }
		
	    
	</script>
    

  <script src="/resources/js/util.js"></script><!-- 페이징 -->
    <script src="/resources/src/js/vendor/bootstrap.bundle.min.js"></script>
    <script src="/resources/src/js/vendor/perfect-scrollbar.min.js"></script>
    <script src="/resources/src/js/vendor/select2.full.js"></script>
    <script src="/resources/src/js/vendor/mousetrap.min.js"></script>
    <script src="/resources/src/js/vendor/jquery.contextMenu.min.js"></script>
    <script src="/resources/src/js/dore.script.js"></script>
    <script src="/resources/src/js/scripts.js"></script>
</body>

</html>