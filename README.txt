//////////////style.css
/****************************************************
*****************************************************
	1. Navigation
	2. Logo/Headline
	3. Image/Video
	4. Content Bar
	5. Footer
*****************************************************
****************************************************/
.background {
    position: fixed;
    top: 0;
    left: 0;
    min-width: 100%;
    min-height: 100%;
    z-index: -1;
}

/*body {
    background: #2548ae url("/CircleDeLuz/assets/img/bg.png") repeat-x scroll 0 0;
}*/
/****************************************************
	1. Navigation
****************************************************/
.navbar {
    margin-top: 20px;
    background-color: rgba(255, 255, 255, 0.7);
    border-radius: 0;
    min-height: 35px;
    border: none;
    position: static;
}

    .navbar .nav > li {
        z-index: 1001;
    }

    .navbar > .container > #navbar > .nav > li {
        font-family: "Myriad Pro";
        font-size: 18px;
        font-style: normal;
        color: black;
    }

    .navbar > .container > #navbar > .nav li.current > a {
        background: #3c55b1;
        /** dark blue 3C55B1; **/
        color: white;
    }

    .navbar > .container > #navbar > .nav > .open .dropdown-toggle {
        background: #5797eb;
        /** light blue **/
    }

    .navbar > .container > #navbar > .nav li > a:hover {
        background-color: #5797eb;
        color: white;
    }

    .navbar > .container > #navbar > .nav li.icon > a:hover {
        background-color: transparent;
    }

    .navbar > .container > #navbar > .nav li.icon > a {
        padding: 4px 3px 0 0;
    }

    .navbar > .container > #navbar > .navbar-right .donate {
        color:#06056C;
        font-size:18px;
        font-weight:bold;
    }

.ie8 .navbar > .container > #navbar > .navbar-right .icon,
.ie7 .navbar > .container > #navbar > .navbar-right .icon {
    padding-top: 3px;
    /* for non-collapsed only*/
}

.navbar-nav > li > a {
    padding-bottom: 10px;
    padding-top: 15px;
}

@media screen and (max-width: 768px) {
    /** collapsed **/
    #navbar > .navbar-right > li > .nav {
        margin-left: 15px;
    }

        #navbar > .navbar-right > li > .nav > li.icon {
            display: inline;
            padding: 0;
        }

            #navbar > .navbar-right > li > .nav > li.icon > a {
                display: inline;
                padding: 0;
            }

    .navbar-nav {
        margin-right: 0;
    }
}

@media screen and (min-width: 100px) and (max-width: 767px) {
    .navbar > .container > #navbar > .navbar-right > li > a.donateNav {
        color: #cbb8ac !important;
        background-color: #3c20ee;
        padding: 8px 3px 3px 3px;
        margin-top: 10px;
        margin-left: 10px;
        width: 80px;
    }
}

@media screen and (min-width: 768px) {
    .navbar > .container > #navbar > .nav li.dropdown:hover > ul.dropdown-menu {
        display: block;
    }

    #navbar > .nav > .dropdown:hover {
        background: #5797eb;
    }
}

@media screen and (min-width: 768px) and (max-width: 992px) {
    .navbar > .container > #navbar > .nav > li > a {
        padding-right: 5px;
        padding-left: 5px;
        margin: 0 2px;
        font-size: 14px;
    }
}

@media screen and (min-width: 768px) {
    .navbar > .container > #navbar > .nav > li {
        padding-right: 0;
    }
}

@media (min-width: 1200px) {
    .navbar > .container > #navbar > .nav > li {
        padding-right: 0;
        margin-right: 20px;
    }
}
/****************************************************
	2. Logo/Headline
****************************************************/
.logo img {
    width: 185px;
    height: 185px;
}

.headline {
    color: #3a53b1;
    margin-top: 10px;
}

.bold {
    font-weight: bold;
}

.darkBlue {
    color: #2F3B96;
}

.headline div:first-child {
    font-size: 1.9em;
}

.headline .spark {
    font-size: 2.9em;
}

@media screen and (max-width: 768px) {
    .headline {
        text-align: center;
    }

    .logo {
        /*text-align: center; for small resolution*/
    }

    .headline div:first-child {
        font-size: 20px;
    }

    .headline .spark {
        font-size: 30px;
    }
}

@media screen and (max-width: 768px) {
    .headline div:first-child {
        font-size: 18px;
    }

    .headline .spark {
        font-size: 25px;
    }
}

@media screen and (min-width: 768px) and (max-width: 992px) {
    .headline div:first-child {
        font-size: 20px;
    }

    .headline .spark {
        font-size: 30px;
    }
}

@media screen and (min-width: 768px) {
    .headline div {
        float: right;
    }
}

@media screen and (min-width: 768px) and (max-width: 1200px) {
    .logo img {
        width: 130px;
        height: 130px;
    }
}
/****************************************************
	3. Image/Video
****************************************************/
.image-container {
    position: relative;
    top: -50px;
    -webkit-transform-origin: 10% 10%;
    -moz-transform-origin: 10% 10%;
    -ms-transform-origin: 10% 10%;
    -o-transform-origin: 10% 10%;
    transform-origin: 10% 10%;
    *margin-left: 5px;
    *padding-right: 30px;
    *padding-bottom: 35px;
}

.image1,
.image2,
.image3,
.image4,
.image5 {
    position: relative;
}

.video {
    height: 260px;
    width: 430px;
    clear: right;
    margin: 0 auto;
    margin-bottom: 10px;
    border: 10px solid black;
}

    .video iframe {
        width: 100%;
        height: 100%;
    }

.image1 {
    top: 115px;
    left: 80px;
    z-index: 1;
    width: 63.5px;
    /** 173  **/
    height: 63px;
    /**  172 **/
}

.image2 {
    top: 90px;
    left: 60px;
    width: 68.5px;
    /** 193  **/
    height: 68px;
    /**  192 **/
}

.image3 {
    top: 130px;
    left: 30px;
    z-index: 1;
    width: 82.5px;
    /**  255 **/
    height: 82px;
    /** 254  **/
}

.image4 {
    top: 85px;
    left: 10px;
    z-index: 1;
    width: 61.5px;
    /**  165 **/
    height: 61.5px;
    /** 165  **/
}

.image5 {
    top: 140px;
    left: -50px;
    z-index: 1;
    width: 60px;
    /** 160  **/
    height: 60px;
    /** 160  **/
}

@media screen and (max-width: 300px) {
    .image-container {
        left: -80px;
    }
}

@media screen and (min-width: 300px) and (max-width: 380px) {
    .video {
        width: 240px;
        /* Small video for very small screens*/
        height: 140px;
    }

    .image-container {
        left: -40px;
    }
}

@media screen and (max-width: 450px) {
    .video {
        width: auto;
        height: auto;
    }
}

@media screen and (min-width: 380px) {
    .image-container {
        left: -50px;
    }

    .image1 {
        top: 115px;
        left: 80px;
        z-index: 1;
        width: 86.5px;
        /** 173  **/
        height: 86px;
        /**  172 **/
    }

    .image2 {
        top: 70px;
        left: 60px;
        width: 96.5px;
        /** 193  **/
        height: 96px;
        /**  192 **/
    }

    .image3 {
        top: 140px;
        left: 10px;
        z-index: 1;
        width: 127.5px;
        /**  255 **/
        height: 127px;
        /** 254  **/
    }

    .image4 {
        top: -20px;
        left: 300px;
        z-index: 1;
        width: 82.5px;
        /**  165 **/
        height: 82.5px;
        /** 165  **/
    }

    .image5 {
        top: 50px;
        left: 230px;
        z-index: 1;
        width: 80px;
        /** 160  **/
        height: 80px;
        /** 160  **/
    }
}

@media screen and (min-width: 768px) and (max-width: 992px) {
    .video {
        width: 385px;
        height: 220px;
        position: relative;
        top: -30px;
        float: right;
        *left: -40px;
        border: 5px solid black;
    }

    .image-container {
        top: -100px;
        left: -160px;
    }

    .image1 {
        top: 115px;
        left: 80px;
        z-index: 1;
        width: 86.5px;
        /** 173  **/
        height: 86px;
        /**  172 **/
    }

    .image2 {
        top: 70px;
        left: 60px;
        width: 96.5px;
        /** 193  **/
        height: 96px;
        /**  192 **/
    }

    .image3 {
        top: 140px;
        left: 10px;
        z-index: 1;
        width: 127.5px;
        /**  255 **/
        height: 127px;
        /** 254  **/
    }

    .image4 {
        top: -20px;
        left: 300px;
        z-index: 1;
        width: 82.5px;
        /**  165 **/
        height: 82.5px;
        /** 165  **/
    }

    .image5 {
        top: 50px;
        left: 230px;
        z-index: 1;
        width: 80px;
        /** 160  **/
        height: 80px;
        /** 160  **/
    }
}

@media screen and (min-width: 992px) {
    .video {
        position: relative;
        *left: -290px;
        float: right;
        top: -20px;
    }

    .image-container {
        top: -110px;
        left: -150px;
    }

    .image1 {
        top: 110px;
        left: 45px;
        z-index: 1;
        width: 129.75px;
        /** 173  **/
        height: 129px;
        /**  172 **/
    }

    .image2 {
        top: 30px;
        left: 1px;
        width: 144.75px;
        /** 193  **/
        height: 145px;
        /**  192 **/
    }

    .image3 {
        top: 120px;
        left: -45px;
        z-index: 1;
        width: 191.25px;
        /**  255 **/
        height: 192px;
        /** 254  **/
    }

    .image4 {
        top: -130px;
        left: 390px;
        z-index: 1;
        width: 123.75px;
        /**  165 **/
        height: 123.75px;
        /** 165  **/
    }

    .image5 {
        top: -30px;
        left: 290px;
        z-index: 1;
        width: 120px;
        /** 160  **/
        height: 120px;
        /** 160  **/
    }
}

@media (min-width: 1200px) {
    .image-container {
        top: -100px;
        left: -115px;
        *padding-right: 30px;
        *padding-bottom: 35px;
    }

    .image1 {
        top: 110px;
        left: 0px;
        width: 173px;
        height: 172px;
    }

    .image2 {
        top: 30px;
        left: -40px;
        width: 193px;
        height: 192px;
    }

    .image3 {
        top: 120px;
        left: -110px;
        width: 255px;
        height: 254px;
    }

    .image4 {
        top: -230px;
        left: 450px;
        width: 165px;
        height: 165px;
    }

    .image5 {
        top: -90px;
        left: 340px;
        width: 160px;
        height: 160px;
    }
}
/****************************************************
	4. Content Bar
****************************************************/
.content {
    color: white;
    background-color: #081069;
    background-color: rgba(7, 16, 106, 0.8);
    padding: 10px 0 20px 0;
}

.title {
    font-size: 1.1em;
    font-weight: bold;
    margin-bottom: 0;
}

.home-mission > .title {
    color: yellow;
}

.home-news-link,
.home-blog-link {
    color: white;
    text-decoration: underline;
}

@media screen and (min-width: 768px) {
    .content {
        position: relative;
        top: -50px;
    }
}

@media screen and (min-width: 992px) {
    .home-blog {
        max-width: 150px;
        *max-width: 100px;
    }

    content .home-mission {
        /*margin-left: 25px;*/
    }
}
/****************************************************
	5. Footer
****************************************************/
.footer {
    color: white;
    text-align: center;
    margin: 30px 0 20px;
    clear: both;
    font-family: Arial;
    font-size: 16px;
}
/*# sourceMappingURL=style.css.map */










///////////sidebar.css
aside {
    margin: 30px 0;
}

    aside h2 {
        background-image: url("../assets/img/sidebar-header.png");
        background-size: cover;
        color: #fff;
        font-size: 20px;
        padding-bottom: 20px;
        padding-top: 10px;
        padding-left: 13px;
        margin-left: -12px;
    }

    aside .mission p {
        font-size: 13px;
        line-height: 1.5;
        padding: 0 20px 20px 20px;
    }

    aside > div {
        background: #f0eee4;
        border-radius: 10px;
    }

    aside .support > div {
        padding: 15px 20px 20px 20px;
    }

    aside .support > div {
        border-top: 2px solid black;
    }

        aside .support > div:first-of-type {
            padding-top: 0;
            border-top: 0;
        }

    aside div p:first-child {
        font-weight: bold;
    }

    aside .donate .note {
        font-size: 11px;
    }

    aside .donate .donate-amount {
        text-align: left;
        width: 200px;
        padding-left: 0;
        list-style: none;
    }

        aside .donate .donate-amount input {
            padding-bottom: 10px;
        }

@media screen and (max-width: 992px) {
    aside {
        text-align: center;
    }

        aside .donate-amount {
            margin: 0 auto;
            padding-left: 35px;
        }
}










///////jcarousel.basic.css
.jcarousel-wrapper {
    margin: 0 auto;
    position: relative;
    *height: 400px;
}

@media screen and (max-width: 768px) {
    .jcarousel-wrapper, .jcarousel li {
        width: 400px;
        height: 270px;
    }
}

@media screen and (min-width: 768px) and (max-width:992px) {
    .jcarousel-wrapper, .jcarousel li {
        width: 400px;
        height: 320px;
    }
}

@media screen and (min-width: 992px) and (max-width:1200px) {
    .jcarousel-wrapper, .jcarousel li {
        width: 540px;
        height: 320px;
    }
}

@media screen and (min-width: 1200px) {
    .jcarousel-wrapper {
        width: 700px;
        height: 420px;
    }

    .jcarousel li {
        height: 420px;
        width: 700px;
    }
}


/** Carousel **/

.jcarousel {
    position: relative;
    overflow: hidden;
}

    .jcarousel ul {
        width: 20000em;
        position: relative;
        list-style: none;
        margin: 0;
        padding: 0;
    }

    .jcarousel li {
        float: left;
    }

/** Carousel Controls **/

.jcarousel-control-prev,
.jcarousel-control-next {
    position: absolute;
    top: 250px;
    width: 30px;
    height: 30px;
    text-align: center;
    background: #4E443C;
    color: #fff;
    text-decoration: none;
    text-shadow: 0 0 1px #000;
    font: 24px/27px Arial, sans-serif;
    -webkit-border-radius: 30px;
    -moz-border-radius: 30px;
    border-radius: 30px;
    -webkit-box-shadow: 0 0 2px #999;
    -moz-box-shadow: 0 0 2px #999;
    box-shadow: 0 0 2px #999;
}

    .jcarousel-control-prev {
        left: 160px;
    }

    .jcarousel-control-next {
        right: 160px;
    }

@media screen and (min-width:380px) and (max-width: 768px) {

    .jcarousel-control-prev, .jcarousel-control-next {
        top: 275px;
    }

    .jcarousel-control-prev {
        left: 200px;
    }

    .jcarousel-control-next {
        right: 120px;
    }
}

@media screen and (min-width: 768px) and (max-width: 992px) {
    .jcarousel-control-prev, .jcarousel-control-next {
        top: 300px;
    }

    .jcarousel-control-prev {
        left: 190px;
    }

    .jcarousel-control-next {
        right: 100px;
    }
}

@media screen and (min-width: 992px) and (max-width: 1200px) {
    .jcarousel-control-prev, .jcarousel-control-next {
        top: 340px;
    }

    .jcarousel-control-prev {
        left: 240px;
    }

    .jcarousel-control-next {
        right: 190px;
    }
}

@media screen and (min-width:1200px) {
    .jcarousel-control-prev, .jcarousel-control-next {
        top: 394px;
    }
    .jcarousel-control-prev {
        left: 260px;
    }

    .jcarousel-control-next {
        right: 260px;
    }
}


.jcarousel-control-prev:hover span,
.jcarousel-control-next:hover span {
    display: block;
}

.jcarousel-control-prev.inactive,
.jcarousel-control-next.inactive {
    opacity: .5;
    cursor: default;
}













/////////////////article.css
.navbar {
    margin-bottom: 0;
}

.contents {
    background: white;
    background-color: #fff;
    background-color: rgba(255, 255, 255, .8)
}

.ie8 .contents, .ie7 .contents {
    background: transparent;
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#CCFFFFFF,endColorstr=#CCFFFFFF) /* IE 8 support transparent background  background-color: white; */
}

.ie7 .col-md-9 { width: 65% }

header h2 {
    font-size: 40px;
    text-align: center;
    color: #808080;
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    padding-top: 40px
}

article {
    padding: 30px 50px;
    font-size: 14.4px
}

article ul li { padding: 5px }

@media screen and (max-width:768px) {
    article { padding: 0 }
}

article p, article li { /*text-align: justify;*/ line-height: 1.6}

@media screen and (max-width:768px) { 
    article p, article li { text-align: left  /*removes justify*/ } 
}

article.faq p.bold { margin-bottom: 1px; font-size: 15.5px }

article.faq p.answer, article.history p { margin-bottom: 20px}

article.partners li, article.workshop li, article.news li {padding: 5px 5px}

article p.answer { border-top: 1px solid black}

article.necklace p:first-of-type {
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    font-style: italic;
    font-weight: bold;
    font-size: 15px
}

article.necklace img, article.captain img { padding-bottom: 30px}

article.necklace .cost {
    color: green;
    font-size: 50px;
    text-align: center
}

article.news .melissa, .melissa p { text-align: center}

article.leadership-staff h3, article.mission-vision-beliefs h3 {
    text-align: center;
    color: #a04646
}

article figure img.img-responsive { padding-bottom: 10px}

article figure {text-align: center}

article img {margin: 0 auto}

.blog-entry { border-bottom: 1px solid black}

/* Get To know US */
@media screen and (max-width:400px) {
    article.gettoknowus figure iframe { width:240px}
}

article.gettoknowus h3 {
    text-align:center;
    margin:0;
    font-weight:bold;
    font-size:18px
}

article.gettoknowus .tax-exemption {color:#212174}

article.gettoknowus figcaption {color:#212174}














/////////////gallery.css
article.gallery .thumbnail {
    display:inline-block;
    width:100px;
    height:100px;
}

article.gallery {
    padding: 20px 0;
}

@media screen and (min-width: 768px) and (max-width:992px) {
    article.gallery {
        padding: 30px 0;
    }
}










//////////bootstrap-image-gallery.min.css
@charset "UTF-8";.blueimp-gallery .modal-body{position:relative;text-align:center;padding:0 0 56.25%;overflow:hidden;cursor:pointer}.blueimp-gallery .modal-footer{margin:0}.blueimp-gallery .modal-body img,.blueimp-gallery .modal-body .video-content video,.blueimp-gallery .modal-body .video-content iframe,.blueimp-gallery .modal-body .video-content a{max-width:100%;max-height:100%;margin:auto;position:absolute;top:0;right:0;bottom:0;left:0}.blueimp-gallery .modal-body .video-content video{display:none}.blueimp-gallery .modal-body .video-playing video{display:block}.blueimp-gallery .modal-body .video-content iframe{width:100%;height:100%;border:none;left:100%}.blueimp-gallery .modal-body .video-playing iframe{left:0}.blueimp-gallery .modal-body .video-playing img,.blueimp-gallery .modal-body .video-playing a{display:none}.blueimp-gallery .modal-body .video-content a{cursor:pointer}.blueimp-gallery .modal-body .video-content a:after{font-family:"Glyphicons Halflings";-webkit-font-smoothing:antialiased;content:"\e029";font-size:64px;line-height:64px;width:64px;height:64px;position:absolute;top:50%;margin:-32px 0 0 -32px}.blueimp-gallery .modal-body .video-loading a{background:url(../img/loading.gif) center no-repeat;background-size:64px 64px}.blueimp-gallery .modal-body .video-loading a:after{content:none}@media screen and (min-width:768px){.blueimp-gallery .modal-dialog{right:auto;left:auto;width:auto;max-width:900px;padding-left:5%;padding-right:5%}}










//////////ie8.css
.ie8 .content{
    background: transparent;
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#990000FF,endColorstr=#990000FF); /* IE 8/7 support transparent background */
    zoom: 1;
}

.ie8 .navbar {
    background: transparent;
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#CCFFFFFF,endColorstr=#CCFFFFFF); /* IE 8 support transparent background  background-color: white; */
}
@media screen and (min-width:992px) and (max-width:1200px) {
    .ie8 .navbar > .container > #navbar > .nav > li > a {
        font-size: 17px;
    }
}




/////////ie7.css
.ie7 .content {
    background: transparent;
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#990000FF,endColorstr=#990000FF); /* IE 8/7 support transparent background */
    zoom: 1;
}

@media screen and (min-width: 768px) {
    .ie7 .headline {
        width: 75%;
    }

    .ie7 .image-container {
        width: 45.33%;
    }
}

@media screen and (min-width: 768px) and (max-width:992) {
    .ie7 .headline div:first-child {
        font-size: 25px;
    }
   .ie7 .video {
       position:relative;
       top: 20px;
       left:-150px;
       width:350px;
       height:192px;
   } 

}

@media screen and (min-width: 992px) {
    .ie7 .headline {
        width: 50%;
    }
}

@media screen and (min-width: 992px) {
   .ie7 .video {
       top: 20px;
       left:-100px;
   } 
}


@media screen and (min-width: 992px) {
   .ie7 .video {
       top: 20px;
       left:-60px;
   } 
   .ie7 .image-container {
       top:-70px;
   }
}
@media screen and (min-width: 1200px) {
    .ie7 .video {
        left:-30px;
    }
    .ie7 .image-container {
        top:-50px;
    }
}







