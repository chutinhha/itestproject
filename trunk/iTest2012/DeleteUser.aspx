<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DeleteUser.aspx.cs" Inherits="iTest2012.DeleteUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        font-size: x-large;
        color: #0000FF;
    }
    .style2
    {
        width: 400px;
    }
    .style3
    {
        width: 132px;
        color: #0000FF;
    }
    .style5
    {
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <br />
    <br />
    <br />
    <table class="style2" align="center" >
        <tr>
            <td class="style1" colspan="2" style="text-align: center">
                <strong>Delete User</strong></td>
        </tr>
        <tr>
            <td class="style3">
                User Name :</td>
            <td class="style5">
                <asp:DropDownList ID="ddlUserName" runat="server" 
                    DataSourceID="LinqDataSource1" DataTextField="iUserName" 
                    DataValueField="iUserName" Width="250px">
                </asp:DropDownList>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                    ContextTypeName="iTest2012.MyiTestDataDataContext" EntityTypeName="" GroupBy="iUserName" 
                    OrderBy="iUserName" OrderGroupsBy="key" 
                    Select="new (key as iUserName, it as iUsers)" TableName="iUsers">
                </asp:LinqDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnDel" runat="server" onclick="btnDel_Click" Text="Delete" 
                    Width="100px" />
            </td>
        </tr>
    </table>
    <br />
</div>
</asp:Content>

