<%@ Page Title="" Language="C#" MasterPageFile="~/Events/Event.master" AutoEventWireup="true" CodeFile="Creation.aspx.cs" Inherits="Events_Creation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div id="sidebar-wrapper">

            <nav id="sidebar">

                <ul id="main-nav">

                    <li class="active dropdown">
                        <a href="Event.aspx">
						Events
					</a>	
                    <ul class="sub-nav">
						<li>
							<a href="Outdoor.aspx">
								Outdoor Sports
							</a>
						</li>
						<li>
							<a href="Indoor.aspx">
								Indoor Sports
							</a>
						</li>
                        <li>
							<a href="Theatre.aspx">
								Theatre
							</a>
						</li>
						<li>
							<a href="Workshops.aspx">
								Workshops
							</a>
						</li>
                        <li>
							<a href="Creation.aspx" class="subactive">
								Create Events
							</a>
						</li>
					</ul>
                    </li>




                </ul>

            </nav>
            <!-- #sidebar -->

        </div>
                <div id="content">

            <div id="content-header">
                <h1>Create Events</h1>
            </div>
            <!-- #content-header -->
			<div id="content-holder">
            <div id="eventCreation">
            <p>Please fill in the following form to create a new event</p>
            <div class="eventTable">
                <label>Event Title*</label>
		        <input type="text" />
            </div>
            <div class="eventTable">
                <label>Event Category*</label>
		        <select>
                  <option value="none">Select Category</option>
                  <option value="Outdoor">Outdoor Sports</option>
                  <option value="Indoor">Indoor Sports</option>
                  <option value="Theatre">Theatre</option>
                  <option value="Workshops">Workshops</option>
                </select>
            </div>
            <div class="eventFooter">
            <input type="button" value="Reset" class="btn" id="reset"/>
            <input type="button" value="Submit" class="btn btn-primary" />
            </div>
            </div>
            </div>

        </div>
</asp:Content>

