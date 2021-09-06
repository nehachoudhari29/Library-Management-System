<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebFormassignreport.aspx.cs" Inherits="My_Libryary_Management.WebFormassignreport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
        Font-Size="8pt" Height="600px" InteractiveDeviceInfos="(Collection)" 
        WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%">
        <LocalReport ReportPath="Reportassign.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource3" Name="DataSet1" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetData" 
        TypeName="My_Libryary_Management.DataSetassignTableAdapters.AssignTableAdapter">
        <InsertParameters>
            <asp:Parameter Name="studentid" Type="String" />
            <asp:Parameter Name="bookid" Type="String" />
            <asp:Parameter Name="assigneddate" Type="String" />
            <asp:Parameter Name="returndate" Type="String" />
            <asp:Parameter Name="penality" Type="String" />
            <asp:Parameter Name="statusid" Type="String" />
            <asp:Parameter Name="updatestatusdate" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
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
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetData" 
        TypeName="My Library Management.DataSetassignTableAdapters.AssignTableAdapter">
    </asp:ObjectDataSource>
</asp:Content>
