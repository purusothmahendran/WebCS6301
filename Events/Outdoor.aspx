<%@ Page Title="" Language="C#" MasterPageFile="~/Events/Event.master" AutoEventWireup="true" CodeFile="Outdoor.aspx.cs" Inherits="Events_Outdoor" %>

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
							<a href="Outdoor.aspx" class="subactive">
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
							<a href="Creation.aspx">
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
                <h1>Outdoor Sports</h1>
            </div>
            <!-- #content-header -->
			<div id="content-holder">
				<div id="outdoorCalendar"></div>
            </div>

        </div>
</asp:Content>

