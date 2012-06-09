<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChangePass.aspx.cs" Inherits="iTest2012.ChangePass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: x-large;
        }
        .style2
        {
            background-color: #003300;
        }
        .style3
        {
            font-size: medium;
            font-weight: 700;
        }
        .style4
        {
            background-color: #FFFFCC;
        }
    .style5
    {
        font-size: x-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-color: #FFFFFF">
    
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table align="center" 
            
            style="border: medium ridge #008000; width: 400px; color: #003300;">
            <tr>
                <td colspan="2" style="font-weight: 700; text-align: center" class="style5">
                    Đổi mật khẩu</td>
            </tr>
            <tr>
                <td class="style3">
                   Tên đăng nhập</td>
                <td style="text-align: right">
                    <asp:TextBox ID="txtUsername" runat="server" Width="200px" CssClass="style4" 
                        BackColor="White"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Mật khẩu cũ</td>
                <td style="text-align: right">
                    <asp:TextBox ID="txtOldPass" runat="server" Width="200px" CssClass="style4" 
                        TextMode="Password" BackColor="White"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Mật khẩu mới</td>
                <td style="text-align: right">
                    <asp:TextBox ID="txtNewPass" runat="server" Width="200px" CssClass="style4" 
                        TextMode="Password" BackColor="White"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Nhập lại Mật khẩu mới</td>
                <td style="text-align: right">
                    <asp:TextBox ID="txtReEnterNewPass" runat="server" Width="200px" 
                        CssClass="style4" TextMode="Password" BackColor="White"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
&nbsp;<asp:Button ID="btnChangePass" runat="server" onclick="btnLogin_Click" style="text-align: center; font-weight: 700; color: #FFFFFF;" 
                        Text="Lưu lại" CssClass="style2" />
                    <br />
                    <asp:HyperLink ID="hplReturnHome" runat="server" 
                        NavigateUrl="~/Default.aspx">Quay về Trang chủ ?</asp:HyperLink>
                    <br />
                </td>
            </tr>
        </table>
        <br />
        <br />
    
    </div>
</asp:Content>
