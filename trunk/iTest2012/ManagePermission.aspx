<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ManagePermission.aspx.cs" Inherits="iTest2012.ManagePermission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            text-align:left;
            color:Blue;
        }
        .style3
        {
            color: #0000FF;
            font-size: x-large;
            text-align: center;
        }
    .style4
    {
        text-align: center;
        color: Blue;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-color: #FFFFFF; text-align: center;">
        <br />
        <br />
        <asp:Image ID="Image_Permiss_Icon" runat="server" 
            ImageUrl="~/image/icon/key-icon.jpg" />
        <br />
        <br />
        <table style="border: medium ridge #0000FF; width: 350px;" align="center">
            <tr>
                <td class="style3" colspan="2">
                    <strong>Permission Management</strong></td>
            </tr>
            <tr>
                <td class="style2" style="width: 150px">
                    User Name</td>
                <td width="200px">
                    <asp:DropDownList ID="ddlUsername" runat="server" Width="180px" 
                        DataSourceID="LinqDataSource1" DataTextField="iUserName" 
                        DataValueField="iUserName">
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                        ContextTypeName="iTest2012.MyiTestDataDataContext" EntityTypeName="" 
                        Select="new (iUserName)" TableName="iUsers">
                    </asp:LinqDataSource>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 150px" width="150px">
                    Has Function</td>
                <td width="200px">
                    <asp:DropDownList ID="ddlFunction" runat="server" Width="180px" 
                        DataSourceID="LinqDataSource2" DataTextField="iFuncName" 
                        DataValueField="iFuncName">
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSource2" runat="server" 
                        ContextTypeName="iTest2012.MyiTestDataDataContext" EntityTypeName="" 
                        Select="new (iFuncName)" TableName="iFunctions">
                    </asp:LinqDataSource>
                </td>
            </tr>
            <tr>
                <td class="style4" colspan="2">
                    <asp:Button ID="btnAdd" runat="server" Text="Set" Width="100px" 
                        style="color: #0000FF" onclick="btnAdd_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="btnRemove" runat="server" Text="Remove" Width="100px" 
                        style="color: #0000FF" onclick="btnRemove_Click" />
                </td>
           
        </table>
        <br />
    </div>

</asp:Content>
