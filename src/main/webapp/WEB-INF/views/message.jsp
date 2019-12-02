<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>message</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link rel="stylesheet" href="/resources/src/font/iconsmind-s/css/iconsminds.css" />
    <link rel="stylesheet" href="/resources/src/font/simple-line-icons/css/simple-line-icons.css" />

    <link rel="stylesheet" href="/resources/src/css/vendor/bootstrap.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/bootstrap.rtl.only.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/component-custom-switch.min.css" />
    <link rel="stylesheet" href="/resources/src/css/vendor/perfect-scrollbar.css" />
    <link rel="stylesheet" href="/resources/src/css/main.css" />
</head>

<body id="app-container" class="menu-sub-hidden show-spinner no-footer">
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
                    <li class="active">
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
            <div class="row app-row">
                <div class="col-12 chat-app">
                    <div class="d-flex flex-row justify-content-between mb-3 chat-heading-container">
                        <div class="d-flex flex-row chat-heading">
                            <a class="d-flex" href="#">
                                <img alt="Profile Picture" src="/resources/src/img/profile-pic-l.jpg"
                                    class="img-thumbnail border-0 rounded-circle ml-0 mr-4 list-thumbnail align-self-center small">
                            </a>
                            <div class=" d-flex min-width-zero">
                                <div
                                    class="card-body pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                    <div class="min-width-zero">
                                        <a href="#">
                                            <p class="list-item-heading mb-1 truncate ">Sarah Kortney</p>
                                        </a>
                                        <p class="mb-0 text-muted text-small">Last seen today 01:24</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="separator mb-5"></div>

                    <div class="scroll">
                        <div class="scroll-content">
                            <div class="card d-inline-block mb-3 float-left mr-2">
                                <div class="position-absolute pt-1 pr-2 r-0">
                                    <span class="text-extra-small text-muted">09:25</span>
                                </div>
                                <div class="card-body">
                                    <div class="d-flex flex-row pb-2">
                                        <a class="d-flex" href="#">
                                            <img alt="Profile Picture" src="/resources/src/img/profile-pic-l.jpg"
                                                class="img-thumbnail border-0 rounded-circle mr-3 list-thumbnail align-self-center xsmall">
                                        </a>
                                        <div class=" d-flex flex-grow-1 min-width-zero">
                                            <div
                                                class="m-2 pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                                <div class="min-width-zero">
                                                    <p class="mb-0 truncate list-item-heading">Sarah Kortney</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="chat-text-left">
                                        <p class="mb-0 text-semi-muted">
                                            What do you think about our plans for this product launch?
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="card d-inline-block mb-3 float-left mr-2">
                                <div class="position-absolute pt-1 pr-2 r-0">
                                    <span class="text-extra-small text-muted">09:28</span>
                                </div>
                                <div class="card-body">
                                    <div class="d-flex flex-row pb-2">
                                        <a class="d-flex" href="#">
                                            <img alt="Profile Picture" src="/resources/src/img/profile-pic-l.jpg"
                                                class="img-thumbnail border-0 rounded-circle mr-3 list-thumbnail align-self-center xsmall">
                                        </a>
                                        <div class=" d-flex flex-grow-1 min-width-zero">
                                            <div
                                                class="m-2 pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                                <div class="min-width-zero">
                                                    <p class="mb-0 truncate list-item-heading">Sarah Kortney</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="chat-text-left">
                                        <p class="mb-0 text-semi-muted">
                                            It looks to me like you have a lot planned before your deadline. I would
                                            suggest you push your deadline back so you have
                                            time to run a successful advertising campaign.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="card d-inline-block mb-3 float-left mr-2">
                                <div class="position-absolute pt-1 pr-2 r-0">
                                    <span class="text-extra-small text-muted">09:30</span>
                                </div>
                                <div class="card-body">
                                    <div class="d-flex flex-row pb-2">
                                        <a class="d-flex" href="#">
                                            <img alt="Profile Picture" src="/resources/src/img/profile-pic-l.jpg"
                                                class="img-thumbnail border-0 rounded-circle mr-3 list-thumbnail align-self-center xsmall">
                                        </a>
                                        <div class="d-flex flex-grow-1 min-width-zero">
                                            <div
                                                class="m-2 pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                                <div class="min-width-zero">
                                                    <p class="mb-0 truncate list-item-heading">Sarah Kortney</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="chat-text-left">
                                        <p class="mb-0 text-semi-muted">
                                            How do you think we should move forward with this project? As you know, we
                                            are
                                            expected to present it to our clients next
                                            week. </p>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="card d-inline-block mb-3 float-right  mr-2">
                                <div class="position-absolute pt-1 pr-2 r-0">
                                    <span class="text-extra-small text-muted">09:41</span>
                                </div>
                                <div class="card-body">
                                    <div class="d-flex flex-row pb-2">
                                        <a class="d-flex" href="#">
                                            <img alt="Profile Picture" src="/resources/src/img/profile-pic-l-4.jpg"
                                                class="img-thumbnail border-0 rounded-circle mr-3 list-thumbnail align-self-center xsmall">
                                        </a>
                                        <div class="d-flex flex-grow-1 min-width-zero">
                                            <div
                                                class="m-2 pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                                <div class="min-width-zero">
                                                    <p class="mb-0 list-item-heading truncate">Mimi Carreira</p>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="chat-text-left">
                                        <p class="mb-0 text-semi-muted">
                                            I would suggest you discuss this further with the advertising team.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="card d-inline-block mb-3 float-right  mr-2">
                                <div class="position-absolute pt-1 pr-2 r-0">
                                    <span class="text-extra-small text-muted">09:41</span>
                                </div>
                                <div class="card-body">
                                    <div class="d-flex flex-row pb-2">
                                        <a class="d-flex" href="#">
                                            <img alt="Profile Picture" src="/resources/src/img/profile-pic-l-4.jpg"
                                                class="img-thumbnail border-0 rounded-circle mr-3 list-thumbnail align-self-center xsmall">
                                        </a>
                                        <div class="d-flex flex-grow-1 min-width-zero">
                                            <div
                                                class="m-2 pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                                <div class="min-width-zero">
                                                    <p class="mb-0 list-item-heading truncate">Mimi Carreira</p>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="chat-text-left">
                                        <p class="mb-0 text-semi-muted">
                                            I am very busy at the moment and on top of everything, I forgot my umbrella
                                            today.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="card d-inline-block mb-3 float-right mr-2">
                                <div class="position-absolute pt-1 pr-2 r-0">
                                    <span class="text-extra-small text-muted">09:41</span>
                                </div>
                                <div class="card-body">
                                    <div class="d-flex flex-row pb-2">
                                        <a class="d-flex" href="#">
                                            <img alt="Profile Picture" src="/resources/src/img/profile-pic-l-4.jpg"
                                                class="img-thumbnail border-0 rounded-circle mr-3 list-thumbnail align-self-center xsmall">
                                        </a>
                                        <div class="d-flex flex-grow-1 min-width-zero">
                                            <div
                                                class="m-2 pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                                <div class="min-width-zero">
                                                    <p class="mb-0 list-item-heading truncate">Mimi Carreira</p>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="chat-text-left">
                                        <p class="mb-0 text-semi-muted">
                                            I am very busy at the moment and on top of everything, I forgot my umbrella
                                            today.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div class="app-menu">
            <ul class="nav nav-tabs card-header-tabs ml-0 mr-0 mb-1" role="tablist">
                <li class="nav-item w-50 text-center">
                    <a class="nav-link active" id="first-tab" data-toggle="tab" href="#firstFull" role="tab"
                        aria-selected="true">Messages</a>
                </li>
                <li class="nav-item w-50 text-center">
                    <a class="nav-link" id="second-tab" data-toggle="tab" href="#secondFull" role="tab"
                        aria-selected="false">Contacts</a>
                </li>
            </ul>

            <div class="p-4 h-100">
                <div class="form-group">
                    <input type="text" class="form-control rounded" placeholder="Search">
                </div>
                <div class="tab-content h-100">
                    <div class="tab-pane fade show active  h-100" id="firstFull" role="tabpanel"
                        aria-labelledby="first-tab">

                        <div class="scroll">

                            <div class="d-flex flex-row mb-1 border-bottom pb-3 mb-3">
                                <a class="d-flex" href="#">
                                    <img alt="Profile Picture" src="/resources/src/img/profile-pic-l.jpg"
                                        class="img-thumbnail border-0 rounded-circle mr-3 list-thumbnail align-self-center xsmall">
                                </a>
                                <div class="d-flex flex-grow-1 min-width-zero">
                                    <div
                                        class="pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                        <div class="min-width-zero">
                                            <a href="#">
                                                <p class=" mb-0 truncate">Sarah Kortney</p>
                                            </a>
                                            <p class="mb-1 text-muted text-small">14:20</p>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="d-flex flex-row mb-1 border-bottom pb-3 mb-3">
                                <a class="d-flex" href="#">
                                    <img alt="Profile Picture" src="/resources/src/img/profile-pic-l-2.jpg"
                                        class="img-thumbnail border-0 rounded-circle mr-3 list-thumbnail align-self-center xsmall">
                                </a>
                                <div class="d-flex flex-grow-1 min-width-zero">
                                    <div
                                        class="pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                        <div class="min-width-zero">
                                            <a href="#">
                                                <p class=" mb-0 truncate">Rasheeda Vaquera</p>
                                            </a>
                                            <p class="mb-1 text-muted text-small">11:10</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex flex-row mb-1 border-bottom pb-3 mb-3">
                                <a class="d-flex" href="#">
                                    <img alt="Profile Picture" src="/resources/src/img/profile-pic-l-3.jpg"
                                        class="img-thumbnail border-0 rounded-circle mr-3 list-thumbnail align-self-center xsmall">
                                </a>
                                <div class="d-flex flex-grow-1 min-width-zero">
                                    <div
                                        class="pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                        <div class="min-width-zero">
                                            <a href="#">
                                                <p class=" mb-0 truncate">Shelia Otterson</p>
                                            </a>
                                            <p class="mb-1 text-muted text-small">09:50</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex flex-row mb-1  pb-3 mb-3">
                                <a class="d-flex" href="#">
                                    <img alt="Profile Picture" src="/resources/src/img/profile-pic-l-4.jpg"
                                        class="img-thumbnail border-0 rounded-circle mr-3 list-thumbnail align-self-center xsmall">
                                </a>
                                <div class="d-flex flex-grow-1 min-width-zero">
                                    <div
                                        class="pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                        <div class="min-width-zero">
                                            <a href="#">
                                                <p class=" mb-0 truncate">Latarsha Gama</p>
                                            </a>
                                            <p class="mb-1 text-muted text-small">09:10</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane fade  h-100" id="secondFull" role="tabpanel" aria-labelledby="second-tab">
                        <div class="scroll">

                            <div class="d-flex flex-row mb-3 border-bottom pb-3">
                                <a class="d-flex" href="#">
                                    <img alt="Profile Picture" src="/resources/src/img/profile-pic-l.jpg"
                                        class="img-thumbnail border-0 rounded-circle mr-3 list-thumbnail align-self-center xsmall">
                                </a>
                                <div class="d-flex flex-grow-1 min-width-zero">
                                    <div
                                        class="m-2 pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                        <div class="min-width-zero">
                                            <a href="#">
                                                <p class="mb-0 truncate">Sarah Kortney</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex flex-row mb-3 border-bottom pb-3">
                                <a class="d-flex" href="#">
                                    <img alt="Profile Picture" src="/resources/src/img/profile-pic-l-2.jpg"
                                        class="img-thumbnail border-0 rounded-circle mr-3 list-thumbnail align-self-center xsmall">
                                </a>
                                <div class="d-flex flex-grow-1 min-width-zero">
                                    <div
                                        class="m-2 pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                        <div class="min-width-zero">
                                            <a href="#">
                                                <p class="mb-0 truncate">Williemae Lagasse</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex flex-row mb-3 border-bottom pb-3">
                                <a class="d-flex" href="#">
                                    <img alt="Profile Picture" src="/resources/src/img/profile-pic-l-3.jpg"
                                        class="img-thumbnail border-0 rounded-circle mr-3 list-thumbnail align-self-center xsmall">
                                </a>
                                <div class="d-flex flex-grow-1 min-width-zero">
                                    <div
                                        class="m-2 pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                        <div class="min-width-zero">
                                            <a href="#">
                                                <p class="mb-0 truncate">Tommy Nash</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex flex-row mb-3 border-bottom pb-3">
                                <a class="d-flex" href="#">
                                    <img alt="Profile Picture" src="/resources/src/img/profile-pic-l-4.jpg"
                                        class="img-thumbnail border-0 rounded-circle mr-3 list-thumbnail align-self-center xsmall">
                                </a>
                                <div class="d-flex flex-grow-1 min-width-zero">
                                    <div
                                        class="m-2 pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                        <div class="min-width-zero">
                                            <a href="#">
                                                <p class="mb-0 truncate">Mayra Sibley</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex flex-row mb-3 border-bottom pb-3">
                                <a class="d-flex" href="#">
                                    <img alt="Profile Picture" src="/resources/src/img/profile-pic-l-5.jpg"
                                        class="img-thumbnail border-0 rounded-circle mr-3 list-thumbnail align-self-center xsmall">
                                </a>
                                <div class="d-flex flex-grow-1 min-width-zero">
                                    <div
                                        class="m-2 pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                        <div class="min-width-zero">
                                            <a href="#">
                                                <p class="mb-0 truncate">Kathryn Mengel</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex flex-row mb-3 border-bottom pb-3">
                                <a class="d-flex" href="#">
                                    <img alt="Profile Picture" src="/resources/src/img/profile-pic-l-2.jpg"
                                        class="img-thumbnail border-0 rounded-circle mr-3 list-thumbnail align-self-center xsmall">
                                </a>
                                <div class="d-flex flex-grow-1 min-width-zero">
                                    <div
                                        class="m-2 pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                        <div class="min-width-zero">
                                            <a href="#">
                                                <p class="mb-0 truncate">Williemae Lagasse</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex flex-row mb-3 border-bottom pb-3">
                                <a class="d-flex" href="#">
                                    <img alt="Profile Picture" src="/resources/src/img/profile-pic-l-3.jpg"
                                        class="img-thumbnail border-0 rounded-circle mr-3 list-thumbnail align-self-center xsmall">
                                </a>
                                <div class="d-flex flex-grow-1 min-width-zero">
                                    <div
                                        class="m-2 pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                        <div class="min-width-zero">
                                            <a href="#">
                                                <p class="mb-0 truncate">Tommy Nash</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex flex-row mb-3 border-bottom pb-3">
                                <a class="d-flex" href="#">
                                    <img alt="Profile Picture" src="/resources/src/img/profile-pic-l-4.jpg"
                                        class="img-thumbnail border-0 rounded-circle mr-3 list-thumbnail align-self-center xsmall">
                                </a>
                                <div class="d-flex flex-grow-1 min-width-zero">
                                    <div
                                        class="m-2 pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                        <div class="min-width-zero">
                                            <a href="#">
                                                <p class="mb-0 truncate">Mayra Sibley</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex flex-row mb-3 border-bottom pb-3">
                                <a class="d-flex" href="#">
                                    <img alt="Profile Picture" src="/resources/src/img/profile-pic-l-3.jpg"
                                        class="img-thumbnail border-0 rounded-circle mr-3 list-thumbnail align-self-center xsmall">
                                </a>
                                <div class="d-flex flex-grow-1 min-width-zero">
                                    <div
                                        class="m-2 pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                        <div class="min-width-zero">
                                            <a href="#">
                                                <p class="mb-0 truncate">Tommy Nash</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex flex-row mb-3 border-bottom pb-3">
                                <a class="d-flex" href="#">
                                    <img alt="Profile Picture" src="/resources/src/img/profile-pic-l-4.jpg"
                                        class="img-thumbnail border-0 rounded-circle mr-3 list-thumbnail align-self-center xsmall">
                                </a>
                                <div class="d-flex flex-grow-1 min-width-zero">
                                    <div
                                        class="m-2 pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                        <div class="min-width-zero">
                                            <a href="#">
                                                <p class="mb-0 truncate">Mayra Sibley</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex flex-row mb-3 border-bottom pb-3">
                                <a class="d-flex" href="#">
                                    <img alt="Profile Picture" src="/resources/src/img/profile-pic-l-5.jpg"
                                        class="img-thumbnail border-0 rounded-circle mr-3 list-thumbnail align-self-center xsmall">
                                </a>
                                <div class="d-flex flex-grow-1 min-width-zero">
                                    <div
                                        class="m-2 pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                        <div class="min-width-zero">
                                            <a href="#">
                                                <p class="mb-0 truncate">Kathryn Mengel</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex flex-row mb-3 border-bottom pb-3">
                                <a class="d-flex" href="#">
                                    <img alt="Profile Picture" src="/resources/src/img/profile-pic-l-2.jpg"
                                        class="img-thumbnail border-0 rounded-circle mr-3 list-thumbnail align-self-center xsmall">
                                </a>
                                <div class="d-flex flex-grow-1 min-width-zero">
                                    <div
                                        class="m-2 pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                        <div class="min-width-zero">
                                            <a href="#">
                                                <p class="mb-0 truncate">Williemae Lagasse</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex flex-row mb-3 border-bottom pb-3">
                                <a class="d-flex" href="#">
                                    <img alt="Profile Picture" src="/resources/src/img/profile-pic-l-3.jpg"
                                        class="img-thumbnail border-0 rounded-circle mr-3 list-thumbnail align-self-center xsmall">
                                </a>
                                <div class="d-flex flex-grow-1 min-width-zero">
                                    <div
                                        class="m-2 pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                        <div class="min-width-zero">
                                            <a href="#">
                                                <p class="mb-0 truncate">Tommy Nash</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex flex-row mb-3 pb-3">
                                <a class="d-flex" href="#">
                                    <img alt="Profile Picture" src="/resources/src/img/profile-pic-l-4.jpg"
                                        class="img-thumbnail border-0 rounded-circle mr-3 list-thumbnail align-self-center xsmall">
                                </a>
                                <div class="d-flex flex-grow-1 min-width-zero">
                                    <div
                                        class="m-2 pl-0 align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero">
                                        <div class="min-width-zero">
                                            <a href="#">
                                                <p class="mb-0 truncate">Mayra Sibley</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <a class="app-menu-button d-inline-block d-xl-none" href="#">
                <i class="simple-icon-options"></i>
            </a>
        </div>

        <div class="chat-input-container d-flex justify-content-between align-items-center">
            <input class="form-control flex-grow-1" type="text" placeholder="Say something...">
            <div>
                <button type="button" class="btn btn-outline-primary icon-button large">
                    <i class="simple-icon-paper-clip"></i>
                </button>
                <button type="button" class="btn btn-primary icon-button large">
                    <i class="simple-icon-arrow-right"></i>
                </button>

            </div>
        </div>
    </main>

    <script src="/resources/src/js/vendor/jquery-3.3.1.min.js"></script>
    <script src="/resources/src/js/vendor/bootstrap.bundle.min.js"></script>
    <script src="/resources/src/js/vendor/perfect-scrollbar.min.js"></script>
    <script src="/resources/src/js/vendor/mousetrap.min.js"></script>
    <script src="/resources/src/js/dore.script.js"></script>
    <script src="/resources/src/js/scripts.js"></script>
</body>

</html>