<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Registeration.aspx.cs" Inherits="Registeration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="sidebar-wrapper">

            <nav id="sidebar">

                <ul id="main-nav">

                    <li class="active dropdown">
                        <a href="#">
						Registration
					</a>	
                    </li>
                </ul>

            </nav>
            <!-- #sidebar -->

        </div>
                <div id="content">

            <div id="content-header">
                <h1>Registration</h1>
            </div>
            <!-- #content-header -->
			<div id="content-holder">
            <div id="eventCreation">
            <p>Please fill in the following form to create a new account</p>
            <div id="regBody">
            <div class="eventTable">
                <label>First name*</label>&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
            <div class="eventTable">
                <label>Last name*</label>&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </div>
            <div class="eventTable">
                <label>Gender*</label>&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="M">Male</asp:ListItem>
                    <asp:ListItem Value="F">Female</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="eventTable">
                <label>Email*</label>&nbsp;
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </div>
            <div class="eventTable">
                <label>Mobile</label>&nbsp;
                
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                
            </div>
            <div class="eventTable">
                <label class="ssnCorrect">SSN</label>
		        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </div>
            <div class="eventTable">
                <label>User type*</label>&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Student</asp:ListItem>
                    <asp:ListItem>Faculty</asp:ListItem>
                    <asp:ListItem>Local Resident</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="eventTable">
            <label>Username*
                </label>
                <asp:ScriptManager ID="ScriptManager1" runat="server"> </asp:ScriptManager>
                    
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" AutoPostBack="True" 
                        ontextchanged="TextBox5_TextChanged"></asp:TextBox>
                </ContentTemplate>
                </asp:UpdatePanel>
               
            </div>
            <div class="eventTable">
                <label>Password*</label>&nbsp;
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </div>
            <div class="eventTable">
                <label>Re-type Password*</label>&nbsp;
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </div>
            </div>
            <div class="eventFooter">
            <input type="button" value="Reset" class="btn" id="reset" onclick="sessiondisplay()"/>
            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primaryz" OnClientClick="return validate();" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </div>
            </div>
            </div>

        </div>
        <script type="text/javascript">
            

            function validate() {

                var alert_string = "";
                var flag = true;
                var firstname = document.getElementById('<%=TextBox1.ClientID%>').value;
                var lastname = document.getElementById('<%=TextBox2.ClientID%>').value;
                var ssn = document.getElementById('<%=TextBox4.ClientID%>').value;
                var email = document.getElementById('<%=TextBox3.ClientID%>').value;
                var mobile = document.getElementById('<%=TextBox8.ClientID%>').value;
                var type = document.getElementById('<%=DropDownList2.ClientID%>').value;
                var username = document.getElementById('<%=TextBox5.ClientID%>').value;
                var pwd = document.getElementById('<%=TextBox6.ClientID%>').value;
                var pwdre = document.getElementById('<%=TextBox7.ClientID%>').value;
                var gen = document.getElementById('<%=DropDownList1.ClientID%>').value;

                if (firstname == "") {
                    alert_string = alert_string + "\n" + "* First Name field is empty";
                    flag = false;
                }

                else if ((firstname.length < 2) || (firstname.length > 50)) {
                    alert_string = alert_string + "\n" + "* First Name is invalid";
                    flag = false;
                }


                if (lastname == "") {
                    alert_string = alert_string + "\n" + "* Last Name field is empty";
                    flag = false;
                }

                else if ((lastname.length < 2) || (lastname.length > 50)) {
                    alert_string = alert_string + "\n" + "Last Name is invalid";
                    flag = false;
                }

                if (ssn == "") {
                    alert_string = alert_string + "\n" + "* SSN field is empty";
                    flag = false;
                }



                else if ((ssn.length < 2) || (ssn.length > 50)) {
                    alert_string = alert_string + "\n" + "SSN is invalid";
                    flag = false;
                }

                if (gen == "") {
                    alert_string = alert_string + "\n" + "* Gender field is empty";
                    flag = false;
                }

                //var email = document.getElementById('<%=TextBox4.ClientID %>').value;
                var emailPat = /^(\".*\"|[A-Za-z]\w*)@(\[\d{1,3}(\.\d{1,3}){3}]|[A-Za-z]\w*(\.[A-Za-z]\w*)+)$/
                var EmailmatchArray = email.match(emailPat);
                if (EmailmatchArray == null) {
                    alert_string = alert_string + "\n" + "E-Mail is invalid";
                    flag = false;
                }

                if (mobile == "") {
                    alert_string = alert_string + "\n" + "* Mobile number field is empty";
                    flag = false;
                }

                /*else if ((mobile.length < 12) || (mobile.length > 12)) {
                    alert_string = alert_string + "\n" + "Mobile is invalid";
                    flag = false;
                }*/
                if (type == "") {
                    alert_string = alert_string + "\n" + "* User type field is empty";
                    flag = false;
                }
                if (username == "") {
                    alert_string = alert_string + "\n" + " * UserName field is empty";
                    flag = false;
                }

                if (pwd == "") {
                    alert_string = alert_string + "\n" + " * Password cannot be empty";
                    flag = false;
                }

                if (pwd!=""&&pwdre == "") {
                    alert_string = alert_string + "\n" + " * Please retype your password ";
                    flag = false;
                }

                if (pwd != "" && pwdre!= "" && (pwd != pwdre)) {

                    alert_string = alert_string + "\n" + " * Passwords do not match ";
                    flag = false;
                }

                

                if (flag == false) {
                    alert(alert_string);
                    return false;
                }
                return flag;
            }
        </script>
</asp:Content>

