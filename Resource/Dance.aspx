<%@ Page Title="" Language="C#" MasterPageFile="~/Resource/Resource.master" AutoEventWireup="true" CodeFile="Dance.aspx.cs" Inherits="Resource_Dance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div id="sidebar-wrapper">

            <nav id="sidebar">

                <ul id="main-nav">

                    <li class="active dropdown">
                        <a href="Resource.aspx">
						Resource
					</a>	
                    <ul class="sub-nav">
						<li>
							<a href="Tennis.aspx">
								Tennis
							</a>
						</li>
						<li>
							<a href="Batminton.aspx">
								Batminton
							</a>
						</li>
                        <li>
							<a href="Racket.aspx">
								Racket Ball
							</a>
						</li>
						<li>
							<a href="Dance.aspx"  class="subactive">
								Dance Room
							</a>
						</li>
						<li>
							<a href="Aerobics.aspx">
								Aerobics Room
							</a>
						</li>
						<li>
							<a href="Climbing.aspx">
								Wall Climbing
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
                <h1>Dance Room</h1>
            </div>
            <!-- #content-header -->
			<div id="content-holder">
				<div id="danceCalendar"></div>
			</div>

        </div>
</asp:Content>

