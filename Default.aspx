<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>



<%@ Register src="Control/Slider.ascx" tagname="Slider" tagprefix="uc2" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div id="sidebar-wrapper">

            <nav id="sidebar">

                <ul id="main-nav">

                    <li class="active dropdown">
                        <a href="Default.aspx">
						Home
					</a>	
                    </li>




                </ul>

            </nav>
            <!-- #sidebar -->

        </div>
                <div id="content">

            <div id="content-header">
                <h1>Home<asp:Label ID="Label1" runat="server"></asp:Label>
                </h1>
            </div>
            <!-- #content-header -->
			<div id="content-holder">
	
	
                <uc2:Slider ID="Slider1" runat="server" />

	
	
                

	
	
            </div>

        </div>

</asp:Content>
