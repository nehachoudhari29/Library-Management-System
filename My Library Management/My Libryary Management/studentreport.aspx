<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="studentreport.aspx.cs" Inherits="My_Libryary_Management.studentreport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
<rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
        Font-Size="8pt" Height="1200px" InteractiveDeviceInfos="(Collection)" 
        style="margin-left: 153px; margin-right: 7px" WaitMessageFont-Names="Verdana" 
        WaitMessageFont-Size="14pt" Width="102%">
    <LocalReport ReportPath="Reportstudent.rdlc">
        <DataSources>
            <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet1" />
        </DataSources>
    </LocalReport>
</rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="My_Libryary_Management.DataSetstudentTableAdapters.StudentTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_studentid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="studentid" Type="String" />
            <asp:Parameter Name="studentname" Type="String" />
            <asp:Parameter Name="studentbranch" Type="String" />
            <asp:Parameter Name="studentyear" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="studentname" Type="String" />
            <asp:Parameter Name="studentbranch" Type="String" />
            <asp:Parameter Name="studentyear" Type="String" />
            <asp:Parameter Name="Original_studentid" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetData" 
        TypeName="My Library Management.DataSetstudentTableAdapters.StudentTableAdapter">
    </asp:ObjectDataSource>
</asp:Content>
