var currentUpdateEvent;
var addStartDate;
var addEndDate;
var globalAllDay;

function updateEvent(event, element) {
    //alert(event.description);

    if ($(this).data("qtip")) $(this).qtip("destroy");

    currentUpdateEvent = event;

    $('#updatedialog').dialog('open');

    $("#eventName").val(event.title);
    $("#eventDesc").val(event.description);
    $("#eventId").val(event.id);
    $("#eventStart").text("" + event.start.toLocaleString());
    if (event.end === null) {
        $("#eventEnd").text("");
    }
    else {
        $("#eventEnd").text("" + event.end.toLocaleString());
    }

}

function checkForSpecialChars(stringToCheck) {
    var pattern = /[^A-Za-z0-9 ]/;
    return pattern.test(stringToCheck); 
}

$(document).ready(function() {

    // update Dialog
    $('#updatedialog').dialog({
        autoOpen: false,
        width: 470,
        buttons: {
            "update": function() {
                //alert(currentUpdateEvent.title);
                var eventToUpdate = {
                    id: currentUpdateEvent.id,
                    title: $("#eventName").val(),
                    description: $("#eventDesc").val()
                };

                if (checkForSpecialChars(eventToUpdate.title) || checkForSpecialChars(eventToUpdate.description)) {
                    alert("please enter characters: A to Z, a to z, 0 to 9, spaces");
                }
                else {
                    PageMethods.UpdateEvent(eventToUpdate, updateSuccess);
                    $(this).dialog("close");

                    currentUpdateEvent.title = $("#eventName").val();
                    currentUpdateEvent.description = $("#eventDesc").val();
                    $('#calendar').fullCalendar('updateEvent', currentUpdateEvent);
                }

            }

        }
    });

    var date = new Date();
    var d = date.getDate();
    var m = date.getMonth();
    var y = date.getFullYear();

    var calendar = $('#indoorCalendar').fullCalendar({
        theme: true,
        header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month,agendaWeek,agendaDay'
        },
        eventClick: updateEvent,
        selectable: true,
        selectHelper: true,
        select: selectDate,
        editable: true,
        events: "JsonResponse.ashx",
        eventDrop: eventDropped,
        eventResize: eventResized,
        eventRender: function(event, element) {
            element.qtip({
                content: event.description,
                position: { corner: { tooltip: 'bottomLeft', target: 'topRight'} },
                style: {
                    border: {
                        width: 1,
                        radius: 3,
                        color: '#2779AA'

                    },
                    padding: 10,
                    textAlign: 'center',
                    tip: true,
                    name: 'cream'
                }

            });
        }

    });

});

