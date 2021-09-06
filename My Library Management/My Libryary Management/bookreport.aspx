<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="bookreport.aspx.cs" Inherits="My_Libryary_Management.bookreport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
<rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" style="margin-left: 76px; margin-right: 10px; margin-top: 0px;"
        Font-Size="8pt" Height="1200px" InteractiveDeviceInfos="(Collection)" 
        WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%">
    <LocalReport ReportPath="Reportbookrecord.rdlc">
        <DataSources>
            <rsweb:ReportDataSource DataSourceId="ObjectDataSource4" Name="DataSet1" />
        </DataSources>
    </LocalReport>
</rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="My_Libryary_Management.DataSetbookTableAdapters.BookRecordTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_bookid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="bookid" Type="String" />
            <asp:Parameter Name="bookname" Type="String" />
            <asp:Parameter Name="bookauthorname" Type="String" />
            <asp:Parameter Name="bookpubname" Type="String" />
            <asp:Parameter Name="bookpubyear" Type="String" />
            <asp:Parameter Name="bookprice" Type="String" />
            <asp:Parameter Name="bookquantity" Type="String" />
            <asp:Parameter Name="recorddate" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="bookname" Type="String" />
            <asp:Parameter Name="bookauthorname" Type="String" />
            <asp:Parameter Name="bookpubname" Type="String" />
            <asp:Parameter Name="bookpubyear" Type="String" />
            <asp:Parameter Name="bookprice" Type="String" />
            <asp:Parameter Name="bookquantity" Type="String" />
            <asp:Parameter Name="recorddate" Type="String" />
            <asp:Parameter Name="Original_bookid" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:SqlDataSource ID="SqlDataSourcebookreport" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LIBRARYConnectionString %>" 
        SelectCommand="SELECT * FROM [Assign]"></asp:SqlDataSource>
    </asp:Content>
