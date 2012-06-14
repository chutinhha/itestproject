<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="ChangePass.aspx.cs" Inherits="iTest2012.ChangePass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
        <div align="center">
            <table style="text-align: center" class="border_tableheadline">
                <tr>
                    <td>
                        Đổi mật khẩu
                    </td>
                </tr>
            </table>
            <table class="border_alltable" style="padding-left: 0px 100px">
                <tr>
                    <td class="style3">
                        Tên đăng nhập
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server" Width="200px" CssClass="style4" BackColor="White"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Mật khẩu cũ
                    </td>
                    <td>
                        <asp:TextBox ID="txtOldPass" runat="server" Width="200px" CssClass="style4" TextMode="Password"
                            BackColor="White"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Mật khẩu mới
                    </td>
                    <td>
                        <asp:TextBox ID="txtNewPass" runat="server" Width="200px" CssClass="style4" TextMode="Password"
                            BackColor="White"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Nhập lại Mật khẩu mới
                    </td>
                    <td>
                        <asp:TextBox ID="txtReEnterNewPass" runat="server" Width="200px" CssClass="style4"
                            TextMode="Password" BackColor="White"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        &nbsp;<asp:Button ID="btnChangePass" runat="server" OnClick="btnChangePass_Click" Text="Lưu lại" CssClass="btn_body" />
                        <br />
                        <asp:HyperLink ID="hplReturnHome" runat="server" NavigateUrl="~/Default.aspx">Quay về Trang chủ ?</asp:HyperLink>
                        <br />
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <br />
   
</asp:Content>
