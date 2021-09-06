<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="My_Libryary_Management.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            font-size: medium;
        }
        .style2
        {
            text-align: right;
            width: 312px;
        }
        .style7
        {
            width: 282px;
            text-align: left;
        }
        .style9
        {
            width: 100%;
        }
        .style11
        {
            width: 6px;
        }
        .style12
        {
            font-size: medium;
        }
        .style13
        {
            width: 139px;
            text-align: left;
        }
        .style14
        {
            font-size: xx-large;
        }
        .bg
        {
            background-image:url("Images/Light.png");
            height:100%;
            background-position:center;
            background-repeat:no-repeat;
        }
        .style15
        {
            width: 6px;
            height: 17px;
        }
        .style16
        {
            height: 17px;
        }
        .style17
        {
            color: #FF0000;
        }
    </style>
</head>
<body 
    style="font-weight: 700; font-size: x-large; text-align: center" 
    background="Images/slideshow-wallpaper5.jpg" >
    <form id="form1" runat="server">
    <div>
    
        &nbsp;<span class="style14"  
            
            style="background-position: inherit; border-style: inherit; border-width: inherit; border-color: #C0C0C0; margin: inherit; background-color: #C0C0C0; font-weight: bold; font-size: xx-large; font-style: normal; color: #000080; line-height: inherit; vertical-align: inherit; text-align: inherit; padding-top: inherit; padding-right: inherit; left: inherit; text-decoration: blink;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Library Management System&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
        </span><br /><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Login Page</div>
    <table class="style1" style="margin-left:45px; height: 76px;"><tr>
            <td class="style2">
                User Name</td>
            <td class="style13">
                <asp:TextBox ID="Txt_username" runat="server" Width="144px" 
                    ontextchanged="Txt_username_TextChanged" style="margin-left: 20px"></asp:TextBox>
            </td>
            <td class="style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Txt_username" CssClass="style17" 
                    ErrorMessage="Please Enter Username"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Password</td>
            <td class="style13">
                <asp:TextBox ID="txt_password" runat="server" TextMode="Password" Width="143px" 
                    ontextchanged="txt_password_TextChanged" style="margin-left: 18px"></asp:TextBox>
            </td>
            <td class="style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_password" CssClass="style17" 
                    ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        </table>
    <table class="style9">
        <tr>
            <td class="style15">
                </td>
            <td class="style16">
    <table class="style1" style="margin-left:45px;">
        <tr>
            <td class="style2">
                Confirm
                Password&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style13">
                <asp:TextBox ID="txt_password0" runat="server" TextMode="Password" Width="143px" 
                    ontextchanged="txt_password_TextChanged" style="margin-left: 0px"></asp:TextBox>
            </td>
            <td class="style7">
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txt_password" ControlToValidate="txt_password0" 
                    ErrorMessage="Password Not Match" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        </table>
    <table class="style9">
        <tr>
            <td class="style15">
                </td>
        </tr>
        </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button 
                    ID="Btn_Iogin" runat="server" Height="23px" onclick="Button1_Click" 
                    style="margin-left: 0px; margin-right: 0px; " 
                    Text="Login" Width="81px" Font-Bold="True" ForeColor="#0033CC" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style12">&nbsp;&nbsp;&nbsp;
                </span></td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td style="font-size: small">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbl_1" runat="server"></asp:Label>
    </form>
</body>
</html>
