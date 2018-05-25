<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="../js/jquery-3.2.1.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="../../assets/css/coding.css" >
<style>
    div{
        border:1px solid black;
    }
    #side_bar{
        float: left;
        margin-right: 30px;
        border:none;
    }
    #side_bar_row{
        height: 97.2%;
        top:10px;
        position: absolute;
        width: 450px;
        left: -400px;
        background-color: #454547;
        color: aliceblue;
        cursor: pointer;
        z-index: 1;
        box-shadow:1px 1px 1px rgb(0, 0, 0);
    }
    #main_area{
        margin-left: 44px;
        top:10px;
        position: relative;
        height: 100%;
        width: 92%;
        border:none;
    }
    .box{
        height: 70px;
        margin-top: 10px;
        margin-bottom: 10px;
        margin-right: 10px;
    }
    .text{
        position: absolute;
        margin-top: 25px;
    }
    .screen{
        height: 582px;
        width: 100%;
        position: absolute;
        background-color: #202021;
        border: none;
    }
    #order_box{
        height: 110px;
        white-space: nowrap;
        overflow: auto; overflow-y:hidden;
        background-color: #454547;
        padding-left:10px;
    }
    #search_order{
        background: linear-gradient(45deg, blueviolet, aquamarine);


    }
    #search_order .btn{
        border-radius: 0px;
        opacity: .7;
    }
    .content_box{
        height: 100%;
        margin-top: 10px;
        background-color: aliceblue;
        position: relative;
    }
    #side_bar_btn{
        color: aliceblue;
        border: none;
        cursor: pointer;
        float: right;
        width: 20px;
        clear: both;
        padding-right: 33px;
    }
    #side_box{
        margin: 20px;
        margin-right: 36px;
        margin-left: 34px;
        height: 94.5%;
        width: 84%;
    }
    #main_area div{
       /* border: none; */
    }
    
   
    
    #chatting_area{
        width: 26.33333333%;
        margin-left: 1%;
        /* border: 1.5px solid black; */
        border: none;
        padding: 0px;
        background-color: #202021;
        float: right;
        height: 738px;
    }
    #chatting_area .chatting_box{
        background-color: aliceblue;
        border: 1.5px solid black;
    }
    #coding_area{
        border: none;
        width: 73.66666667%;
        height: 100%;

    }
    #chatting_content{
        height: 80%;
    }
    #chatting_write{
        height: 20%;
    }
    #chatting_clip{
        height: 30%;
        padding-left: 0px;
        padding-top: 4px;
        border: none;
    }
    #chatting_text_box{
        height: 70%;
        border: none;
    }
    #chatting_text_box div{
        border: none;
    }
    #chatting_text{
        width: 82%;
        height: 100%;
        float: left;
    }
    #chatting_btn{
        width: 18%;
        height: 100%;
        float: right;
    }
    #text_box{
        border-radius: 30px;
        height: 80%;
        background-color: antiquewhite;
        margin-left: 12px;
        margin-top: 8px;
        width: 100%;
        padding: 12px;
        overflow: auto;
        overflow-x:hidden;
        
    }
    .onchat{
        margin-top: 7px;
    }
    #onchat,.add_btn{
        margin-top: 18px;
        margin-left: 20px;
    }
    .clip_btn{
        padding: 0px;
        width: 30px;
        height: 30px;
        margin: 1px 10px 0px !important;
    }
    .clip_icon{
        margin-top: 2px;
    }
    #clip_poto_btn{
        
    }

    body{
        width: 100%;
        height: 100%;
        background-color:#202021;
    }
</style>
</head>
<body>


    <div id="side_bar">
        <div id="side_bar_row" class="row">
            <div id="side_bar_btn">open</div>
            
            <div id="side_box">
                <div id="side_name">
                <span>채팅방 이름</span>
                <span class="update_btns btn btn-default"><i class="material-icons">create</i></span>
                </div>
				<div id="side_img">
					<img src="/project_lac/jsp/template/The-Burning-Blue-computers-wallpapers-windows-7.jpg">
					<span class="side_img_btns btn btn-default"><i class="material-icons">wallpaper</i></span>
				</div>
				<div id="side_board">
					<span>텔테테테에레테렝테렡ㄹ</span> <span class="side_board_update_btn btn btn-default">수정</span>
				</div>
				<div id="side_member_list">
					<div id="side_member_text">참여목록</div>
					<div id="side_member_info">
					
					
						<div class="side_member_icon friedns_icon">
							<img src="/project_lac/jsp/template/defalutImg.jpg">
							<span>닉네임#1223</span>
						</div>
					
						<div class="side_member_icon friedns_icon">
							<img src="/project_lac/jsp/template/defalutImg.jpg">
							<span>닉네임#1223</span>
						</div>
					
						<div class="side_member_icon friedns_icon">
							<img src="/project_lac/jsp/template/defalutImg.jpg">
							<span>닉네임#1223</span>
						</div>
					
						<div class="side_member_icon friedns_icon">
							<img src="/project_lac/jsp/template/defalutImg.jpg">
							<span>닉네임#1223</span>
						</div>
					
						<div class="side_member_icon friedns_icon">
							<img src="/project_lac/jsp/template/defalutImg.jpg">
							<span>닉네임#1223</span>
						</div>
					
						<div class="side_member_icon friedns_icon">
							<img src="/project_lac/jsp/template/defalutImg.jpg">
							<span>닉네임#1223</span>
						</div>
					
						<div class="side_member_icon friedns_icon">
							<img src="/project_lac/jsp/template/defalutImg.jpg">
							<span>닉네임#1223</span>
						</div>
					
						<div class="side_member_icon friedns_icon">
							<img src="/project_lac/jsp/template/defalutImg.jpg">
							<span>닉네임#1223</span>
						</div>
					
						<div class="side_member_icon friedns_icon">
							<img src="/project_lac/jsp/template/defalutImg.jpg">
							<span>닉네임#1223</span>
						</div>
					
						<div class="side_member_icon friedns_icon">
							<img src="/project_lac/jsp/template/defalutImg.jpg">
							<span>닉네임#1223</span>
						</div>
						
						
					</div>
				</div>
				<div id="friends_invitation_btn" class="side_btn_button btn btn-primary">친구초대</div>
				<div class="side_btn_button btn btn-danger">클래스 탈퇴</div>
            </div>
        </div>
    </div>





    <div id="main_area" class="col-md-11"> <!-- start #main_area -->


        <div class="screen row">   <!-- start .screen -->

            <div id="coding_area" class="col-md-8"> <!-- start #coding_area -->
                
                <div id="search_order" class="row"> <!-- start #search_order -->
                    <span class="btn btn-default">조건문</span>
                    <span class="btn btn-default">연산자</span>
                    <span class="btn btn-default">변수</span>
                </div>  <!-- end #search_order -->

                <div id="order_box" class="row">    <!-- start #order_box -->
                        <li class="box btn btn-primary">
                            <span>명령문 box</span>
                        </li>
                        <li class="box btn btn-primary">
                            <span>명령문 box</span>
                        </li>
                        <li class="box btn btn-primary">
                            <span>명령문 box</span>
                        </li>
                        <li class="box btn btn-primary">
                            <span>명령문 box</span>
                        </li>
                        <li class="box btn btn-primary">
                            <span>명령문 box</span>
                        </li>
                        <li class="box btn btn-primary">
                            <span>명령문 box</span>
                        </li>
                        <li class="box btn btn-primary">
                            <span>명령문 box</span>
                        </li>
                        <li class="box btn btn-primary">
                            <span>명령문 box</span>
                        </li>
                        <li class="box btn btn-primary">
                            <span>명령문 box</span>
                        </li>
                        <li class="box btn btn-primary">
                            <span>명령문 box</span>
                        </li>
                        <li class="box btn btn-primary">
                            <span>명령문 box</span>
                        </li>
                        <li class="box btn btn-primary">
                            <span>명령문 box</span>
                        </li>
                        <li class="box btn btn-primary">
                            <span>명령문 box</span>
                        </li>
                        <li class="box btn btn-primary">
                            <span>명령문 box</span>
                        </li>
                        <li class="box btn btn-primary">
                            <span>명령문 box</span>
                        </li>
                </div>  <!-- end #order_box -->       
                <div class="content_box row">
	                <div class="block_box col-md-6">   <!-- start .content_box -->
	                    <div class="entryMouseViewWorkspace"></div>
	                    
	                </div>  
	                
	                <div class="text_line col-md-6">   <!-- start .content_box -->
	                </div>  
                    <button id="compile" type="button" class="btn btn-default btn-sm">
			          <span class="glyphicon glyphicon-play"></span> Compile
			        </button>
                </div>
                
                <!-- end .content_box -->
                
            </div>  <!-- end #coding_area -->

        </div>  <!-- end .screen -->

        <div id="chatting_area" class="col-md-4 row"> <!-- start #chatting_area -->

            <div class="chatting_box" id="chatting_content">    <!-- start #chatting_content -->
                채팅방 내용

            </div>                                              <!-- end #chatting_content -->

            <div class="chatting_box" id="chatting_write">  <!-- start #chatting_writet -->


                <div id="chatting_clip">    <!-- start #chatting_clip -->
                    
                    <div id="cilp_emoticon_btn" class="clip_btn btn btn-default">
                        <i class="clip_icon material-icons">insert_emoticon</i>
                    </div>
                    <div id="clip_file_btn" class="clip_btn add_btn btn btn-default">
                        <i class="clip_icon material-icons">attach_file</i>
                    </div>
                    <div id="clip_poto_btn" class="clip_btn btn btn-default">
                        <i class="clip_icon material-icons">add_a_photo</i>
                    </div>
                    <div id="clip_video_btn" class="clip_btn btn btn-default">
                        <i class="clip_icon material-icons">video_call</i>
                    </div>
                    <div id="clip_canvas_btn" class="clip_btn btn btn-default">
                        <i class="clip_icon material-icons">color_lens</i>
                    </div>
                    <div id="clip_friend_btn" class="clip_btn btn btn-default">
                        <i class="fa fa-address-card friends_addr"></i>
                    </div>

                </div>  <!-- end #chatting_clip -->


                <div id="chatting_text_box">    <!-- start #chatting_text_box -->

                    <div id="chatting_text">
                        <div id="text_box" contenteditable="true">
                        </div>
                    </div>

                    <div id="chatting_text_btn">
                        <div id="onchat" class="menu_btn btn btn-default">
                            <i class="material-icons onchat">chat</i>
                        </div>
                    </div>

                </div>  <!-- end #chatting_text_box -->



            </div>  <!-- end #chatting_writet -->

        </div>  <!-- end #chatting_area -->

    </div>  <!-- end #main_area -->
    <script type="text/javascript" src="../../assets/js/coding.js"></script>
<script>
	$(function() {
		setTimeout(() => {
			$("#exit_btn_button").fadeIn(1000);
			$("#create_btn_button").fadeOut(1000);
		}, 100);
	});

    var side_bar_btn = false;
    var side_box = $("#side_bar_row");
    var side_btn = $("#side_bar_btn");
    side_box.on("click",function(){
        if(!side_bar_btn){ side_open() }
        return false;
    })
    side_btn.on("click",function(){
        if(!side_bar_btn){ side_open() }
        else{
            side_box.css({"cursor":"pointer"})
                    .animate({"left":"-400"},130)
                    .animate({"left":"-280"},180)
                    .animate({"left":"-400"},100)
                    .animate({"left":"-360"},200)
                    .animate({"left":"-400"},100)
                    .animate({"left":"-390"},100)
                    .animate({"left":"-400"},100)
            side_btn.text("open");
            side_bar_btn = false;
        }
        return false;
    })

    function side_open(){
        side_box.css({"cursor":"auto"})
                .clearQueue()
                .animate({"left":"0"},400)
        side_btn.text("close");
        side_bar_btn = true;
    }





</script>	
</body>
</html>