<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="Lab5_CIS233N.Page2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 188px;
            height: 59px;
        }
        .auto-style3 {
            width: 188px;
            height: 55px;
            text-align: right;
        }
        .auto-style4 {
            width: 338px;
            height: 55px;
        }
        .auto-style5 {
            height: 55px;
        }
        .auto-style6 {
            width: 188px;
            height: 65px;
            text-align: right;
        }
        .auto-style7 {
            width: 338px;
            height: 65px;
        }
        .auto-style8 {
            height: 65px;
        }
        .auto-style9 {
            width: 338px;
            height: 59px;
        }
        .auto-style10 {
            height: 59px;
        }
        .auto-style11 {
            width: 59px;
        }
        .auto-style12 {
            text-align: left;
            font-size: xx-large;
            color: #0066FF;
        }
        .auto-style13 {
            background-color: #FF9933;
        }
        .auto-style14 {
            font-size: large;
            color: #000000;
            background-color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style12">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp; Login</strong><br />
            <span class="auto-style14">Returning User</span></div>
        <table class="auto-style13" style="width:100%;">
            <tr>
                <td class="auto-style3">Email</td>
                <td class="auto-style4">
                    <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Email is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style6">Password</td>
                <td class="auto-style7">
                    <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passwordTextBox" ErrorMessage="Password is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Remember Me!" />
                </td>
                <td class="auto-style9">
                    <asp:Image ID="loginImage" runat="server" Height="47px" Width="64px" />
                </td>
                <td class="auto-style10"></td>
            </tr>
        </table>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" />
            <input id="Reset1" class="auto-style11" type="reset" value="reset" /></p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/firstpage.aspx">New User? Click here</asp:HyperLink>
    </form>
</body>
</html>
