<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LogOut.aspx.cs" Inherits="iTest2012.LogOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="background-color: #FFFFFF">
        <em>Bạn đã Đăng To continue, please
        <asp:HyperLink ID="HyperLink9" runat="server" ForeColor="Red" 
            NavigateUrl="~/LogIn.aspx">Đăng nhập</asp:HyperLink>
&nbsp;! </em></p>
</asp:Content>
