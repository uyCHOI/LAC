<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"> -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css"> -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> -->
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
body {
	margin: 40px 10px;
	padding: 0;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
	font-size: 14px;
}

#calendar {
	max-width: 900px;
	margin: 0 auto;
	background: white;
	padding: 30px;
	margin-right: 10px;
	border-radius: 5px;
}

#scheduleList {
	background-color: white;
	height: 738px;
	padding: 30px;
	border-radius: 5px;
}
#startDay, #endDay{
	padding:0px;
}
#startDay{
	padding-right: 5px;
}
#endDay{
	padding-left: 5px;
}
#scheduleDetail{
	height: 100px;
}

</style>
</head>
<body>
	<div class="row">
		<div class="col-md-8">
			<div id="calendar"></div>
		</div>
		<div class="col-md-3" id="scheduleList">
			<h3
				style="font-weight: bold; text-align: center; margin-top: 0; margin-bottom: 30px;">일정
				리스트</h3>
			<p></p>


		
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>시작일</th>
							<th>종료일</th>
							<th>일정 내용</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>2018-01-01</td>
							<td>2018-01-01</td>
							<td>미니 프로젝트</td>
						</tr>
						<tr>
							<td>2018-01-01</td>
							<td>2018-01-01</td>
							<td>미니 프로젝트</td>
						</tr>
						<tr>
							<td>2018-01-01</td>
							<td>2018-01-01</td>
							<td>미니 프로젝트</td>
						</tr>
						<tr>
							<td>2018-01-01</td>
							<td>2018-01-01</td>
							<td>미니 프로젝트</td>
						</tr>
						<tr>
							<td>2018-01-01</td>
							<td>2018-01-01</td>
							<td>미니 프로젝트</td>
						</tr>
						<tr>
							<td>2018-01-01</td>
							<td>2018-01-01</td>
							<td>미니 프로젝트</td>
						</tr>
						<tr>
							<td>2018-01-01</td>
							<td>2018-01-01</td>
							<td>미니 프로젝트</td>
						</tr>
						<tr>
							<td>2018-01-01</td>
							<td>2018-01-01</td>
							<td>미니 프로젝트</td>
						</tr>
					</tbody>
				</table>
			</div>
			<button class="btn btn-default" id="myBtn" type="button"
				data-toggle="modal" data-target="#myModal" data-backdrop="static"
				style="color: rgb(0, 0, 0); position: absolute; right: 30px; bottom: 50px;">새일정
				추가</button>
		</div>
		<div class="col-md-1" style="visibility: hidden;"></div>
		

	</div>
	
<!-- 	<!-- 일정 편집 폼--> -->
<!-- 	<div class="contact-clean"> -->
<!--     <form method="post"> -->
<!--         <h2 class="text-center">일정 편집</h2> -->
<!--         <div class="form-group"><span>시작일</span><input type="date" class="form-control" /></div> -->
<!--         <div class="form-group"><span>종료일</span><input type="date" class="form-control" /></div> -->
<!--         <div class="form-group"><textarea rows="14" name="message" placeholder="미니프로젝트 2-회의" class="form-control"></textarea></div> -->
<!--         <div class="form-group"><button class="btn btn-primary float-none" type="submit">편집</button><button class="btn btn-secondary float-none" type="submit" style="color:rgb(0,0,0);">삭제</button></div> -->
<!--     </form> -->
<!-- 	</div> -->


		<div class="modal fade in" id="myModal" role="modal" tabindex="-1" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title"><strong>새 일정</strong></h4>
					</div>
					<div class="modal-body">
					<div class="contact-clean">
					    <form method="post" id="addNewSchedule">
					        <div class="form-group col-md-6" id="startDay"><span>시작일</span><input type="date" class="form-control" /></div>
					        <div class="form-group col-md-6" id="endDay"><span>종료일</span><input type="date" class="form-control" /></div>
					        <div class="form-group">
					        <textarea rows="14" name="message" placeholder="일정 내용" class="form-control"  id="scheduleDetail">
					        </textarea></div>
					        <div class="form-group"><button class="btn btn-primary float-none" type="submit">추가</button></div>
					    </form>
					</div>
					</div>
<!-- 					<div class="modal-footer"> -->
<!-- 						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
<!-- 						<button type="button" class="btn btn-primary">Save changes</button> -->
<!-- 					</div> -->
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->




	<script>
$(document).ready(function() {

    $('#calendar').fullCalendar({
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month'
      },
      defaultDate: '2018-03-12',
      navLinks: true, // can click day/week names to navigate views
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
        {
          title: 'All Day Event',
          start: '2018-03-01',
        },
        {
          title: 'Long Event',
          start: '2018-03-07',
          end: '2018-03-10'
        },
        {
          id: 999,
          title: 'Repeating Event',
          start: '2018-03-09T16:00:00'
        },
        {
          id: 999,
          title: 'Repeating Event',
          start: '2018-03-16T16:00:00'
        },
        {
          title: 'Conference',
          start: '2018-03-11',
          end: '2018-03-13'
        },
        {
          title: 'Meeting',
          start: '2018-03-12T10:30:00',
          end: '2018-03-12T12:30:00'
        },
        {
          title: 'Lunch',
          start: '2018-03-12T12:00:00'
        },
        {
          title: 'Meeting',
          start: '2018-03-12T14:30:00'
        },
        {
          title: 'Happy Hour',
          start: '2018-03-12T17:30:00'
        },
        {
          title: 'Dinner',
          start: '2018-03-12T20:00:00'
        },
        {
          title: 'Birthday Party',
          start: '2018-03-13T07:00:00'
        },
        {
          title: 'Click for Google',
          url: 'http://google.com/',
          start: '2018-03-28'
        }
      ]
    });

  });
  
// $("#myBtn").click(function(){
//     $("#myModal").modal();
// //     $('#myModal').on('shown.bs.modal', function () {
// //     	  $('#myInput').focus()
// //     	});
// });

$(function() {
	setTimeout(() => {
		$("#exit_btn_button").fadeIn(1000);
		$("#create_btn_button").fadeOut(1000);
		$("#calendar_btn_button").fadeOut(1000);
	}, 100);
});
</script>
</body>

</html>