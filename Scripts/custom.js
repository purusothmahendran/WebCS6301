$(document).ready(function() {
var calender = $("#tennisCalendar, #climbingCalendar, #aerobicsCalendar, #danceCalendar, #racketCalendar, #batmintonCalendar");



    var dis = '<%=Session["user_name"]%>';
    alert(dis);



calender.fullCalendar({
		header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaDay'
		},
		selectable: true,
		selectHelper: true,
		select: function(start, end, allDay) {
				var view = calender.fullCalendar('getView');
				if (view.name == "agendaDay") {
				var title = prompt('Event Title:');
				if (title) {
					calender.fullCalendar('renderEvent',
						{
							title: title,
							start: start,
							end: end,
							allDay: allDay
						},
						true // make the event "stick"
					);
				}
				calender.fullCalendar('unselect');
				} else {
					calender.fullCalendar( 'changeView', 'agendaDay' );
					calender.fullCalendar( 'gotoDate', start.getFullYear() , start.getMonth(),  start.getDate()  );
				}
			},
		eventClick: function(calEvent, jsEvent, view) {
        alert('Event: ' + calEvent.title);
		},
    });

    
	
	        var date = new Date();
		    var d = date.getDate();
		    var m = date.getMonth();
		    var y = date.getFullYear();

            var eventCalendar = $("#workshopCalendar, #indoorCalendar, #outdoorCalendar, #theatreCalendar");
            eventCalendar.fullCalendar({
		        header: {
				        left: 'prev,next today',
				        center: 'title',
				        right: 'month,agendaDay'
		        },
		        eventRender: function (event, element) {
                    element.attr('href', 'javascript:void(0);');
                    element.attr('onclick', 'openModal("' + event.title + '","' + event.description + '");');
                },
		        eventClick: function(event) {
		
		        },
                
		        events: [{ id: '1234', title: 'xyz', start: 1384408800, end: 1384495200, allDay: true, description: 'x y xz' }, { id: '1235', title: 'acz', start: 1384581600, end: 1384668000, allDay: true, description: 'x y xz' }, { id: 'Indoor2222', title: 'Squash Tournament', start: 1384840800, end: 1384840800, allDay: true, description: 'TSquash tournament' }, { id: 'Outdoor1111', title: 'Tennis Tournament', start: 1384581600, end: 1384668000, allDay: true, description: 'Tennis tournament' }, { id: 'Training3333', title: 'Dance 123', start: 1384927200, end: 1384754400, allDay: true, description: 'Tennis tournament' }, { id: 'Workshop4444', title: 'Keep yourself Fit', start: 1384840800, end: 1384754400, allDay: true, description: 'Talks about fitness' }],
            });
            
            $(".username").focus(function () {
                $(".user-icon").css("left", "-48px");
                if ($(this).val() == 'Username') $(this).val('');
            });
            $(".username").blur(function () {
                $(".user-icon").css("left", "33px");
                if ($(this).val() == '') $(this).val('Username');
            });

            $(".password").focus(function () {
                if ($(this).val() == 'Password') $(this).val('');
                $(".pass-icon").css("left", "-48px");
            });
            $(".password").blur(function () {
                $(".pass-icon").css("left", "33px");
                if ($(this).val() == '') $(this).val('Password');
            });
            $(".gradient").click(function () {
                $("#loginWrapper").hide();
                $(".gradient").hide();
            });


            $('#loginId').click(function(){
                     $("#loginWrapper").slideDown();
                     $(".gradient").show();
                }); 

            $('.close, .saveRSVP').click(function(){
                     $("#openModal").hide();
                }); 

            $('#reset').click(function() {
                $(':input','#regBody')
                    .not(':button, :submit, :reset, :hidden')
                    .val('')
                    .removeAttr('checked')
                    .removeAttr('selected');
            });

    });

    
    
	function openModal(title, desc, where) {
        $("#eventTitle").html(title);
        $("#eventDescription").html(desc);
        $("#eventWhere").html(where);
        $("#openModal").show();
    }
