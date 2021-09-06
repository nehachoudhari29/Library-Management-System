<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="My_Libryary_Management.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .myddls {
            align-items: center;
            background-color: rgb(255, 255, 255);
            border-bottom-color: rgb(204, 204, 204);
            border-bottom-left-radius: 4px;
            border-bottom-right-radius: 0px;
            border-bottom-style: solid;
            border-bottom-width: 1px;
            border-collapse: collapse;
            border-image-outset: 0px;
            border-image-repeat: stretch;
            border-image-slice: 100%;
            border-image-source: none;
            border-image-width: 1;
            border-left-color: rgb(204, 204, 204);
            border-left-style: solid;
            border-left-width: 1px;
            border-right-color: rgb(204, 204, 204);
            border-right-style: solid;
            border-right-width: 1px;
            border-top-color: rgb(204, 204, 204);
            border-top-left-radius: 4px;
            border-top-right-radius: 0px;
            border-top-style: solid;
            border-top-width: 1px;
            box-shadow: rgba(0, 0, 0, 0.0745098) 0px 1px 1px 0px inset;
            box-sizing: border-box;
            color: rgb(85, 85, 85);
            cursor: default;
            display: inline-block;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            font-size: 14px;
            font-stretch: normal;
            font-style: normal;
            font-variant: normal;
            font-weight: normal;
            height: 34px;
            letter-spacing: normal;
            line-height: normal;
            margin-bottom: 0px;
            margin-left: 0px;
            margin-right: 0px;
            margin-top: 0px;
            max-width: 280px;
            overflow-x: visible;
            overflow-y: visible;
            padding-bottom: 6px;
            padding-left: 12px;
            padding-right: 12px;
            padding-top: 6px;
            text-align: start;
            text-indent: 0px;
            text-rendering: auto;
            text-shadow: none;
            text-transform: none;
            transition-delay: 0s, 0s;
            transition-duration: 0.15s, 0.15s;
            transition-property: border-color, box-shadow;
            transition-timing-function: ease-in-out, ease-in-out;
            vertical-align: middle;
            white-space: pre;
            width: 48px;
            word-spacing: 0px;
            writing-mode: horizontal-tb;
            -webkit-appearance: menulist-button;
            -webkit-rtl-ordering: logical;
        }
        .table-striped
        {}
        .style5
        {
            width: 88px;
        }
        .bg-success
        {
            width: 607px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <center style="background-image: url('Images/mybg.jpg')">
        <div style="width: 967px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnreortstu" runat="server" Font-Bold="True" 
                ForeColor="#0033CC" onclick="btnreortstu_Click" Text="Report" />
            <br />
            <br />
            
            <div class="input-group">
                <div class="form-inline">              
                    <table border="0" cellpadding="5" cellspacing="5" class="table bg-success ">
                        <tr>
                            <td>
                                Studen<span>t Id</span>
                            </td>
                            <td>
                                Student<span> Name</span>
                            </td>
                             <td>
                                <span>Education </span>
                            </td>
                             <td>
                                <span>Branch </span>
                            </td>
                            <td class="style5">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="txtStudentId" class="form-control" placeholder="Student Id" CssClass="form-control"/>
                            </td>
                            <td>
                                 <asp:TextBox runat="server" ID="txtStudentName" class="form-control" placeholder="Student Name" CssClass="form-control"/>
                            </td>
                             <td>
                                <asp:DropDownList runat="server" ID="ddlyear"  class="form-control">
                                     <asp:ListItem Text="1st year" Selected="True"></asp:ListItem>
                                      <asp:ListItem Text="2nd year"></asp:ListItem>
                                      <asp:ListItem Text="3rd year"></asp:ListItem>
                                      <asp:ListItem Text="4th year"></asp:ListItem>
                                      <asp:ListItem Text="Other"></asp:ListItem>
                                    </asp:DropDownList>
                            </td>
                             <td>
                                 <asp:DropDownList runat="server" ID="ddlBranch"  class="form-control" >
                                       <asp:ListItem Text="SCI" Selected="True"></asp:ListItem>
                                       <asp:ListItem Text="CS"></asp:ListItem>
                                       <asp:ListItem Text="IT"></asp:ListItem>
                                       <asp:ListItem Text="E&TC"></asp:ListItem>
                                      <asp:ListItem Text="MBA"></asp:ListItem>
                                      <asp:ListItem Text="Others"></asp:ListItem>
                                 </asp:DropDownList>
                            </td>
                            <td class="style5">
                                <asp:Button Text="Add User" runat="server" ID="btnAdd" 
                                    class="btn btn-sm btn-primary" onclick="btnAdd_Click1" /> 
                            </td>
                        </tr>
                        <tr>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorUser" runat="server" 
                ControlToValidate="txtStudentId" ErrorMessage="Please Enter the ID" 
                Font-Bold="True" ForeColor="Red" style="text-align: center"></asp:RequiredFieldValidator></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" 
                ControlToValidate="txtStudentName" ErrorMessage="Please Enter Name" 
                Font-Bold="True" ForeColor="Red" style="text-align: center"></asp:RequiredFieldValidator></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                </tr>
                    </table>
                </div>
            </div>
            <br />
            
            
            <asp:SqlDataSource ID="SqlDataSourceUser" runat="server" 
                ConnectionString="<%$ ConnectionStrings:LIBRARYConnectionString %>" 
                SelectCommand="SELECT * FROM [Student]" ></asp:SqlDataSource>
            <br />
          <asp:GridView ID="GridView1" runat="server" 
                CssClass="table table-responsive table-striped" AutoGenerateColumns="False" 
                DataKeyNames="studentid" CellPadding="4" ForeColor="#333333" 
                GridLines="None" AllowPaging="True" AllowSorting="True" 
                DataSourceID="SqlDataSourceUser" Height="516px" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" >
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <Columns>
                  <asp:CommandField ShowSelectButton="True" />
                  <asp:BoundField DataField="id" HeaderText="id" 
                      SortExpression="id" ReadOnly="True" InsertVisible="False"  />
                  <asp:BoundField DataField="studentid" HeaderText="studentid" 
                      SortExpression="studentid" ReadOnly="True" />
                  <asp:BoundField DataField="studentname" HeaderText="studentname" 
                      SortExpression="studentname" />
                  <asp:BoundField DataField="studentbranch" HeaderText="studentbranch" 
                      SortExpression="studentbranch" />
                    <asp:BoundField DataField="studentyear" HeaderText="studentyear" 
                      SortExpression="studentyear" />
              </Columns>
              <EditRowStyle BackColor="#999999" />
              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
              <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
              <SortedAscendingCellStyle BackColor="#E9E7E2" />
              <SortedAscendingHeaderStyle BackColor="#506C8C" />
              <SortedDescendingCellStyle BackColor="#FFFDF8" />
              <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
             
        </div>
    </center>
</asp:Content>
