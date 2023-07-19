<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="firstpage.aspx.cs" Inherits="Lab5_CIS233N.firstpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            width: 350px;
        }
        .auto-style3 {
            height: 23px;
            width: 350px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table style="width: 100%; background-color: #FFCC00;">
            <tr>
                <td class="auto-style2">User Name</td>
                <td>
                    <asp:TextBox ID="userNameTextBox" runat="server" OnTextChanged="userNameTextBox_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userNameTextBox" ErrorMessage="User Name is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td class="auto-style1">
                    <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passwordTextBox" ErrorMessage="Password is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style2">Reenter Password</td>
                <td>
                    <asp:TextBox ID="reenterpTextBox" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="reenterpTextBox" ErrorMessage="Reenter is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passwordTextBox" ControlToValidate="reenterpTextBox" ErrorMessage="Passwords Must Match" ForeColor="Red"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td>
                    <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Email is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">State</td>
                <td>
                    <asp:DropDownList ID="stateDropDownList" runat="server" OnSelectedIndexChanged="stateDropDownList_SelectedIndexChanged">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>OR</asp:ListItem>
                        <asp:ListItem>WA</asp:ListItem>
                        <asp:ListItem>CA</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="stateDropDownList" ErrorMessage="State is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click1" />
        <input id="Reset1" type="reset" value="reset" /><asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" />
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Page2.aspx">Returning User?</asp:HyperLink>
        </p>
    </form>
</body>
</html>
