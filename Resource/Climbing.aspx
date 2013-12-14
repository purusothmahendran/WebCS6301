<%@ Page Title="" Language="C#" MasterPageFile="~/Resource/Resource.master" AutoEventWireup="true" CodeFile="Climbing.aspx.cs" Inherits="Resource_Climbing" %>

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
							<a href="Dance.aspx">
								Dance Room
							</a>
						</li>
						<li>
							<a href="Aerobics.aspx">
								Aerobics Room
							</a>
						</li>
						<li>
							<a href="Climbing.aspx" class="subactive">
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
                <h1>Wall Climbing</h1>
            </div>
            <!-- #content-header -->
			<div id="content-holder">
				<div id="climbingCalendar"></div>
			</div>

        </div>
</asp:Content>

