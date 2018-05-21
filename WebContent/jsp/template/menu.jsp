<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here<sitemesh:write property="title"/></title>

<script src="/project_lac/assets/js/jquery.min.js"></script>
<script src="/project_lac/assets/bootstrap/js/bootstrap.min.js"></script>
<script src="/project_lac/assets/js/theme.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <sitemesh:write property="write"/>
<style>
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
    #create_class div {
		border: none;
		height: 40px;
		margin-top: 8px;
	}
	#create_class{
		width: 30%;
		height: 10%;
		top: 40%;
		left:40%;
		z-index:1;
		position: fixed;
		background-color: gray;
	}

	
	#calss_name{
		background-color: aliceblue;
		margin: 10px;
		padding: 5px;
		border-radius: 10px;
		width: 80%;
		float: left;
		font-size: 15px;
	}
	#create_btn{
		float: right;
		width: 20%;
	}
	#create_btn_st{
		border-radius: 4px;
	}
	
    body{
        width: 100%;
        height: 100%;
        background-color:#202021;
    }
</style>
</head>
<body>
<div id="menu_bar">
    <div id="menu_bar_row" class="row">
        <div class="menu_btn btn btn-default"><i class="material-icons" style="font-size:36px">vpn_key</i></div>
        <div class="menu_btn btn btn-default">Exit</div>
        <div class="menu_btn btn btn-default">N</div>
        <div class="menu_btn btn btn-default">친구</div>
        <div class="menu_btn btn btn-default">캘린더</div>
        <div id="noti_box" class="menu_btn btn btn-default"><i class="fa fa-bell" style="font-size:24px"></i></div> 
    </div>
</div>

<div id="create_class">
	<div>
		<div id="calss_name" contenteditable="true">
			테스트
		</div>
		<div ib="create_btn">
			<div id="create_btn_st" class="menu_btn btn btn-default">Ok</div>
		</div>
	</div>
</div>

    <sitemesh:write property="body"/>

<script>

</script>

</body>
</html>