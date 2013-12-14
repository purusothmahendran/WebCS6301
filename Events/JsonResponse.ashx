<%@ WebHandler Language="C#" Class="JsonResponse" %>

using System;
using System.Web;
using System.Collections;
using System.Collections.Generic;
using System.Web.SessionState;

public class JsonResponse : IHttpHandler, IRequiresSessionState 
{


    public void ProcessRequest(HttpContext httpContext)
    {
        httpContext.Response.ContentType = "application/json";

        DateTime start = new DateTime(1970, 1, 1);
        DateTime end = new DateTime(1970, 1, 1);

        start = start.AddSeconds(double.Parse(httpContext.Request.QueryString["start"]));
        end = end.AddSeconds(double.Parse(httpContext.Request.QueryString["end"]));
       
        
        String result = String.Empty;

        result += "[";

        List<string> idList = new List<string>();
        foreach (CalendarEvent cevent in EventDAO.getEvents(start, end))
        {
            result += convertCalendarEventIntoString(cevent);
            idList.Add(cevent.id);
        }

        if (result.EndsWith(","))
        {
            result = result.Substring(0, result.Length - 1);
        }

        result += "]";
        httpContext.Session["idList"] = idList;
        httpContext.Response.Write(result);
    }

    private String convertCalendarEventIntoString(CalendarEvent calendarEvent)
    {
        String allDay = "Yes";
        String day = (calendarEvent.start).ToString();
        if (calendarEvent.start.ToString().Equals(calendarEvent.end.ToString()))
        {

            if (calendarEvent.start.Hour == 0 && calendarEvent.start.Minute == 0 && calendarEvent.start.Second == 0)
            {
                allDay = "true";
            }
            else
            {
                allDay = "false";
            }
        }
        else
        {
            if (calendarEvent.start.Hour == 0 && calendarEvent.start.Minute == 0 && calendarEvent.start.Second == 0
                && calendarEvent.end.Hour == 0 && calendarEvent.end.Minute == 0 && calendarEvent.end.Second == 0)
            {
                allDay = "true";
            }
            else
            {
                allDay = "false";
            }
        }
        return    "{" +
                  "id: '" + calendarEvent.id + "'," +
                  "title: '" + HttpContext.Current.Server.HtmlEncode(calendarEvent.title) + "'," +
                  "start:  " + ConvertToTimestamp(calendarEvent.start).ToString() + "," +
                  "end: " + ConvertToTimestamp(calendarEvent.end).ToString() + "," +
                  "allDay:" + allDay + "," +
                  "description: '" + HttpContext.Current.Server.HtmlEncode(calendarEvent.description) + "'" +
                  "},";
    }

    
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

    private long ConvertToTimestamp(DateTime value)
    {


        long epoch = (value.ToUniversalTime().Ticks - 621355968000000000) / 10000000;
        return epoch;

    }

}