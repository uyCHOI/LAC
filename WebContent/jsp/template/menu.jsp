<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here<sitemesh:write property="title"/></title>
<script src="../../assets/js/jquery.min.js"></script>
<script src="../../assets/js/moment.min.js"></script>
<script src="../../assets/js/fullcalendar.min.js"></script>
<link href="../../assets/css/fullcalendar.min.css" rel="stylesheet">
<link href="../../assets/css/fullcalendar.print.min.css" rel="stylesheet" media="print">
<script src="/project_lac/assets/bootstrap/js/bootstrap.min.js"></script>
<script src="/project_lac/assets/js/theme.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <sitemesh:write property="head"/>

<style>
	#calendar, #calendar div, #newScheModal div, #scheduleList div, #editScheModal div{
    	border: none;
	}
	#menu_bar{
        float: right;
        border:none;
        height: 100%;
        width: 8%;
    }

    #menu_bar_row{
        height: 97%;
        width: 20px;
        top:10px;
        position: absolute;
        right: 54px;
        border: none;
    }
    .menu_btn{
        width: 40px;
        padding: 2px;
        height: 40px;
        margin-bottom: 20px;
        line-height: 36px;
        border-radius: 50px;
        box-shadow:1px 1px 1px rgb(0, 0, 0);
        
    }
    
    #noti_box{
        top:94.7%;
        position: absolute;
        margin-bottom: 0px;
    }
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
        background-color: aliceblue;
        color: aliceblue;
        cursor: pointer;
        z-index: 100;
        box-shadow:1px 1px 1px rgb(0, 0, 0);
    }
    
    #side_box div{
    	border: none;
    }
    #side_name{
    	text-align: center;
    	font-size: 30px;
    	margin-left: 5px;
    	width: 100%;
    	height: 8%;
    	color:black;
    	
    }
    #side_img{
    	width: 100%;
    	height: 22%;
    }
    #side_img img{
    	width: 100%;
    	height: 100%;
    }
    #side_board{
    	width: 100%;
    	height: 10%;
    	text-align: center;
    	padding: 10px;
    	color:black;
    }
    #side_member_list{
    	width: 100%;
    	height: 40%;
    	background-color: aliceblue;
    	overflow: auto;
    	overflow-x: hidden;
    }
    #side_member_text{
    	font-size: 16px;
    	color:black;
    	margin-left: 10px;
    	margin-top: 10px;
    	height: auto;
    	width: auto;
    	position: fixed;
    	box-shadow: 3px 3px 8px gray;
    	border-radius: 10px; 
    	background-color: rgb(50,140,40,.4);
    	top: 37%;
    }
    #side_member_info{
    	height: auto;
    	width: 80%;
    	margin-left: 12%;
    }
    .side_member_icon{
    	width: 93% !important;
    	margin-top: 15px !important;
    	margin-bottom: 15px !important;
    }
    .side_member_icon img{
    	width: 15%;
    	height: 80%;
    	border-radius: 30px; 
    }
    
    .side_btn_button{
    	height: 6%;
    	width: 80%;
    	margin-left: 10%;
    	margin-right: 10%;
    	margin-top: 2%;
    	margin-bottom: 2%;
    	font-size: 20px;
    	box-shadow: 5px 5px 10px gray;
    }
    .side_member_icon:hover{
    	color:#979BA6;
    }
    #friends_invitation_btn{
    	margin-top: 6%;
    }
    .update_btns,.side_img_btns{
    	transition:.5s;
    	float: right;
    	width: 30px;
    	height: 30px;
    	border-radius: 30px;
    	opacity: 0.3;
    	margin-top: 6px;
    	margin-right: 5px;
    }
    .update_btns i {
    	margin-top: -4px;
    	margin-left: -9px;
    }

    .side_img_btns:hover,.update_btns:hover{
    	opacity: 1;
    }
    .side_img_btns i{
   		margin-top: -4px;
    	margin-left: -10px;
    }
    .side_img_btns{
    	position: absolute;
    	right: 8%;
    	top: 26%;
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
        
    }
    #side_bar_btn{
        color: blue;
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
        background-color: aliceblue;
        border: none;
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
    #create_class div {
		border: none;
		height: 40px;
		margin-top: 9px;
	}
	#create_class{
		width: 30%;
		height: 10%;
		top: 45%;
		left: 35%;
		z-index:1000;
		position: fixed;
		background-color: #454547;
		display: none;
	}

	
	#calss_name{
		background-color: aliceblue;
		margin: 10px;
		padding: 5px;
		border-radius: 10px;
		width: 80%;
		float: left;
		font-size: 15px;
		margin-right: 10px;
		line-height: 30px;
	}
	#calss_name[placeholder]:empty:before {
	    content: attr(placeholder);
	    color: #555; 
	}
	#create_btn{
		float: right;
		width: 20%;
		margin-left: 10px;
	}
	#create_btn_st{
		border-radius: 4px;
		width: 60px;
		font-size: 20px;
	}
	
	#my_info div{
		border: none;
	}
	
	#my_info{
		height: 60%;
		width: 20%;
		top: 20%;
		left: 40%;
		z-index:1000;
		position: fixed;
		background-color: #454547;
		display: none;
	}
	#my_profile_img{
		height: 60%;
		width: 100%;
	}
	#my_profile_img img{
		border: 1px solid black;
		margin: 10%;
		width: 80%;
		height: 80%;
	}
	.profile_repair_btn{
		width: 30px;
		height: 30px;
		border-radius: 30px;
		margin-bottom: 3px;
	}
	.profile_repair_btn i{
		margin-left: -9px;
		margin-top: -2px;
		font-size: 22px;
	}
	#my_profile_repair div{
		width: 80%;
		height: 20%;
		text-align: center;
		margin-left: 10%;
		margin-right: 10%;
		margin-bottom: 5%;
		background-color: aliceblue;
		border-radius: 10px;
		padding-top: 10px;
	}
	#my_profile_repair div:nth-child(1){
		height: 34%;
		padding-top: 5px;
	}
	
	#my_profile_repair{
		height: 40%;
		width: 100%;	
	}

	
	#friends_list{
		height: 50%;
		width: 20%;
		top: 25%;
		left: 40%;
		z-index:1000;
		position: fixed;
		background-color: #454547;
		display: none;
	}
	
	#my_friends{
		float:left;
		height: 100%;
		width: 100%;
		border:none;
		position: absolute;
		z-index: 1500;
	}
	#new_friends{
		float:left;
		height: 100%;
		width: 100%;
		border:none;
		position: absolute;
		z-index: 1400;
	}
	#request_friends{
		float:left;
		height: 100%;
		width: 100%;
		border:none;
		position: absolute;
		z-index: 1400;
	}
	#request_friends div{
		border: none;
	}
	#info_friends{
		float:left;
		height: 100%;
		width: 50%;
	}
	
	.friends_search_list{
		width: 100%;
		height: 90%;
		overflow: auto;
		overflow-x: hidden;
		background-color: aliceblue;
		border: none;
	
	}
	.friedns_icon:hover{
		background-color: white;
		border: 1px solid #979BA6 !important;
	}
	
	.search_friends{
		width: 100%;
		height: 10%;
		background-color: aliceblue;
		border: none;
	}
	
	.friends_area img{
		width: 20%;
		height: 100%;
		border-radius: 30px;
		padding: 5px;
	}
	
	.friends_utill_btn{
		float: right;
		margin-top: 3%;
		margin-right: 5%;
	}
	
	.friedns_icon{
		border:none;
		height: 15%;
		width: 97%;
		border-radius: 20px;
		margin: 4px;
		cursor: pointer;
		color:black;
	}
	
	.search_friends input{
		width: 94%;
		height: 90%;
		font-size: 18px;
		margin-left: 3%;
		margin-right: 3%;
		margin-top: 4px;
		border-radius: 20px;
		padding-left: 5px;
	}
	
	.friends_menu{
		width: auto;
		height: 10%;
		font-size: 18px;
		text-align: center;
		padding-top: 5px;
		position: absolute;
		top:-10%;
		background-color: aliceblue;
		border: none;
	}
	#my_friends_menu{
		left:0%;
		width: 34%;
	}
	#new_friends_menu{
		left:35.4%;
		background-color: #A0A2AA;
		cursor: pointer;
		width: 37%;
	}
	#request_friends_menu{
		left:74%;
		background-color: #A0A2AA;
		cursor: pointer;
		width: 26%;
	}
	.friends_r_list{
		background-color: aliceblue;
		border:none;
		width: 100%;
		height: 10%;
		text-align: center;
		font-size: 15px;
	}
	.friends_r_list span{
		border-radius: 40px;
		width: 80%;
		left: 10%;
		opacity: 0.8;
		background-color: #D0CECE;
		
	}
	
	.friends_r_area{
		width: 100%;
		height: 50%;

	}
	.friends_search_r_list{
		background-color: aliceblue;
		width:100%;
		height:90%;
		overflow: auto;
		overflow-x: hidden;
	}
	.friends_search_r_list .friedns_icon{
		height: 30%;
	}
					
	
	#back_ground_shadow{
		background-color: black;
		opacity: 0.8;
		width: 100%;
		height: 100%;
		z-index: 500;
		position: fixed;
		display: none;
	}
	
	.fa-bell{
		margin-top: 5px;
	}
	
	#exit_btn_button{
		display: none;
	}
	
	.friends_addr,.glyphicon-calendar{
		font-size: 20px;
		margin-top: 5px;
	}
	.friends_addr_side{
		margin-top: 8px;
	}
	.glyphicon-calendar{
		margin-top: 7px;
	}
	.fa-cog{
		font-size: 25px;
		margin-top: 4px;
	}
	
	#noti_area div {
		border:none;
	}
	
	#noti_area{
		position: fixed;
		width: 20%;
		height: 50%;
		right: 4%;
		bottom: 6%;
		background-color: aliceblue;
		border-radius: 4%; 
		z-index: 1101;
		padding: 8px;
		display: none;
	}
	
	
	#noti_tri{
	  width: 0px;height: 0px;
	  border-top:30px solid aliceblue !important;
	  border-bottom:24px solid transparent !important;
	  border-right: 9px solid transparent !important;
	  border-left: 15px solid  transparent !important;
	  bottom: 2%;
	  right: 3.53%;
	  position: fixed;
	  transform:skew(18deg,-53deg);
	  z-index: 1100;
	}
	
	#noti_screen{
		width:94.5%;
		height:96%;
		overflow: auto;
		overflow-x:hidden;
		z-index: 1102;
		position: absolute;
		 
	}
	
	.noti_info{
		width: 100%;
		height: 15%;
		cursor: pointer;
		margin-bottom: 3%;
	}
	
	.noti_info:hover{
		background-color: #f2eee8;
	}
	
	.noti_img{
		float: left;
		height: 100%;
		width: 20%;
	}
	
	.noti_img img{
		width: 100%;
		height: 100%;
		border-radius: 100%; 
	}
	
	.noti_text{
		float: right;
		height: 100%;
		width: 80%;
		padding-top: 3%; 
		padding-left: 3%;
		position: relative;
	}
	
	.noti_del_btn{
		position: absolute;
		right: 0%;
		top: 0%;
		opacity: 0.2;
		transition:0.3s;
	}
	.noti_del_btn:hover{
		opacity: 1;
	}
	
	.noti_new{
		position: absolute;
		right: 15%;
		top: 0%;
		color:red;
	}
	
	#noti_cnt{
		position: absolute;
		bottom:28%;
		right: 15%;
		color:red;
		border: none;
		font-weight: bold;
	}
	

    body{
        width: 100%;
        height: 100%;
        background-color:#202021;
        margin: 0px !important;
    }
</style>
</head>
<body>
<div id="back_ground_shadow">
</div>


<div id="menu_bar">
    <div id="menu_bar_row" class="row">
        <div class="menu_btn btn btn-default"><i class="material-icons" style="font-size:36px">vpn_key</i></div>
        <div id="my_info_btn_button" class="menu_btn btn btn-default"><i class="fa fa-cog"></i></div>
        <a href="/project_lac/jsp/main/waitRoom.jsp"><div id="exit_btn_button" class="menu_btn btn btn-default">Exit</div></a>
        <div id="create_btn_button" class="menu_btn btn btn-default">New</div>
        
        <div id="friends_btn_button" class="menu_btn btn btn-default"><i class="fa fa-address-book friends_addr friends_addr_side"></i></div>
        <a href="/project_lac/jsp/calendar/calendar.jsp"><div id="calendar_btn_button" class="menu_btn btn btn-default"><span class="glyphicon glyphicon-calendar"></span></div></a>
        <div id="noti_box" class="menu_btn btn btn-default"><i class="fa fa-bell" style="font-size:24px"></i>
        <div id="noti_cnt">7</div>
        </div> 
   
    </div>
</div>

<div>

</div>


<%-- 새 클래스 생성 --%>
<div id="create_class">
	<div>
		<div id="calss_name" contenteditable="true" placeholder="Class 이름을 알려주세요!"></div>
		<div ib="create_btn">
			<div id="create_btn_st" class="menu_btn btn btn-default">Finish</div>
		</div>
	</div>
</div>


<%-- 개인정보 수정 --%>
<div id="my_info">
		<div id="my_profile_img">
			<img src="/project_lac/jsp/template/defalutImg.jpg"/>
		</div>
		<div id="my_profile_repair">
			<div>
				<span>닉네sssss임</span>
				<span>#</span>
				<span>3344</span>
				<span class="profile_repair_btn btn btn-default"><i class="material-icons">mode_edit</i></span><br>
				(<span>abcdefd123@naver.com</span>)
			</div>
			
			<div class="btn btn-default">비밀번호변경</div>
			<div class="btn btn-default">회원탈퇴</div>
		</div>
</div>


<%-- 친구관련 --%>
<div id="friends_list">
	<div id="my_friends" class="friends_area">
		<div id="my_friends_menu" class="friends_menu">
			My Friends
		</div>
		<div class="search_friends">
			<input type="text" placeholder="내 친구 검색">
		</div>
		<div class="friends_search_list">
		
			<div class="friedns_icon">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
				<span>닉네임#1223</span>
				<span class="friends_utill_btn btn btn-default">삭제</span>
			</div>

			<div class="friedns_icon">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
				<span>닉네임#1223</span>
				<span class="friends_utill_btn btn btn-default">삭제</span>
			</div>

			<div class="friedns_icon">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
				<span>닉네임#1223</span>
				<span class="friends_utill_btn btn btn-default">삭제</span>
			</div>

			<div class="friedns_icon">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
				<span>닉네임#1223</span>
				<span class="friends_utill_btn btn btn-default">삭제</span>
			</div>

			<div class="friedns_icon">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
				<span>닉네임#1223</span>
				<span class="friends_utill_btn btn btn-default">삭제</span>
			</div>

			<div class="friedns_icon">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
				<span>닉네임#1223</span>
				<span class="friends_utill_btn btn btn-default">삭제</span>
			</div>

			<div class="friedns_icon">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
				<span>닉네임#1223</span>
				<span class="friends_utill_btn btn btn-default">삭제</span>
			</div>


		</div>
	</div>
	<div id="new_friends" class="friends_area">
		<div id="new_friends_menu" class="friends_menu">
			New Friends
		</div>
		<div class="search_friends">
			<input type="text" placeholder="새 친구 검색">
		</div>
		<div class="friends_search_list">
		
		
			<div class="friedns_icon">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
				<span>닉네임#1223</span>
				<span class="friends_utill_btn btn btn-default">추가</span>
			</div>
		
			<div class="friedns_icon">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
				<span>닉네임#1223</span>
				<span class="friends_utill_btn btn btn-default">추가</span>
			</div>
		
			<div class="friedns_icon">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
				<span>닉네임#1223</span>
				<span class="friends_utill_btn btn btn-default">추가</span>
			</div>
		
			<div class="friedns_icon">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
				<span>닉네임#1223</span>
				<span class="friends_utill_btn btn btn-default">추가</span>
			</div>
		
			<div class="friedns_icon">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
				<span>닉네임#1223</span>
				<span class="friends_utill_btn btn btn-default">추가</span>
			</div>
		
			<div class="friedns_icon">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
				<span>닉네임#1223</span>
				<span class="friends_utill_btn btn btn-default">추가</span>
			</div>
		
			<div class="friedns_icon">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
				<span>닉네임#1223</span>
				<span class="friends_utill_btn btn btn-default">추가</span>
			</div>
		
			<div class="friedns_icon">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
				<span>닉네임#1223</span>
				<span class="friends_utill_btn btn btn-default">추가</span>
			</div>
		
			<div class="friedns_icon">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
				<span>닉네임#1223</span>
				<span class="friends_utill_btn btn btn-default">추가</span>
			</div>
		
			<div class="friedns_icon">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
				<span>닉네임#1223</span>
				<span class="friends_utill_btn btn btn-default">추가</span>
			</div>
		
			<div class="friedns_icon">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
				<span>닉네임#1223</span>
				<span class="friends_utill_btn btn btn-default">추가</span>
			</div>

		</div>
	</div>
	<div id="request_friends" class="friends_area">
		<div id="request_friends_menu" class="friends_menu">
			Request
		</div>
		<div id="request_friends_list" class="friends_r_area">
			<div class="friends_r_list">
					<span>Request List</span>
			</div>
			<div class="friends_search_r_list">
				<div class="friedns_icon">
					<img src="/project_lac/jsp/template/defalutImg.jpg">
					<span>닉네임#1223</span>
					<span class="friends_utill_btn btn btn-default">수락</span>
				</div>
				<div class="friedns_icon">
					<img src="/project_lac/jsp/template/defalutImg.jpg">
					<span>닉네임#1223</span>
					<span class="friends_utill_btn btn btn-default">수락</span>
				</div>
				<div class="friedns_icon">
					<img src="/project_lac/jsp/template/defalutImg.jpg">
					<span>닉네임#1223</span>
					<span class="friends_utill_btn btn btn-default">수락</span>
				</div>
				<div class="friedns_icon">
					<img src="/project_lac/jsp/template/defalutImg.jpg">
					<span>닉네임#1223</span>
					<span class="friends_utill_btn btn btn-default">수락</span>
				</div>
				<div class="friedns_icon">
					<img src="/project_lac/jsp/template/defalutImg.jpg">
					<span>닉네임#1223</span>
					<span class="friends_utill_btn btn btn-default">수락</span>
				</div>
				<div class="friedns_icon">
					<img src="/project_lac/jsp/template/defalutImg.jpg">
					<span>닉네임#1223</span>
					<span class="friends_utill_btn btn btn-default">수락</span>
				</div>
				<div class="friedns_icon">
					<img src="/project_lac/jsp/template/defalutImg.jpg">
					<span>닉네임#1223</span>
					<span class="friends_utill_btn btn btn-default">수락</span>
				</div>
				<div class="friedns_icon">
					<img src="/project_lac/jsp/template/defalutImg.jpg">
					<span>닉네임#1223</span>
					<span class="friends_utill_btn btn btn-default">수락</span>
				</div>
				
			</div>
		</div>
		<div id="response_friends_list" class="friends_r_area">
			<div class="friends_r_list">
					<span>Response List</span>
			</div>
			<div class="friends_search_r_list">
			
			
				<div class="friedns_icon">
					<img src="/project_lac/jsp/template/defalutImg.jpg">
					<span>닉네임#1223</span>
					<span class="friends_utill_btn btn btn-default">거절</span>
				</div>
			
				<div class="friedns_icon">
					<img src="/project_lac/jsp/template/defalutImg.jpg">
					<span>닉네임#1223</span>
					<span class="friends_utill_btn btn btn-default">거절</span>
				</div>
			
				<div class="friedns_icon">
					<img src="/project_lac/jsp/template/defalutImg.jpg">
					<span>닉네임#1223</span>
					<span class="friends_utill_btn btn btn-default">거절</span>
				</div>
			
				<div class="friedns_icon">
					<img src="/project_lac/jsp/template/defalutImg.jpg">
					<span>닉네임#1223</span>
					<span class="friends_utill_btn btn btn-default">거절</span>
				</div>
			
				<div class="friedns_icon">
					<img src="/project_lac/jsp/template/defalutImg.jpg">
					<span>닉네임#1223</span>
					<span class="friends_utill_btn btn btn-default">거절</span>
				</div>
			
				<div class="friedns_icon">
					<img src="/project_lac/jsp/template/defalutImg.jpg">
					<span>닉네임#1223</span>
					<span class="friends_utill_btn btn btn-default">거절</span>
				</div>
			
				<div class="friedns_icon">
					<img src="/project_lac/jsp/template/defalutImg.jpg">
					<span>닉네임#1223</span>
					<span class="friends_utill_btn btn btn-default">거절</span>
				</div>
				
				
			</div>
		</div>
	</div>
</div>


<div id="noti_area">
	<div id="noti_screen">
		<div class="noti_info">
			<div class="noti_img">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
			</div>
			<div class="noti_text">
				<span>친구이름</span><br>
				<span>친구요청이 왔습니다.</span>
				<i class="noti_new material-icons">fiber_new</i>
				<i class="noti_del_btn material-icons">cancel</i>
			</div>
		</div>
		
		<div class="noti_info">
			<div class="noti_img">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
			</div>
			<div class="noti_text">
				<span>친구이름</span><br>
				<span>친구요청이 왔습니다.</span>
				<i class="noti_new material-icons">fiber_new</i>
				<i class="noti_del_btn material-icons">cancel</i>
			</div>
		</div>
		
		<div class="noti_info">
			<div class="noti_img">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
			</div>
			<div class="noti_text">
				<span>친구이름</span><br>
				<span>친구요청이 왔습니다.</span>
				<i class="noti_new material-icons">fiber_new</i>
				<i class="noti_del_btn material-icons">cancel</i>
			</div>
		</div>
		
		<div class="noti_info">
			<div class="noti_img">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
			</div>
			<div class="noti_text">
				<span>친구이름</span><br>
				<span>메세지가 왔습니다.</span>
				<i class="noti_del_btn material-icons">cancel</i>
			</div>
		</div>
		
		<div class="noti_info">
			<div class="noti_img">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
			</div>
			<div class="noti_text">
				<span>친구이름</span><br>
				<span>친구요청이 왔습니다.</span>
				<i class="noti_new material-icons">fiber_new</i>
				<i class="noti_del_btn material-icons">cancel</i>
			</div>
		</div>
		
		<div class="noti_info">
			<div class="noti_img">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
			</div>
			<div class="noti_text">
				<span>프로젝트 이름</span><br>
				<span>메세지가 왔습니다.</span>
				<i class="noti_del_btn material-icons">cancel</i>
			</div>
		</div>
		
		<div class="noti_info">
			<div class="noti_img">
				<img src="/project_lac/jsp/template/defalutImg.jpg">
			</div>
			<div class="noti_text">
				<span>프로젝트 이름</span><br>
				<span>초대장이 왔습니다!</span>
				<i class="noti_del_btn material-icons">cancel</i>
			</div>
		</div>
		
		
		
		
	</div>
	<div id="noti_tri"></div>
</div>

    <sitemesh:write property="body"/>

<script>

	$("#back_ground_shadow").on("click",function(){
		$(this).fadeToggle(300)
		$("#create_class").fadeOut(300);
		$("#my_info").fadeOut(300);
		$("#friends_list").fadeOut(300);
	})
	$("#create_btn_button").on("click",()=>{
		$("#create_class").fadeToggle(300);
		$("#back_ground_shadow").fadeToggle(300);
	})
	$("#my_info_btn_button").on("click",()=>{
		$("#my_info").fadeToggle(300);
		$("#back_ground_shadow").fadeToggle(300);
	})
	$("#friends_btn_button").on("click",()=>{
		$("#friends_list").fadeToggle(300);
		$("#back_ground_shadow").fadeToggle(300);
	})
	$($("#calendar_btn_button").fadeIn(300));
	
	
	
	
	$("#new_friends_menu").on("click",function(){
		$(this).css({"background-color":"aliceblue","cursor":"auto"});
		$("#my_friends_menu").css({"background-color":"#A0A2AA","cursor":"pointer"});
		$("#request_friends_menu").css({"background-color":"#A0A2AA","cursor":"pointer"});
		$("#new_friends").css({"z-index":1500});
		$("#my_friends").css({"z-index":1400});
		$("#request_friends").css({"z-index":1400});
	})
	
	$("#my_friends_menu").on("click",function(){
		$(this).css({"background-color":"aliceblue","cursor":"auto"});
		$("#new_friends_menu").css({"background-color":"#A0A2AA","cursor":"pointer"});
		$("#request_friends_menu").css({"background-color":"#A0A2AA","cursor":"pointer"});
		$("#my_friends").css({"z-index":1500});
		$("#new_friends").css({"z-index":1400});
		$("#request_friends").css({"z-index":1400});
	})
	
	$("#request_friends_menu").on("click",function(){
		$(this).css({"background-color":"aliceblue","cursor":"auto"});
		$("#new_friends_menu").css({"background-color":"#A0A2AA","cursor":"pointer"});
		$("#my_friends_menu").css({"background-color":"#A0A2AA","cursor":"pointer"});
		$("#request_friends").css({"z-index":1500});
		$("#my_friends").css({"z-index":1400});
		$("#new_friends").css({"z-index":1400});
	})
	
	$("#noti_box").on("click",function(){
		$("#noti_area").fadeToggle(300);
	})
	

</script>

</body>
</html>