<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="com.kindergarden.service.dto.*" %>
    
    <%
    
    UserDto userDto = (UserDto) session.getAttribute("userDto");
    String userName = "";
    
    if(userDto != null){
       System.out.println(userDto.getUserSeq());
       userName = userDto.getUserName();
    }
    %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>KidsNote</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="stylesheet" type="text/css" href="/resources/src/css/dore.light.orange.min.css">
    <link rel="stylesheet" href="/resources/src/font/iconsmind-s/css/iconsminds.css" />
    <link rel="stylesheet" href="/resources/src/font/simple-line-icons/css/simple-line-icons.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/bootstrap.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/bootstrap.rtl.only.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/jquery.contextMenu.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/perfect-scrollbar.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/component-custom-switch.min.css" />
    <link rel="stylesheet" href="/resources/src/css/main.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/alertify.min.js"></script>
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/alertify.min.css"/>
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/default.min.css"/>
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
            <div class="header-icons d-inline-block align-middle">
                <button type="button" class="btn btn-primary mb-1" id = "logout" onclick = "location.href='/login'">LOGOUT</button>
					
               

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

               <!--  <div class="dropdown-menu dropdown-menu-right mt-3">
                    <a class="dropdown-item" href="#">Account</a>
                    <a class="dropdown-item" href="#">Features</a>
                    <a class="dropdown-item" href="#">History</a>
                    <a class="dropdown-item" href="#">Support</a>
                    <a class="dropdown-item" href="#">Sign out</a>
                </div> -->
            </div>
        </div>
    </nav>
    <div class="menu">
        <div class="main-menu">
            <div class="scroll">
                <ul class="list-unstyled">
                     <li class="active">
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
        <div class="container-fluid disable-text-selection">
            <div class="row">
                <div class="col-12">

                    <div class="mb-3">
                        <h1>KIDS NOTE</h1>
                        <div class="text-zero top-right-button-container">
                            <button id ="kidsNoteAdd" type="button" class="btn btn-primary btn-lg top-right-button mr-1" data-toggle="modal"
			data-target="#kidsNoteInsertModal">ADD NEW</button>
                          
                        </div>
                        
                    </div>

                    
                    <div class="separator mb-5"></div>
                </div>
            </div>

            <div id="kidsNoteTbody" class=" row list disable-text-selection" data-check-all="checkAll">
            
				<!----------- 테이블 추가 ----------------->
				
				
				
				<!-- --------------------------------- -->
                


                
                	
               
            </div>
            <!-- -------페이징----------- -->
                	<div id="paginationWrapper">
                	</div>
                    <!-- -------------------- -->
        </div>


		<!-- Insert Modal -->
		<div class="modal fade modal-right" id="kidsNoteInsertModal">
			<div class="modal-dialog">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title" id="kidsNoteInsertModalTitle">키즈노트 입력</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

					<!-- Modal body -->
					<div class="modal-body">
						<div class="row">

							<div class="col-xl-12 form-group">
								<input id="babyNameInsert" class="form-control" 
									placeholder="아기 이름" disabled>

							</div>
							<div class="col-xl-12 form-group">
								<input id="dateInsert" type="text" class="form-control"
									name="title" placeholder="날짜" disabled>

							</div>
							
							<div class="col-xl-12 form-group">
								<input id="titleInsert" type="text" class="form-control"
									name="title" placeholder="제목" disabled>

							</div>

							<div class="col-xl-12 form-group">
								<textarea id="contentInsert" class="form-control" rows="5"
									placeholder="내용"></textarea>

							</div>
							
							<!-- 파일 추가  start -->
							<div class="col-xl-12 form-group">


								<div class="form-check form-check-flat form-check-primary">
									<div class="checkbox-custom checkbox-primary">
										<input type="checkbox" id="chkFileUploadInsert"> <label
											for="chkFileUploadInsert">파일 추가</label>
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
						<div class="col-md-12 form-right">
								<button id="btnkidsNoteInsert"
									class="btn btn-primary btn-lg"
									data-target="#myModal" data-dimiss="modal" type="button">등록</button>

							</div>
							<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
						</div>

					</div>
				</div>
			</div>

		</div>
		
		<!-- detail model -->
       <div class="modal fade bd-example-modal-lg show" id="kidsNoteDetailModal" aria-hidden="false" aria-labelledby="kidsNoteDetailModalTitle" role="dialog" tabindex="-1">
               <div class="modal-dialog modal-lg">
                  <form class="modal-content">
                     <div class="modal-header">
                     <h5 class="modal-title" id="kidsNoteDetailModalTitle" >KidsNote Detail</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                           <span aria-hidden="true">×</span>
                        </button>
                        
                     </div>
                     
                     <div class="modal-body">
                     
                  <div class="example table-responsive">
                    <table class="table table-hover">
                      <tbody>
                        <tr><td width=500>Name</td><td id ="babyNameDetail">#</td></tr>
                        <tr><td width=500>Date</td><td id="dateDetail">#</td></tr>
                        <tr><td width=500>Title</td><td id="titleDetail">#</td></tr>
                        <tr><td >Content</td><td id="contentDetail">#</td></tr>
               
                        <tr><td>file</td><td id="fileDetail">#</td></tr>
                      </tbody>
                    </table>
                  </div>
                 
                  <div class="modal-footer">
                        <button id="btnkidsNoteUpdateForm" class="btn btn-primary btn-lg" data-dismiss="modal" type="button">유아노트 수정하기</button>
                        <button id="btnkidsNoteDeleteConfirm" class="btn btn-warning btn-lg" data-dismiss="modal" type="button">유아노트 삭제하기</button>
                        
                     </div>
                      </div>
                  </form>
               </div>
            </div>
            <!-- End Modal -->
		<!-- Update Modal -->
		
  <div class="modal fade bd-example-modal-lg show"  id="kidsNoteUpdateModal"  aria-hidden="false" aria-labelledby="kidsNoteUpdateModalTitle" role="dialog" tabindex="-1">
               <div class="modal-dialog modal-lg">
      <form class="modal-content">
      
        <div class="modal-header">
                     <h4 class="modal-title" id="kidsNoteDetailModalTitle" id="">유아노트 update</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                           <span aria-hidden="true">×</span>
                        </button>
                        
                     </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        <div class = "row">
        
        <div class = "col-xl-12 form-group">
           <input id="babyNameUpdate" type="text" class="form-control" name="babyName" placeholder="아기이름" disabled>
           
        </div>
         <div class = "col-xl-12 form-group">
           <input id="dateUpdate" type="text" class="form-control" name="date" placeholder="날짜" disabled>
           
        </div>
         <div class = "col-xl-12 form-group">
           <input id="titleUpdate" type="text" class="form-control" name="title" placeholder="제목" disabled>
           
        </div>
        
        <div class = "col-xl-12 form-group">
           <textarea id="contentUpdate"  class="form-control" rows="5" placeholder="내용"></textarea>
           
        </div>
        <div class="col-xl-12 form-group">
                              첨부파일 : <span id="fileUpdate"></span>
                           </div>
                           <div class="col-xl-12 form-group">
                              <div class="checkbox-custom checkbox-primary">
                                      <input type="checkbox" id="chkFileUploadUpdate" />
                                      <label for="chkFileUploadUpdate">파일 변경</label>
                                    </div>
                           </div>
                           <div class="col-xl-12 form-group" style="display:none;" id="imgFileUploadUpdateWrapper">
                              <input type="file" id="inputFileUploadUpdate">
                              <div class="thumbnail-wrapper">
                                      <img id="imgFileUploadUpdate">
                                    </div>
                           </div>
        
        <div class = "col-md-12 form-right">
           <button id="btnkidsNoteUpdate" class="btn btn-sm btn-primary btn-outline" data-dimiss="modal" type="button">수정</button>
           
        </div>
                 </div>
        
      
        
      </div>
      </form>
    </div>
  </div>
		

	</main>
<script>
var LIST_ROW_COUNT = 4;   //limit
var OFFSET = 0;
var PAGE_COUNT_PER_BLOCK = 3;   // pagination link 갯수
var TOTAL_LIST_ITEM_COUNT = 0;
var CURRENT_PAGE_INDEX = 1;
	var babyId =0;
	var babyId_ok=0;
	var KidsNoteId =0;
	var day=new Date();
	var day_format=day.getFullYear()+"-"+(day.getMonth() + 1)+"-"+day.getDate();
	$(document).ready(function() {
		function_babyId();
		
		$("#logout").click(function(){
			logout();
		})
		//파일 업로드 11.19
		$("#chkFileUploadInsert").change(function() {
			if ($(this).prop("checked")) {
				$("#imgFileUploadInsertWrapper").show();
			} else {
				$("#inputFileUploadInsert").val("");
				$("#imgFileUploadInsert").attr("src", "");
				$("#imgFileUploadInsertWrapper").hide();
			}
		});
		
		$("#kidsNoteAdd").click(function() {
			kids();
		});
		
		 $("#btnkidsNoteInsert").click(function() {
	     
	        		if(validate()){ 
	             //alert("boardinsert 접근");
	            		 kidsNoteInsert();	 
	            		 kidsNoteList();
	            		$("#kidsNoteInsertModal").modal("hide");
	            		
	         	 } 
        
	      	 });
		 $("#btnkidsNoteUpdateForm").click(function(){
	   		  var kidsNoteId = $("#kidsNoteDetailModal").attr("data-kidsNoteId");
	   		  $("#kidsNoteUpdateModal").attr("data-kidsNoteId", kidsNoteId);
	   		  
	   		  $("#titleUpdate").val($("#titleDetail").html());
	   		  $("#contentUpdate").val($("#contentDetail").html());
	   		$("#babyNameUpdate").val($("#babyNameDetail").html());
	   		$("#dateUpdate").val($("#dateDetail").html());
	   			
	   		
	   		
	   			var fileName = $("#fileDetail").find(".fileName").html();
	       		 $("#fileUpdate").html( '<span class="fileName">' + fileName + '</span>');
	       		 
	       		 //이미지 정리-> 초기화
	       		 $("#chkFileUploadUpdate").prop("checked", false);
	         	$("#inputFileUploadUpdate").val("");
	         	$("#imgFileUploadUpdate").attr("src", "");
	         	//$("#imgFileUploadUpdate").removeAttr("src");
	         	$("#imgFileUploadUpdateWrapper").hide();
	        
	   		  $("#kidsNoteDetailModal").modal("hide");
	   		  $("#kidsNoteUpdateModal").modal("show");
	   	  	});
		 
		 $("#btnkidsNoteUpdate").click(function(){
	   		  if(validateUpdate()){
	   			  kidsNoteUpdate();
	   			  kidsNoteList();
	   			$("#kidsNoteUpdateModal").modal("hide");
	   		  }
	   	  });
		//delete => alert 창소제목 첫번째는 yes 두번째는 no 일때 
	   	  $("#btnkidsNoteDeleteConfirm").click(function(){
	   		 alertify.confirm(
	   				 'delete',
	   				 '이 글을 삭제하시겠습니까?',
	   				function(){
	   					 kidsNoteDelete();
	   				 },
	   				 function(){
	   					 console.log('cancel');
	   				 }
	   		 );
	   		  
	   	  });
	   	//글쓰기 시 초기화 해주는 거 => 11.19
	     	$("#btnkidsNoteInsertForm").click(function(){
	          
	          $("#contentInsert").val("");
	          $("#chkFileUploadInsert").prop("checked", false);
	          $("#inputFileUploadInsert").val("");
	          $("#imgFileUploadInsert").removeAttr("src");
	          //$("#imgFileUploadInsert").attr("src", "");
	          $("#imgFileUploadInsertWrapper").hide();
	          
	          $("#kidsNoteInsertModal").modal("show");
	       });
	     	  
	    //Update ->11.19
	      $("#chkFileUploadUpdate").change(function(){
	         if( $(this).prop("checked")){
	            $("#imgFileUploadUpdateWrapper").show();
	         }else{
	            $("#inputFileUploadUpdate").val("");
	            $("#imgFileUploadUpdate").attr("src", "");
	            $("#imgFileUploadUpdateWrapper").hide();
	         }
	      });

	      $("#inputFileUploadUpdate").change(function(e){

	          if( this.files && this.files[0] ){
	             var reader = new FileReader();
	             reader.onload = function(e){
	                $("#imgFileUploadUpdate").attr("src", e.target.result);
	             }
	             reader.readAsDataURL(this.files[0]);
	          }
	       });
	});
	
	function logout(){
		document.location.href="/logout";
	}
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
	  		  			babyId_ok=data.babyId;
	  		  			console.log(babyId_ok);
	  		  		kidsNoteList();
	  			  
	  			 
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
	
	//controller완성
	function kidsNoteList(){
		console.log(babyId_ok+"list")
  	  $.ajax({
  		  
  		  type: 'get',
  		  url: '/kidsNote/list',
  		  dataType:'json',
  		  data :{
  			  limit: LIST_ROW_COUNT,
  			  offset: OFFSET,
  			  babyId: babyId_ok
  			  
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
	
	 function validateUpdate(){
   	  var isTitleValid = false;
         var isContentValid = false;
         
         var title = $("#titleUpdate").val();
         var titleLength = title.length;
         
         if(titleLength > 0 ){
   
            isTitleValid = true;
         }
         
         var contentValid = $("#contentUpdate").val();
         var contentLength = contentValid.length;
         
         if(contentLength >0){
            isContentValid = true;
         }
         if(isTitleValid && isContentValid){
            return true;
         }else{
            return false;
         }
     }
	 
	//페이징
     function addPagination(){

         makePaginationHtml(LIST_ROW_COUNT, PAGE_COUNT_PER_BLOCK, CURRENT_PAGE_INDEX, TOTAL_LIST_ITEM_COUNT, "paginationWrapper", kidsNoteList );
      }
	
     function kidsNoteDetail(kidsNoteId){
   	  console.log(kidsNoteId);
   	   /* $("#boardDetailModal").modal("show");  */
   	  $.ajax(
   	 {
   		 type: 'get',
   		 url: '/kidsNote/detail',
   		 dataType: 'json',
   		 data:{
   			 kidsNoteId: kidsNoteId
   		 },
   		 beforeSend: function(xhr){
   			 xhr.setRequestHeader("AJAX", true);
   		 },
   		 success: function(data, status, xhr){
   			 makeDetailHtml(data);
   			 console.log(data+" detail");
   		 },
   		 error: function(jqXHR, textStatus, errorThrown){//AuthInterceptor갑
   			 if(jqXHR.responseText =="timeout"){
                    window.location.href = "/login"
                 }else{
                    alertify.notify(
                           'Opps!! 로그인 과정에 문제가 생겼습니다.', 
                               'error', //'error','warning','message'
                               3, //-1
                               function(){
                           //여기       console.log(jqXHR.responseText); 
                                console.log(jqXHR.responseText); 
                               });
                 } 
   			 }
   				  
   	  });
     }
     function makeDetailHtml(detail){
         
    	 KidsNoteId= detail.kidsnoteId;
         babyId = detail.babyId;
         var babyName = detail.babyName;
         var title = detail.title;
         var content = detail.content;
         var regDt = detail.regDt;
         var kidsnoteFileUrl = detail.kidsnoteFileUrl;
       
         
         console.log(kidsnoteFileUrl+ "makeDetailHtml");
         
         $("#kidsNoteDetailModal").attr("data-kidsNoteId", KidsNoteId);
         $("#babyNameDetail").html(babyName);
         $("#dateDetail").html(regDt);
         $("#contentDetail").html(content);
         $("#titleDetail").html(title);
         $("#fileDetail").html(kidsnoteFileUrl);
        
         //FileList
        // $("#fileDetail").html("");
         
     
               $("#fileDetail").append(
                     '<span class="fileName">' + kidsnoteFileUrl + '</span>');
               $("#fileDetail").append(
                     '&nbsp;&nbsp;<a type="button" class="btn btn-outline btn-default btn-xs" ' +
                     
                     'href="' + kidsnoteFileUrl + '" ' +
                     'download>내려받기</a>');
            
         
         
         <%-- if( userSeq != '<%=userDto.getUserSeq()%>' ){
            $("#btnBoardUpdateForm").hide();
            $("#btnBoardDeleteConfirm").hide();
         }else{
            $("#btnBoardUpdateForm").show();
            $("#btnBoardDeleteConfirm").show();
         } --%>
         
         $("#kidsNoteDetailModal").modal("show");
         
      //makeDetailHtmlEventHandler();
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
	function kidsNoteInsert() {
		var formData= new FormData();
		formData.append("babyId", babyId);
		formData.append("babyName", $("#babyNameInsert").val());
		formData.append("title", $("#titleInsert").val());
		formData.append("file", $("#inputFileUploadInsert")[0].files[0]);
		formData.append("regDt", day_format);
		formData.append("content",$("#contentInsert").val());
		
		
		$.ajax({
  	               type : 'post',
  	               url : '/kidsNote/insertFile',
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
  	                     alertify.success('글이 등록되었습니다.');
  	                     kidsNoteList();
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
	function kids() {
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
	  	
	  			  $("#babyNameInsert").val(data.babyName);
	  			  $("#titleInsert").val(data.babyName+" 어린이 "+day_format);
	  			  $("#dateInsert").val(day_format);
	  			  babyId=data.babyId;
	  			  
	  			 
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
	
	function makeListHtml(list){
        
        $("#kidsNoteTbody").html("");
         
         //var boardArray = JSON.parse(data); ?? @ResponseBody 자동으로 json 변환
         for( var i=0; i<list.length; i++){ 
           var title=list[i].title;
           var regDt = list[i].regDt;
           var kidsnoteFileUrl=list[i].kidsnoteFileUrl;
           var babyId = list[i].babyId;
           var babyName=list[i].babyName;
           var content=list[i].content;
           var kidsnoteId=list[i].kidsnoteId;
           
            //var file_name = list[i].fileName; 
            console.log(kidsnoteFileUrl +" kidsnote");
          
             var listHtml = 
            	 '<div class="col-xl-3 col-lg-4 col-12 col-sm-6 mb-4"> '+
             '<div class="card"> '+
                 '<div class="position-relative"> '+
                     '<img class="card-img-top" src= '+kidsnoteFileUrl+
                             ' alt="Card image cap"></a> '+
                     ' <span class="badge badge-pill badge-theme-1 position-absolute badge-top-left">NEW</span>'+
                 ' </div> '+
                 '<div class="card-body"> '+
                    ' <div class="row"> '+
               
                         '<div class="col-10"> '+
                            
                                 '<p class="kidsNoteItem list-item-heading mb-4 pt-1" data-kidsNoteId='+kidsnoteId+'> '+title+' </p> '+
                             '</a> '+
                             '<footer> '+
                                 '<p class="text-muted text-small mb-0 font-weight-light">'+regDt+' </p> '+
                             '</footer>'+
                             ' </div> '+
                             ' </div> '+
                             ' </div> '+
                             ' </div> '+
                             ' </div> ';
    			
           	
            $("#kidsNoteTbody").append(listHtml);
         }
         
         makeListHtmlEventHandler();
         
         kidsNoteListTotalCnt();
         
      }
	function makeListHtmlEventHandler(){
  	  $("#kidsNoteTbody .kidsNoteItem").click(function(){
  		  //this=tr;
  		  var kidsNoteId = $(this).attr("data-kidsNoteId");
  		//alert(boardId);
  		  kidsNoteDetail(kidsNoteId);
  		
  	  });
    }
	///////////////////////////////////////////////////////////////여기부터 고쳐야함 ///////////////////////////////////
	function kidsNoteUpdate(){
        
        var formData = new FormData();
        formData.append("kidsnoteId", KidsNoteId);
        formData.append("babyId", babyId);
		formData.append("babyName", $("#babyNameUpdate").val());
		formData.append("title", $("#titleUpdate").val());
		formData.append("file", $("#inputFileUploadUpdate")[0].files[0]);
		formData.append("regDt", $("#dateUpdate").val());
		formData.append("content",$("#contentUpdate").val());
        
		
        
        
        $.ajax(
        {
             type : 'post',
             url : '/kidsNote/updateFile',
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
                   alertify.success('글이 수정되었습니다.');
                   kidsNoteList();
                }
             }, 
             error: function(jqXHR, textStatus, errorThrown) 
             {
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
    
    function kidsNoteDelete(){
    	console.log($("#kidsNoteDetailModal").attr("data-kidsNoteId")+"kidsNoteDelete")
  	  $.ajax({
  		  	type:'post',
    			url:'/kidsNote/delete',
    			dataType:'json',
    			data:
    			{
    				kidsNoteId: $("#kidsNoteDetailModal").attr("data-kidsNoteId")
    				
    				
    			},
    			 beforeSend: function(xhr){
        			 xhr.setRequestHeader("AJAX", true);
       		 },
        		 success: function(data, status, xhr){
        			if(data){
        				alertify.success("글이 삭제 되었습니다.");
        				//window.location.href = "/Notice";
        				kidsNoteList();
        				// makeListHtml(data);
        			}
        			
        		 },
        		 error: function(jqXHR, textStatus, errorThrown){
        			 if(jqXHR.responseText =="timeout"){
                         window.location.href = "/login"
                      }else{
                         alertify.notify(
                                'Opps!! 로그인 과정에 문제가 생겼습니다.', 
                                    'error', //'error','warning','message'
                                    3, //-1
                                    function(){
                                //여기       console.log(jqXHR.responseText); 
                                     console.log(jqXHR.responseText); 
                                    });
                      } 
        			 
        		 }	
  	  });
    }
    
    //페이징
    function movePage(pageIndex){
        OFFSET = (pageIndex - 1) * LIST_ROW_COUNT;
        CURRENT_PAGE_INDEX = pageIndex;
        kidsNoteList();
     }
    
    
  //페이징
    function kidsNoteListTotalCnt(){
        
        $.ajax(
        {
             type : 'get',
             url : '/kidsNote/list/totalCnt',
             dataType : 'json',
           
             beforeSend : function(xhr){
                 //xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
                 xhr.setRequestHeader("AJAX", true);
             },
             success : function(data, status, xhr) {
                TOTAL_LIST_ITEM_COUNT = data;
                console.log(TOTAL_LIST_ITEM_COUNT+"COUNT")
                addPagination();
             }, 
             error: function(jqXHR, textStatus, errorThrown) 
             { 
                if( jqXHR.responseText == "timeout" ){
                   window.location.href = "/login"
                }else{
                   alertify.notify(
                       'Opps!! 글 전체 갯수 조회 과정에 문제가 생겼습니다.', 
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
    
	
</script>
 
   <script src="/resources/js/util.js"></script><!-- 페이징 -->
    <script src="/resources/src/js/vendor/bootstrap.bundle.min.js"></script>
    <script src="/resources/src/js/vendor/perfect-scrollbar.min.js"></script>
    <script src="/resources/src/js/vendor/mousetrap.min.js"></script>
    <script src="/resources/src/js/vendor/jquery.contextMenu.min.js"></script>
    <script src="/resources/src/js/dore.script.js"></script>
    <script src="/resources/src/js/scripts.js"></script>
</body>

</html>