
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<head>
<!-- alert 옆에 뜨는 거 넣기 -->
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/alertify.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/alertify.min.css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/default.min.css"/>


    <meta charset="UTF-8">
    <title>Notice</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="stylesheet" href="/resources/css/common.css">
    <link rel="stylesheet" href="/resources/src/font/iconsmind-s/css/iconsminds.css" />
    <link rel="stylesheet" href="/resources/src/font/simple-line-icons/css/simple-line-icons.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/bootstrap.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/bootstrap.rtl.only.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/jquery.contextMenu.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/perfect-scrollbar.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/component-custom-switch.min.css" />
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

                <!-- <div class="dropdown-menu dropdown-menu-right mt-3">
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
                     <li>
                        <a href="/kidsNote">
                            <i class="iconsminds-shop-4"></i>
                            <span>kids Note</span>
                        </a>
                    </li>
                    <li class="active">
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
                        <h1>Notice</h1>
                        <div class="text-zero top-right-button-container">
                            <button type="button" class="btn btn-primary btn-lg top-right-button mr-1" data-toggle="modal" data-target="#boardInsertModal">ADD NEW</button>
                            <div class="btn-group">
                                 
                            
                            </div>
                        </div>
                      

                    </div>

                    <div class="mb-2">
            <!------------------- 검색  -------------------------------------------------------------------------- -->
                       <!--  <div class="collapse d-md-block" id="displayOptions">
                            
                            <div class="d-block d-md-inline-block">
                              
                                <div class="search-sm d-inline-block float-md-left mr-1 mb-1 align-top">
                                    <input placeholder="Search...">
                                </div>
                            </div>
                           
                        </div> -->
                        <div class="form-group">
                       <div class="input-group">
                            <input type="text" id="inputSearchWord" class="form-control" name="" placeholder="제목에서 검색합니다. 검색어를 입력하세요.">
                            <span class="input-group-append">
                              <button id="btnSearchWord" class="btn btn-primary"><i class="icon wb-search" aria-hidden="true"></i></button>
                            </span>
                       </div>
                     </div>
              <!----------------------------------------------------------------------------------------------- -->
                    </div>
                    <div class="separator mb-5"></div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 list"  data-check-all="checkAll">
<!-- -----------------------------------하나의 테이블 한줄 -------------------------------------------- -->
					<div id ="boardTbody">
              		
                    </div>
<!-- ---------------------------------이게 게시물 갯수 만큼 들어가야함....  ----------------------------------------- -->

              	<div id ="paginationWrapper">
              	
              	</div>
                    
				</div>
                
            </div>
         </div>
         
  <!--  Insert Modal -->

        <!-- Insert Modal -->
  <div class="modal fade modal-right" id="boardInsertModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title" id="boardInsertModalTitle">가정통신문쓰기</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        <div class = "row">
        
        <div class = "col-xl-12 form-group">
           <input id="titleInsert" type="text" class="form-control" name="title" placeholder="제목">
           
        </div>
        
        <div class = "col-xl-12 form-group">
           <textarea id="contentInsert"  class="form-control" rows="10" placeholder="내용"></textarea>
           
        </div>
        <!-- 파일 추가  start -->
                           <div class="col-xl-12 form-group">


                              <div class="form-check form-check-flat form-check-primary">
                                 <div class="checkbox-custom checkbox-primary">
                                    <input type="checkbox" id="chkFileUploadInsert" > 
                                    <label for="chkFileUploadInsert">파일 추가</label>
                                 </div>
                              </div>
                              <div class="col-xl-12 form-group" style="display: none;" id="imgFileUploadInsertWrapper">
                                 <input type="file" id="inputFileUploadInsert">
                                 <div class="thumbnail-wrapper">
                                    <img id="imgFileUploadInsert">
                                 </div>
                              </div>
                           </div>
                        <!-- 파일 추가   end-->
        
        <div class = "col-md-12 form-right">
           <button id="btnBoardInsert"  class="btn btn-sm btn-primary btn-outline" data-target ="#myModal" data-dimiss="modal" type="button">등록</button>
           
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
<!-- detail model -->
       <div class="modal fade" id="boardDetailModal" aria-hidden="false" aria-labelledby="boardDetailModalTitle" role="dialog" tabindex="-1">
               <div class="modal-dialog modal-simple">
                  <form class="modal-content">
                     <div class="modal-header">
                     <h4 class="modal-title" id="boardDetailModalTitle" id="">가정통신문 상세</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                           <span aria-hidden="true">×</span>
                        </button>
                        
                     </div>
                     
                     <div class="modal-body">
                     
                  <div class="example table-responsive">
                    <table class="table table-hover">
                      <tbody>
                        <tr><td>가정통신문번호</td><td id ="boardIdDetail">#</td></tr>
                        <tr><td>제목</td><td id="titleDetail">#</td></tr>
                        <tr><td>내용</td><td id="contentDetail">#</td></tr>
                        <tr><td>작성자</td><td id="userNameDetail">#</td></tr>
                        <tr><td>작성일시</td><td id="regDtDetail">#</td></tr>
                        
                        <tr><td>file</td><td id="fileListDetail">#</td></tr>
                      </tbody>
                    </table>
                  </div>
                        <button id="btnBoardUpdateForm" class="btn btn-sm btn-primary btn-outline" data-dismiss="modal" type="button">가정통신문 수정하기</button>
                        <button id="btnBoardDeleteConfirm" class="btn btn-sm btn-warning btn-outline" data-dismiss="modal" type="button">가정통신문 삭제하기</button>
                        <button id="btnBoardCommentForm" class="btn btn-sm btn-info" type="button">덧가정통신문 쓰기</button>
                     </div>
                  </form>
               </div>
            </div>
            <!-- End Modal -->
  
 <!-- Update Modal -->
  <div class="modal fade" id="boardUpdateModal" aria-hidden="false" aria-labelledby="boardUpdateModalTitle" role="dialog" tabindex="-1">
               <div class="modal-dialog modal-simple">
      <form class="modal-content">
      
        <div class="modal-header">
                     <h4 class="modal-title" id="boardDetailModalTitle" id="">가정통신문 수정</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                           <span aria-hidden="true">×</span>
                        </button>
                        
                     </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        <div class = "row">
        
        <div class = "col-xl-12 form-group">
           <input id="titleUpdate" type="text" class="form-control" name="title" placeholder="제목">
           
        </div>
        
        <div class = "col-xl-12 form-group">
           <textarea id="contentUpdate"  class="form-control" rows="10" placeholder="내용"></textarea>
           
        </div>
        <div class="col-xl-12 form-group">
                              첨부파일 : <span id="fileListUpdate"></span>
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
           <button id="btnBoardUpdate" class="btn btn-sm btn-primary btn-outline" data-dimiss="modal" type="button">수정</button>
           
        </div>
                 </div>
        
      
        
      </div>
      </form>
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
   
   //페이징 처리
   /* var limit = 5;
   var offset = 0; */
   var LIST_ROW_COUNT = 5;   //limit
   var OFFSET = 0;
   var PAGE_COUNT_PER_BLOCK = 5;   // pagination link 갯수
   var TOTAL_LIST_ITEM_COUNT = 0;
   var CURRENT_PAGE_INDEX = 1;
   
   //검색////////////////////////////////
   	var SEARCH_WORD="";
   //////////////////////////////////
      $(document).ready(function() {
    	  boardList();
    	  
    	  $("#logout").click(function(){
  			logout();
  		})
    	//Search
          $("#btnSearchWord").click(function(e){
             var searchWord = $("#inputSearchWord").val();
             
             if( searchWord != "" ){
                SEARCH_WORD = searchWord;
             }else{
                SEARCH_WORD = "";
             }
             
             boardList();
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
    	  
         $("#btnBoardInsert").click(function() {
         //   alert("버튼 접근");
         
       		if(validate()){ 
            //alert("boardinsert 접근");
           		 boardInsert();
           		 boardList();
           		 $("#boardInsertModal").modal("hide");
        	 } 
       	
       
       
     	 });
         
         
         $("#btnBoardUpdateForm").click(function(){
   		  var boardId = $("#boardDetailModal").attr("data-boardId");
   		  $("#boardUpdateModal").attr("data-boardId", boardId);
   		  
   		  $("#titleUpdate").val($("#titleDetail").html());
   		  $("#contentUpdate").val($("#contentDetail").html());
   		  
   			var fileName = $("#fileListDetail").find(".fileName").html();
       		 $("#fileListUpdate").html( '<span class="fileName">' + fileName + '</span>');
       		 
       		 //이미지 정리-> 초기화
       		 $("#chkFileUploadUpdate").prop("checked", false);
         	$("#inputFileUploadUpdate").val("");
         	$("#imgFileUploadUpdate").attr("src", "");
         	//$("#imgFileUploadUpdate").removeAttr("src");
         	$("#imgFileUploadUpdateWrapper").hide();
        
   		  $("#boardDetailModal").modal("hide");
   		  $("#boardUpdateModal").modal("show");
   	  	});
   	  
         
         
         
   	  $("#btnBoardUpdate").click(function(){
   		  if(validateUpdate()){
   			  boardUpdate();
   			  boardList();
   			$("#boardUpdateModal").modal("hide");
   		  }
   	  });
   	  
   	  //delete => alert 창소제목 첫번째는 yes 두번째는 no 일때 
   	  $("#btnBoardDeleteConfirm").click(function(){
   		 alertify.confirm(
   				 'delete',
   				 '이 가정통신문을 삭제하시겠습니까?',
   				function(){
   					 boardDelete();
   				 },
   				 function(){
   					 console.log('cancel');
   				 }
   		 );
   		  
   	  });
   	  
   	  //가정통신문쓰기 시 초기화 해주는 거 => 11.19
   	$("#btnBoardInsertForm").click(function(){
        $("#titleInsert").val("");
        $("#contentInsert").val("");
        $("#chkFileUploadInsert").prop("checked", false);
        $("#inputFileUploadInsert").val("");
        $("#imgFileUploadInsert").removeAttr("src");
        //$("#imgFileUploadInsert").attr("src", "");
        $("#imgFileUploadInsertWrapper").hide();
        
        $("#boardInsertModal").modal("show");
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
   
    //11.20 내가 추가 한거
            function boardFileList(data){
    	  console.log("listFile" +data)
    	  $.ajax({
    		  
    		  type: 'get',
    		  url: '/board/listFile',
    		  dataType:'json',
    		  data :{
    			  boardId : data
    		  },
    		  beforeSend: function(xhr){
    			  xhr.setRequestHeader("AJAX",true);
    		  },
    		  success : function(data, status, xhr){
    			  
    			  return data[0].fileUrl;
    			  
    			  
    			 
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
      
   //페이징
      function movePage(pageIndex){
          OFFSET = (pageIndex - 1) * LIST_ROW_COUNT;
          CURRENT_PAGE_INDEX = pageIndex;
          boardList();
       }
      
      function validate(){
         
        // alert("조건 검사 if문");
         var isTitleValid = false;
         var isContentValid = false;
         
         var title = $("#titleInsert").val();
         var titleLength = title.length;
         
         if(titleLength > 0 ){
   
            isTitleValid = true;
         }
         
         var contentValid = $("#contentInsert").val();
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

      <%-- function boardInsert(){
         $.ajax(
         {
            type   : 'post',
            url      : '/board/insert',
            dataType: 'json',
            data :
               {
                  userSeq: '<%=userDto.getUserSeq()%>',
               title: $("#titleInsert").val(),
               content:$("#contentInsert").val()
         },
         beforeSend : function(xhr){
            xhr.setRequestHeader("AJAX", true);
         },
         success : function(data, status, xhr){
            if(data){
               alertify.success('success');
               boardList();// 가정통신문 등록 후 list 보여주기
               //window.location.href = "/Notice";
               
            }
         },
         error: function(jqXHR, textStatus, errorThrown)
         {
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
      } --%>
      function boardInsert(){
          
          var formData = new FormData();
          formData.append("userSeq", '<%=userDto.getUserSeq()%>');
          formData.append("title", $("#titleInsert").val());
          formData.append("content", $("#contentInsert").val());
          formData.append("file", $("#inputFileUploadInsert")[0].files[0]);
          
          $.ajax(
          {
               type : 'post',
               url : '/board/insertFile',
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
                     alertify.success('가정통신문이 등록되었습니다.');
                     boardList();
                  }
               }, 
               error: function(jqXHR, textStatus, errorThrown) 
               { 
                  if( jqXHR.responseText == "timeout" ){
                     window.location.href = "/login"
                  }else{
                     alertify.notify(
                            'Opps!! 가정통신문 등록 과정에 문제가 생겼습니다.', 
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
      
      
      function boardList(){
    	  console.log("list")
    	  $.ajax({
    		  
    		  type: 'get',
    		  url: '/board/list',
    		  dataType:'json',
    		  data :{
    			  limit: LIST_ROW_COUNT,
    			  offset: OFFSET,
    			  searchWord: SEARCH_WORD
    		  },
    		  beforeSend: function(xhr){
    			  xhr.setRequestHeader("AJAX",true);
    		  },
    		  success : function(data, status, xhr){
    			  
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
      
      function makeListHtml(list){
          
         $("#boardTbody").html("");
          
          //var boardArray = JSON.parse(data); ?? @ResponseBody 자동으로 json 변환
          for( var i=0; i<list.length; i++){
             
             var boardId = list[i].boardId;
             var userName = list[i].userName;
            console.log(userName+"boardfile")
             var title = list[i].title;
             var content = list[i].content;
             var regDt = list[i].regDt;
             var readCount = list[i].readCount;
             var file_url = list[i].fileUrl;
             //var file_name = list[i].fileName; 
             console.log(file_url +" boardFile2");
           
              var listHtml = 
            	  //data-boardId 필요 들어갈 수 있으므로
       '<div class=" card d-flex flex-row mb-3" >'+
       		//'+ file_url+'
        ' <img src= '+file_url+' alt="Fat Rascal"'+
                 'class=" list-thumbnail responsive border-0 card-img-left" />'+  
         '</a>'+
         '<div class="pl-2 d-flex flex-grow-1 min-width-zero">'+
             '<div '+
                 'class="card-body align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero align-items-lg-center">'+
                     '<p class="boardItem list-item-heading mb-0 truncate" data-boardId ='+boardId+'>'+title+'</p>'+
                 '</a>'+
                 '<p class="mb-0 text-muted text-small w-15 w-sm-100">'+userName+'</p>'+
                 '<p class="mb-0 text-muted text-small w-15 w-sm-100">'+regDt+'</p>'+
                 
             '</div>'+
             
         '</div>'+
     '</div>'; 
     			
            	
             $("#boardTbody").append(listHtml);
          }
          
          makeListHtmlEventHandler();
          
          boardListTotalCnt();
          
       }
      
      //페이징
      function addPagination(){

          makePaginationHtml(LIST_ROW_COUNT, PAGE_COUNT_PER_BLOCK, CURRENT_PAGE_INDEX, TOTAL_LIST_ITEM_COUNT, "paginationWrapper", boardList );
       }
      
      function makeListHtmlEventHandler(){
    	  $("#boardTbody .boardItem").click(function(){
    		  //this=tr;
    		  var boardId = $(this).attr("data-boardId");
    		//alert(boardId);
    		  boardDetail(boardId);
    		
    	  });
      }
      
      function boardDetail(boardId){
    	  console.log(boardId);
    	   /* $("#boardDetailModal").modal("show");  */
    	  $.ajax(
    	 {
    		 type: 'get',
    		 url: '/board/detail',
    		 dataType: 'json',
    		 data:{
    			 boardId: boardId
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
      
      <%-- function makeDetailHtml(detail){
    	  var boardId = detail.boardId;
    	  var userSeq = detail.userSeq;
    	  var userName  = detail.userName;
    	  var title= detail.title;
    	  var content = detail.content;
    	  var regDt = detail.regDt;
    	  var readCount = detail.readCount;
    	  
    	  $("#boardDetailModal").attr("data-boardId", boardId);// 계속 키값을 가지고 있어야함.
    	  $("#boardIdDetail").html(boardId);
    	  $("#titleDetail").html(title);
    	  $("#contentDetail").html(content);
    	  $("#userNameDetail").html(userName);
    	  $("#regDtDetail").html(regDt);
    	  $("#readCountDetail").html(readCount);
    	  
    	  if(userSeq != '<%=userDto.getUserSeq()%>'){
    		  $("#btnBoardUpdateForm").hide();
    		  $("#btnBoardDeleteConfirm").hide();
    	  }else{
    		  $("#btnBoardUpdateForm").show();
    		  $("#btnBoardDeleteConfirm").show();
    	  }
    	  
    	  $("#boardDetailModal").modal("show");
    	  
    	  //makeDetailHtmlEventHandler();
    	  
    	  
    	  
      } --%>
      
      function makeDetailHtml(detail){
          
          var boardId = detail.boardId;
          var userSeq = detail.userSeq;
          var userName = detail.userName;
          var title = detail.title;
          var content = detail.content;
          var regDt = detail.regDt;
         
          var fileList = detail.fileList;
          
          console.log(fileList+" boardFile");
          
          $("#boardDetailModal").attr("data-boardId", boardId);
          $("#boardIdDetail").html(boardId);
          $("#titleDetail").html(title);
          $("#contentDetail").html(content);
          $("#userNameDetail").html(userName);
          $("#regDtDetail").html(regDt);
        
          
          //FileList
          $("#fileListDetail").html("");
          
          if( fileList.length > 0 ){
             for(var i=0; i<fileList.length; i++){
                var fileId = fileList[i].fileId;
                var fileName = fileList[i].fileName;
                var fileUrl = fileList[i].fileUrl;
                console.log(fileUrl+" boardFile")
                $("#fileListDetail").append(
                      '<span class="fileName">' + fileName + '</span>');
                $("#fileListDetail").append(
                      '&nbsp;&nbsp;<a type="button" class="btn btn-outline btn-default btn-xs" ' +
                      'data-fileId="' + fileId + '" ' +
                      'href="' + fileUrl + '" ' +
                      'download="' + fileName + '">내려받기</a>');
             }
          }
          
          if( userSeq != '<%=userDto.getUserSeq()%>' ){
             $("#btnBoardUpdateForm").hide();
             $("#btnBoardDeleteConfirm").hide();
          }else{
             $("#btnBoardUpdateForm").show();
             $("#btnBoardDeleteConfirm").show();
          }
          
          $("#boardDetailModal").modal("show");
          
       //makeDetailHtmlEventHandler();
    }
     /*  function makeDetailHtmlEventHandler(){
    	  
      } */
      
      /* function boardUpdate(){
    	  $.ajax(
    	{
    		type:'post',
    		url:'/board/update',
    		dataType:'json',
    		data:
    			{
    				boardId: $("#boardUpdateModal").attr("data-boardId"),
    				title: $("#titleUpdate").val(),
    				content: $("#contentUpdate").val(),
    				
    			},
    			 beforeSend: function(xhr){
        			 xhr.setRequestHeader("AJAX", true);
       		 },
        		 success: function(data, status, xhr){
        			if(data){
        				alertify.success("수정되었습니다.");
        				//window.location.href = "/Notice";
        				console.log(data);
        				boardList();
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
      } */
      
      function boardUpdate(){
          
          var formData = new FormData();
          formData.append("boardId", $("#boardUpdateModal").attr("data-boardId"));
          formData.append("userSeq", '<%=userDto.getUserSeq()%>');
          formData.append("title", $("#titleUpdate").val());
          formData.append("content", $("#contentUpdate").val());
          formData.append("file", $("#inputFileUploadUpdate")[0].files[0]);
          
          $.ajax(
          {
               type : 'post',
               url : '/board/updateFile',
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
                     alertify.success('가정통신문이 수정되었습니다.');
                     boardList();
                  }
               }, 
               error: function(jqXHR, textStatus, errorThrown) 
               {
                  if( jqXHR.responseText == "timeout" ){
                     window.location.href = "/login"
                  }else{
                     alertify.notify(
                        'Opps!! 가정통신문 수정 과정에 문제가 생겼습니다.', 
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
      
      function boardDelete(){
    	  $.ajax({
    		  	type:'post',
      			url:'/board/delete',
      			dataType:'json',
      			data:
      			{
      				boardId: $("#boardDetailModal").attr("data-boardId")
      				
      				
      			},
      			 beforeSend: function(xhr){
          			 xhr.setRequestHeader("AJAX", true);
         		 },
          		 success: function(data, status, xhr){
          			if(data){
          				alertify.success("가정통신문이 삭제 되었습니다.");
          				//window.location.href = "/Notice";
          				boardList();
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
      function boardListTotalCnt(){
          
          $.ajax(
          {
               type : 'get',
               url : '/board/list/totalCnt',
               dataType : 'json',
               data:{
            	   searchWord: SEARCH_WORD
               },
               beforeSend : function(xhr){
                   //xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
                   xhr.setRequestHeader("AJAX", true);
               },
               success : function(data, status, xhr) {
                  TOTAL_LIST_ITEM_COUNT = data;
                  addPagination();
               }, 
               error: function(jqXHR, textStatus, errorThrown) 
               { 
                  if( jqXHR.responseText == "timeout" ){
                     window.location.href = "/login"
                  }else{
                     alertify.notify(
                         'Opps!! 가정통신문 전체 갯수 조회 과정에 문제가 생겼습니다.', 
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
    <script src="/resources/src/js/vendor/jquery-3.3.1.min.js"></script>
    <script src="/resources/src/js/vendor/bootstrap.bundle.min.js"></script>
    <script src="/resources/src/js/vendor/perfect-scrollbar.min.js"></script>
    <script src="/resources/src/js/vendor/mousetrap.min.js"></script>
    <script src="/resources/src/js/vendor/jquery.contextMenu.min.js"></script>
    <script src="/resources/src/js/dore.script.js"></script>
    <script src="/resources/src/js/scripts.js"></script>
</body>

</html>