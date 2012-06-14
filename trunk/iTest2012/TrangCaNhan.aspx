<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="TrangCaNhan.aspx.cs" Inherits="iTest2012.TrangCaNhan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="background-color: #FFFFFF; text-align: center;">
        <br />
        <br />
        <asp:Image ID="Image_AddUser_Icon" runat="server" ImageUrl="~/image/icon/add-user-icon.jpg" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div align="center">
            <table style="text-align: center" class="border_tableheadline">
                <tr>
                    <td>
                        Thông Tin Tài Khoản của Bạn
                    </td>
                </tr>
            </table>
            <table class="border_alltable">
                <tr>
                    <td colspan="2" style="font-weight: 700; text-align: center">
                    </td>
                </tr>
                <tr>
                    <td>
                        Tên đăng nhập<br />
                        <br />
                    </td>
                    <td style="text-align: left">
                    <asp:Label ID="lblUserName" runat="server" Width="200px"></asp:Label>&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="ChangePass.aspx">Đổi Mật khẩu đăng nhập.</asp:HyperLink>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        Email của bạn<br />
                        <br />
                    </td>
                    <td style="text-align: left">
                        <asp:Label ID="lblEmail" runat="server" Width="200px"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        Ngày Đăng ký<br />
                        <br />
                    </td>
                    <td style="text-align: left">
                        <asp:Label ID="lblCreatedDate" runat="server" Width="200px"></asp:Label>
                        <br />
                    </td>
                </tr>
                 <tr>
                    <td>
                        Số bài đã làm<br />
                        <br />
                    </td>
                    <td style="text-align: left">
                        <asp:Label ID="lblSumTest" runat="server" Width="200px"></asp:Label><br />
                    </td>
                </tr>
                <tr>
                    <td>
                        Tổng điểm đã làm<br />
                        <br />
                    </td>
                    <td style="text-align: left">
                        <asp:Label ID="lblSumMark" runat="server" Width="200px"></asp:Label>
                        <br />
                    </td>
                </tr>
                
                 <tr>
                    <td>
                        Tổng điểm thưởng<br />
                        <br />
                    </td>
                    <td style="text-align: left">
                        <asp:Label ID="lblSumBuonus" runat="server" Width="200px"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Default.aspx">Quay lại Trang chủ</asp:HyperLink>
                        <br />
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <asp:GridView ID="gdv_iTestLog" runat="server">
    </asp:GridView>
    <asp:GridView ID="gdv_User" runat="server">
    </asp:GridView>
    <br />
    <br />
</asp:Content>
