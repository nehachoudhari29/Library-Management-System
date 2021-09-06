<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="My_Libryary_Management.Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 208px;
        }
        .style2
        {
            width: 151px;
        }
        .style3
        {
            height: 23px;
            text-align: left;
        }
        .style4
        {
            width: 151px;
            height: 11px;
            font-weight: bold;
            font-size: large;
        }
        .style6
        {
            width: 151px;
            height: 22px;
        }
        .style7
        {
            height: 22px;
            text-align: left;
        }
        .style8
        {
            width: 151px;
            height: 23px;
        }
        .style9
        {
            height: 23px;
            font-weight: bold;
            text-align: right;
            width: 302px;
        }
        .style10
        {
            height: 22px;
            font-weight: bold;
            text-align: right;
            width: 302px;
        }
        .style11
        {
            font-weight: bold;
            text-align: right;
            width: 302px;
        }
        .style12
        {
            height: 11px;
            width: 302px;
        }
        .style13
        {
            width: 302px;
            height: 55px;
        }
        .style14
        {
            width: 151px;
            height: 55px;
        }
        .style15
        {
            height: 55px;
        }
        .style16
        {
            font-size: x-large;
        }
        .style17
        {
            height: 11px;
        }
        .style18
        {
            font-size: xx-large;
        }
        .style19
        {
            text-align: justify;
        }
        .style20
        {
            text-align: left;
        }
    </style>
</head>
<body background="Images/slideshow-wallpaper5.jpg" style="font-size: x-large">
    <form id="form1" runat="server" style="margin-left:160px; font-size: medium;">
    <div class="style19">
        <span class="style18" 
            style="font-size: xx-large; font-weight: bold; font-style: inherit; color: #000080; background-color: #C0C0C0">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Library Management System&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        </span><br /><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <strong><span class="style16" style="background-position: inherit">Registration Form</span></strong><br />
       </div>
       <table class="style1">
        <tr>
            <td class="style12">
            </td>
            <td class="style4" style="text-align: center">
                &nbsp;</td>
            <td class="style17">
            </td>
        </tr>
        <tr>
            <td class="style10">
                User Name</td>
            <td class="style6">
                <asp:TextBox ID="txt_RegUsername" runat="server" Width="148px"></asp:TextBox>
            </td>
            <td class="style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                Password</td>
            <td class="style2">
                <asp:TextBox ID="Txt_regpass" runat="server" 
                    ontextchanged="TextBox2_TextChanged" Width="146px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style20">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                Confirm Password</td>
            <td class="style8">
                <asp:TextBox ID="Txt_Pass" runat="server" Width="146px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style3">
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="Txt_Pass" ControlToValidate="Txt_regpass" 
                    ErrorMessage="Password Not Match" ForeColor="Red" Font-Size="Small"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                <br />
                <asp:Button ID="Btn_regsubmit" runat="server" Height="29px" 
                    style="text-align: center; margin-left: 19px; color: #0066FF;" 
                    Text="Submit" Width="95px" 
                    onclick="Btn_regsubmit_Click" Font-Bold="True" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
     </table>
     <table style="width: 577px">
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                OR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <td class="style15">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Button 
                    ID="Btn_Iogin" runat="server" Height="24px" onclick="Button1_Click" 
                    style="margin-left: 0px; margin-right: 0px; " 
                    Text="Login" Width="81px" Font-Bold="True" ForeColor="#0033CC" />
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl_reg" runat="server"></asp:Label>
    
    </div>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
