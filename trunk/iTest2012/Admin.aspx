<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="iTest2012.Admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div align="center">
<table class="border_tableheadline">
<tr>
<td>Quản trị
</td>
</tr>
</table>
<table class="border_alltable">
<tr align="left">
<td class="td_style_Nowid">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddQuestions.aspx" Target="_blank">. Thêm câu hỏi</asp:HyperLink>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink4" runat="server" 
        NavigateUrl="~/ViewQuestions.aspx" Target="_blank">. Quản lý câu hỏi</asp:HyperLink>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" 
        NavigateUrl="~/ManageSubject.aspx" Target="_blank">. Quản lý chủ đề</asp:HyperLink>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink3" runat="server" 
        NavigateUrl="~/ManagePermission.aspx" Target="_blank">. Quản lý users</asp:HyperLink>
        </td>
        </tr>
</table>
    </div>
</asp:Content>
