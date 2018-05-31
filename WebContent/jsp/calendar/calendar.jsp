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

.startDay, .endDay {
	padding: 0px;
}

.startDay{
	padding-right: 5px;
}

.endDay{
	padding-left: 5px;
}

#scheduleDetail,#updateScheduleDetail {
	height: 100px;
}

#scheColor, #editscheColor {
	width: 30px;
	height: 35px;
	margin-top: 0px;
	padding: 0px;
	border: none;
	background-color: rgba(0, 0, 0, 0);
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
						<!-- 일정리스트 -->
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
			<!-- 			<button class="btn btn-default" id="myBtn" type="button" -->
			<!-- 				data-toggle="modal" data-target="#newScheModal" data-backdrop="static" -->
			<!-- 				style="color: rgb(0, 0, 0); position: absolute; right: 30px; bottom: 50px;">새일정 -->
			<!-- 				추가</button> -->
			<!-- <button type="button" class="fc-addEventButton-button fc-button fc-state-default fc-corner-left fc-corner-right">add event...</button> -->
		</div>
		<div class="col-md-1" style="visibility: hidden;"></div>


	</div>

	<!-- 새 일정 모달 -->
	<div class="modal fade in" id="newScheModal" role="modal" tabindex="-1"
		aria-labelledby="newScheModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">
						<strong>새 일정</strong>
					</h4>
				</div>
				<div class="modal-body">
					<div class="contact-clean">
						<form method="post" id="addNewSchedule">
							<div class="form-group col-md-5 startDay">
								<span>시작일</span> <input type="date" class="form-control"
									name="startDate" id="startDate" />
							</div>
							<div class="form-group col-md-5 endDay">
								<span>종료일</span> <input type="date" class="form-control"
									name="endDate" id="endDate" />
							</div>
							<div class="form-group col-md-2">
								<span style="visibility: hidden;">일정색</span> <input
									id="scheColor" type="color" value="#41c7f4">
							</div>
							<div class="form-group">
								<textarea rows="14" name="message" placeholder="일정 내용"
									class="form-control" id="scheduleDetail">
					        </textarea>
							</div>
							<div class="form-group">
								<button class="btn btn-primary float-none" type="submit"
									id="addSchBtn">추가</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<!-- 일정 편집 모달 -->
	<div class="modal fade in" id="editScheModal" role="modal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title"><strong>일정편집</strong>
					</h4>
				</div>
				<div class="modal-body">
					<div class="contact-clean">
						<form method="post" id="editSechedule">
							<div class="form-group col-md-5 startDay">
								<span>시작일</span>
								<input type="date" class="form-control" id="editStartDate"/>
							</div>
							<div class="form-group col-md-5 endDay">
								<span>종료일</span><input type="date" class="form-control" id="editEndDate"/>
							</div>
							<div class="form-group col-md-2">
								<span style="visibility: hidden;">일정색</span> <input
									id="editscheColor" type="color" value="#41c7f4">
							</div>
							<div class="form-group">
								<textarea id="updateScheduleDetail"rows="14" name="message" placeholder="미니프로젝트 2-회의"
									class="form-control"></textarea>
							</div>
							<div class="form-group">
								<button class="btn btn-primary float-none" type="submit">편집</button>
								<button class="btn btn-secondary float-none" type="submit"
									style="color: rgb(0, 0, 0);">삭제</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->



	<script>
$(document).ready(function() {

    $('#calendar').fullCalendar({
    //캘린더 상단
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'addEventButton'
      },
      //일정클릭이벤트
      eventClick: function(eventObj) {
    	  $("#editScheModal").modal();	
// 	          alert('Clicked ' + eventObj.title);
	      },
	    //새일정 추가
	    customButtons: {
	      addEventButton: {
	        text: '+',
	        click: function() {
// 	          var dateStr = prompt('날짜를 입력하세요(YYYY-MM-DD)');
// 	          var date = moment(dateStr);
	          $("#newScheModal").modal();
	          $("#newScheModal").attr({"diplay":"block"});
			  $("#addSchBtn").click(function(){
				  $("#addNewSchedule").on("submit", function(e){
					e.preventDefault();
				  var sDate = moment($("#startDate").val());
				  var eDate = moment($("#endDate").val());
				  var scheduleDetail = $("#scheduleDetail").val();
				  });
				 $.fullCalendar.formatRange(sDate, eDate, 'MMMM D YYYY');
// 	          if (date.isValid()) {
	            $('#calendar').fullCalendar('renderEvent', {
	              title: 'test',
	              start: sDate,
	              end:   eDate,
	              allDay: true
	            });
	            alert('일정이 등록 완료되었습니다');
// 	          } else {
// 	            alert('올바른 날짜가 아닙니다.');
// 	          }
			  });
	        }
	      }
	    },
	  //오늘날짜
      defaultDate: '2018-03-12',
      navLinks: true, // can click day/week names to navigate views
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      //이벤트들
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