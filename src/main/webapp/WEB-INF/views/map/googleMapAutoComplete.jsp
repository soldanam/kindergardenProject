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
	
    <link rel="stylesheet" href="/resources/src/font/iconsmind-s/css/iconsminds.css" />
    <link rel="stylesheet" href="/resources/src/font/simple-line-icons/css/simple-line-icons.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/bootstrap.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/bootstrap.rtl.only.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/jquery.contextMenu.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/perfect-scrollbar.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/component-custom-switch.min.css" />
    
    
    <link rel="stylesheet" href="/resources/src/css/main.css" />
    
    
    <style>
/* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
#map {
   height: 100%;
}
/* Optional: Makes the sample page fill the window. */
html, body {
   height: 500px;
   margin: 0;
   padding: 0;
}

.place{
   padding: 3px;
}
.place_nm{
   font-size: 18px;
   font-weight: bold;
   margin-bottom: 5px;
}
.place_address{
   margin-bottom: 5px;
}
/* ???? */
.pac-container {
    z-index: 9999;
}
</style>
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
                    <span class="name">Dasol Mother</span>
                    <span>
                        <img alt="Profile Picture" src="/resources/src/img/profile-pic-l.jpg" />
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
                        <a href="/kidsnote">
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
                        <h1>Product Thumbs</h1>
                        <div class="text-zero top-right-button-container">
                            
                        </div>
                        

                    </div>

                    <div class="mb-2">
                        <a class="btn pt-0 pl-0 d-inline-block d-md-none" data-toggle="collapse" href="#displayOptions"
                            role="button" aria-expanded="true" aria-controls="displayOptions">
                            Display Options
                            <i class="simple-icon-arrow-down align-middle"></i>
                        </a>
                        <div class="collapse d-md-block" id="displayOptions">
                            <span class="mr-3 mb-2 d-inline-block float-md-left">
                                <a href="#" class="mr-2 view-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 19 19">
                                        <path class="view-icon-svg" d="M17.5,3H.5a.5.5,0,0,1,0-1h17a.5.5,0,0,1,0,1Z" />
                                        <path class="view-icon-svg" d="M17.5,10H.5a.5.5,0,0,1,0-1h17a.5.5,0,0,1,0,1Z" />
                                        <path class="view-icon-svg" d="M17.5,17H.5a.5.5,0,0,1,0-1h17a.5.5,0,0,1,0,1Z" />
                                    </svg>
                                </a>
                                <a href="#" class="mr-2 view-icon active">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 19 19">
                                        <path class="view-icon-svg" d="M17.5,3H6.5a.5.5,0,0,1,0-1h11a.5.5,0,0,1,0,1Z" />
                                        <path class="view-icon-svg"
                                            d="M3,2V3H1V2H3m.12-1H.88A.87.87,0,0,0,0,1.88V3.12A.87.87,0,0,0,.88,4H3.12A.87.87,0,0,0,4,3.12V1.88A.87.87,0,0,0,3.12,1Z" />
                                        <path class="view-icon-svg"
                                            d="M3,9v1H1V9H3m.12-1H.88A.87.87,0,0,0,0,8.88v1.24A.87.87,0,0,0,.88,11H3.12A.87.87,0,0,0,4,10.12V8.88A.87.87,0,0,0,3.12,8Z" />
                                        <path class="view-icon-svg"
                                            d="M3,16v1H1V16H3m.12-1H.88a.87.87,0,0,0-.88.88v1.24A.87.87,0,0,0,.88,18H3.12A.87.87,0,0,0,4,17.12V15.88A.87.87,0,0,0,3.12,15Z" />
                                        <path class="view-icon-svg"
                                            d="M17.5,10H6.5a.5.5,0,0,1,0-1h11a.5.5,0,0,1,0,1Z" />
                                        <path class="view-icon-svg"
                                            d="M17.5,17H6.5a.5.5,0,0,1,0-1h11a.5.5,0,0,1,0,1Z" /></svg>
                                </a>
                                <a href="#" class="mr-2 view-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 19 19">
                                        <path class="view-icon-svg"
                                            d="M7,2V8H1V2H7m.12-1H.88A.87.87,0,0,0,0,1.88V8.12A.87.87,0,0,0,.88,9H7.12A.87.87,0,0,0,8,8.12V1.88A.87.87,0,0,0,7.12,1Z" />
                                        <path class="view-icon-svg"
                                            d="M17,2V8H11V2h6m.12-1H10.88a.87.87,0,0,0-.88.88V8.12a.87.87,0,0,0,.88.88h6.24A.87.87,0,0,0,18,8.12V1.88A.87.87,0,0,0,17.12,1Z" />
                                        <path class="view-icon-svg"
                                            d="M7,12v6H1V12H7m.12-1H.88a.87.87,0,0,0-.88.88v6.24A.87.87,0,0,0,.88,19H7.12A.87.87,0,0,0,8,18.12V11.88A.87.87,0,0,0,7.12,11Z" />
                                        <path class="view-icon-svg"
                                            d="M17,12v6H11V12h6m.12-1H10.88a.87.87,0,0,0-.88.88v6.24a.87.87,0,0,0,.88.88h6.24a.87.87,0,0,0,.88-.88V11.88a.87.87,0,0,0-.88-.88Z" />
                                    </svg>
                                </a>
                            </span>
                            <div class="d-block d-md-inline-block">
                                <div class="btn-group float-md-left mr-1 mb-1">
                                    <button class="btn btn-outline-dark btn-xs dropdown-toggle" type="button"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Order By
                                    </button>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#">Action</a>
                                        <a class="dropdown-item" href="#">Another action</a>
                                    </div>
                                </div>
                                <div class="search-sm d-inline-block float-md-left mr-1 mb-1 align-top">
                                    <input placeholder="Search...">
                                </div>
                            </div>
                            <div class="float-md-right">
                                <span class="text-muted text-small">Displaying 1-10 of 210 items </span>
                                <button class="btn btn-outline-dark btn-xs dropdown-toggle" type="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    20
                                </button>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="#">10</a>
                                    <a class="dropdown-item active" href="#">20</a>
                                    <a class="dropdown-item" href="#">30</a>
                                    <a class="dropdown-item" href="#">50</a>
                                    <a class="dropdown-item" href="#">100</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="separator mb-5"></div>
                </div>
            </div>

            <div class="row">
                <button id="btnAddPlace" class="btn btn-sm btn-primary btn-outline" data-dismiss="modal" type="button">장소 추가</button>
  <!-- Modal insert-->
            <div class="modal fade" id="addPlaceModal" aria-hidden="false" aria-labelledby="addPlacetModalTitle" role="dialog" tabindex="-1">
               <div class="modal-dialog modal-simple">
                  <form class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                           <span aria-hidden="true">×</span>
                        </button>
                        <h4 class="modal-title" id="addPlaceModalTitle">장소 추가</h4>
                     </div>
                     <div class="modal-body">
                        <div class="row">
                           <div class="col-xl-12 form-group">
                              <input id="inputSearch" type="text" class="form-control" name="title" placeholder="검색어를 입력하세요.">
                           </div>
                           <div class="col-xl-12 form-group" style="height: 500px;">
                              <div id="map"></div>
                           </div>
                           <div class="col-md-12 float-right">
                              <button id="btnAddPlaceInsert" class="btn btn-sm btn-primary btn-outline" data-dismiss="modal" type="button">등록</button>
                           </div>
                        </div>
                     </div>
                  </form>
               </div>
            </div>
            <!-- End Modal -->
                    
				
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
    var MAP_VIEW;
    var DEFAULT_MAP_LOCATION = {lat: 37.5701, lng: 126.9769};   //kwanghwamoon
    var MARKER;
    var SEARCHED_MAP_LEVEL = 12
    
    $(document).ready(function() {

       $("#btnAddPlace").click(function(){
          $("#addPlaceModal").modal("show");
       });
    });
    
    function initMap(){
    
       MAP_VIEW = new google.maps.Map(document.getElementById("map"), {
            center: DEFAULT_MAP_LOCATION,
              scrollwheel: false,
              zoom: 8
         });
       var input = document.getElementById("inputSearch");
       
       var autocomplete = new google.maps.places.Autocomplete(input);
         
         autocomplete.bindTo('bounds', MAP_VIEW);
         
       MARKER = new google.maps.Marker({
             map: MAP_VIEW
           });
           
           google.maps.event.addListener(MARKER, 'click', function() {
             INFO_WINDOW.open(MAP_VIEW, MARKER);
           });
           
           google.maps.event.addListener(autocomplete, 'place_changed', function() {

               //INFO_WINDOW.close();
               var place = autocomplete.getPlace();
               if (!place.geometry) {
                    return;
               }

               if (place.geometry.viewport) {
                    MAP_VIEW.fitBounds(place.geometry.viewport);
               } else {
                    MAP_VIEW.setCenter(place.geometry.location);
                    MAP_VIEW.setZoom(SEARCHED_MAP_LEVEL);
               }

               // Set the position of the marker using the place ID and location.
               MARKER.setPlace(/** @type {!google.maps.Place} */ ({
                    placeId: place.place_id,
                    location: place.geometry.location
               }));
               MARKER.setVisible(true);
              
               
               var place_html = 
                  '<div class="place" ' +
                     'data-place_id="' + place.place_id + '" ' +
                     'data-place_lat="' + place.geometry.location.lat() + '" ' +
                     'data-place_lng="' + place.geometry.location.lng() + '">' +
                  '   <div class="place_nm">' + place.name + '</div>' +
                  '   <div class="place_address">' + place.formatted_address + '</div>' +
                  '   <button type="button" class="btn btn-xs btn-primary btnAddPlace">추가</button>' +
                  '</div>';

               INFO_WINDOW = new google.maps.InfoWindow({
                     content: place_html
               });

               INFO_WINDOW.open(MAP_VIEW, MARKER);

               google.maps.event.addListener(INFO_WINDOW,'domready', add_place_event_handler);
               
             });
           
           
    }
    
    function add_place_event_handler(){

        $(".btnAddPlace").click(function(){

           var place_id = $(this).closest(".place").data("place_id");
           var place_lat = $(this).closest(".place").data("place_lat");
           var place_lng = $(this).closest(".place").data("place_lng");
           var place_nm = $(this).closest(".place").find(".place_nm").html();
           var place_address = $(this).closest(".place").find(".place_address").html();

           console.log("place_id : " + place_id);
           console.log("place_lat : " + place_lat);   
           console.log("place_lng : " + place_lng);   
           console.log("place_nm : " + place_nm);   
           console.log("place_address : " + place_address);   
           
           INFO_WINDOW.close();
        });
     }
    
    </script>
   <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCy2xqykOJg7SK3h5tEpV7tOlLx0yD5Et4&libraries=places&callback=initMap"
      async defer></script>
   
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