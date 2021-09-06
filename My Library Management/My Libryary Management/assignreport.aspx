<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="assignreport.aspx.cs" Inherits="My_Libryary_Management.assignreport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
   
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
        Font-Size="8pt" Height="1200px" InteractiveDeviceInfos="(Collection)" 
        style="margin-left: 90px" WaitMessageFont-Names="Verdana" 
        WaitMessageFont-Size="14pt" Width="100%">
        <LocalReport ReportPath="Reportassign.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet1" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>

    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
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
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetData" 
        TypeName="My Library Management.DataSetassignTableAdapters.AssignTableAdapter">
    </asp:ObjectDataSource>

</asp:Content>
