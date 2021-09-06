<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="My_Libryary_Management.Book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
.tb_book
{
    border-collapse;
}
.tb_book_AED,.tb_book_th
{
    border:1px solid #6699cc;
}
.tdbi_1
{
    width:200px;
    padding:3px 25px 3px 3px;
    background:#fafafa;
    text-align:right;
    border-top:1px solid #dddddd;
    border-bottom:1px solid #dddddd;
    border-right:1px solid #dddddd;
}
.tdbi_2
{
    width:350px;
    padding:3px;
    background:#fafafa;
    border-top:1px solid #dddddd;
    border-bottom:1px solid #dddddd;
}
.txtbox
{
    width:300px;
    padding:3px;
}
.btn
{
    background:#6699cc;
    border:1px solid #6699cc;
    padding:5px 10px 5px 10px;
    color:#ffffff;
}
.btn:hover
{
    background:#ea6153;
    border:1px solid #e6153;
    padding:5px 10px 5px 10px;
    color:#ffffff;
}
        .text-primary
        {
            margin-left: 0px;
        }
    </style>
<script src="JavaScript\jquery-1.11.2.js" type="text/javascript"></script>
<script src="JavaScript\bookvalidation.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top: -15px; height: 583px; padding: 35px 25px 50px 25px;background-image: url('Images/mybg.jpg'); margin-bottom: 187px;" >
        <div style="padding: 5px 10px 5px 10px; width: 110%; margin-left: -30px; height: 51px; margin-top: 0px;" 
            align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;
            <asp:Button ID="btn_repotbook" runat="server" Font-Bold="True" 
                ForeColor="#0066FF" onclick="btn_repotbook_Click" Text="Report" Width="65px" />
            <asp:RadioButtonList ID="rbl_book_AEUD" runat="server" 
                RepeatDirection="Horizontal" Font-Bold="true" CssClass="text-primary" 
                Width="225px" Height="16px" 
                >
                <asp:ListItem Text="ADD" Value="1" Selected="True"></asp:ListItem>
                <asp:ListItem Text="EDIT" Value="2"></asp:ListItem>
                <asp:ListItem Text="DELETE" Value="3"></asp:ListItem>
            </asp:RadioButtonList>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;
        </div>
        <div style="padding: 10px;" align="center">
            <table class="tb_book">
                <tr>
                    <td id="table_Add" class="style6" style="display: block;" runat="server">
                        <table>
                            <caption>
                                <h5 class="style5">Add Book to Inventory</h5>
                            </caption>
                            <tr>
                                <td class="tdbi_1">
                                    <br />
                                    Book ID :</td>
                                <td class="tdbi_2">
                                    <asp:RequiredFieldValidator ID="val_bookid" runat="server" 
                                        ControlToValidate="rbl_book_AEUD" ErrorMessage="Please Enter Data" 
                                        Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txt_bookid" CssClass="txtbox" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="tdbi_1">Book Name :</td>
                                <td class="tdbi_2">
                                    <asp:TextBox ID="txt_bookname" CssClass="txtbox" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                             <tr>
                                <td class="tdbi_1">Book Author Name :</td>
                                <td class="tdbi_2">
                                    <asp:TextBox ID="Txt_bookauthor" CssClass="txtbox" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="tdbi_1">Book Publisher Name :</td>
                                <td class="tdbi_2">
                                    <asp:TextBox ID="txt_bookpubname" CssClass="txtbox" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="tdbi_1">Book Publishered Year :</td>
                                <td class="tdbi_2">
                                    <asp:TextBox ID="txt_bookpubyear" CssClass="txtbox" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="tdbi_1">Book Price :</td>
                                <td class="tdbi_2">
                                    <asp:TextBox ID="txt_bookprice" CssClass="txtbox" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="tdbi_1">Book Quantity :</td>
                                <td class="tdbi_2">
                                    <asp:TextBox ID="txt_bookqty" CssClass="txtbox" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td id="table_Edit" class="tb_book_AED" style="display: none;" runat="server">
                        <table>
                            <caption>
                                 <h5 class="style5">Edit Book</h5>
                            </caption>
                            <tr>
                                <td class="tdbi_1">Book ID :</td>
                                <td class="tdbi_2">
                                    <asp:TextBox ID="txt_edit_bookid" CssClass="txtbox" Width="235px" runat="server"></asp:TextBox>
                                    <asp:Button ID="btn_check" runat="server" CssClass="btn" Text="Check" 
                                        onclick="btn_check_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="tdbi_1">Book Name :</td>
                                <td class="tdbi_2">
                                    <asp:TextBox ID="txt_edit_bookname" CssClass="txtbox" ReadOnly="true" BackColor="#dddddd"
                                        runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td class="tdbi_1">Book Author Name :</td>
                                <td class="tdbi_2">
                                    <asp:TextBox ID="Txt_edit_bookauthor" CssClass="txtbox" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="tdbi_1">Book Publisher Name :</td>
                                <td class="tdbi_2">
                                    <asp:TextBox ID="txt_edit_bookpubname" CssClass="txtbox" ReadOnly="true" BackColor="#dddddd"
                                        runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td class="tdbi_1">Book Publisher Year :</td>
                                <td class="tdbi_2">
                                    <asp:TextBox ID="txt_edit_bookpubdate" CssClass="txtbox" ReadOnly="true" BackColor="#dddddd"
                                        runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td class="tdbi_1">Book Price :</td>
                                <td class="tdbi_2">
                                    <asp:TextBox ID="txt_edit_bookprice" CssClass="txtbox" ReadOnly="true" BackColor="#dddddd"
                                        runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td class="tdbi_1">Book Quantity :</td>
                                <td class="tdbi_2">
                                    <asp:TextBox ID="txt_edit_bookqty" CssClass="txtbox" ReadOnly="true" BackColor="#dddddd"
                                        runat="server"></asp:TextBox></td>
                            </tr>
                        </table>
                    </td>
                    <td id="table_Delete" class="tb_book_AED" style="display: none;" runat="server">
                        <table>
                            <caption>
                                <h5 class="style5">Delete Book</h5>
                            </caption>
                            <tr>
                                <td class="tdbi_1">Book ID :</td>
                                <td class="tdbi_2">
                                    <asp:TextBox ID="txt_delete_bookid" CssClass="txtbox" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <span style="color: red;">** The book will be permanently deleted from the system</span>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <asp:Label ID="lblresult" runat="server" ForeColor="#006600"></asp:Label>
        <br />
        <asp:Label ID="lbl_book_result" runat="server" ForeColor="#006600"></asp:Label>
        <!-- Add Book ADD EDIT DELETE -->
        <div id="div_add" align="center" 
            style="padding-top: 25px; display: block; height: 72px; margin-top: 0px;" 
            runat="server">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_Add" runat="server" CssClass="btn" Text="ADD" OnClick="btn_Add_Click"
              />
            <asp:Button ID="btn_Add_Reset" runat="server" CssClass="btn" Text="RESET" onclick="btn_Add_Reset_Click" 
                />
            <asp:Button ID="btn_Add_Cancel" runat="server" CssClass="btn" Text="CANCEL" onclick="btn_Add_Cancel_Click" 
                 />
            <br />
&nbsp;</div>
        <!-- Edit Book ADD EDIT DELETE -->
        <div id="div_edit" align="center" style="padding-top: 25px; display: none;" runat="server">
            <asp:Button ID="btn_Update" runat="server" CssClass="btn" Text="UPDATE" OnClick="btn_Update_Click"
                />
            <asp:Button ID="btn_Update_Reset" runat="server" CssClass="btn" Text="RESET" OnClick="btn_Update_Reset_Click"
                />
            <asp:Button ID="btn_Update_Cancel" runat="server" CssClass="btn" Text="CANCEL" OnClick="btn_Update_Cancel_Click"
               />
        </div>
        <!-- Delete Book ADD EDIT DELETE -->
        <div id="div_delete" align="center" style="padding-top: 25px; display: none;" runat="server">
            <asp:Button ID="btn_Delete" runat="server" CssClass="btn" Text="DELETE" OnClick="btn_Delete_Click"
                 />
            <asp:Button ID="btn_Delete_Reset" runat="server" CssClass="btn" Text="RESET" OnClick="btn_Delete_Reset_Click"
                />
            <asp:Button ID="btn_Delete_Cancel" runat="server" CssClass="btn" Text="CANCEL" OnClick="btn_Delete_Cancel_Click"
                />
        </div>

    </div>

</asp:Content>
