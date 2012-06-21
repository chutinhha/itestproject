<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="TrangCaNhan.aspx.cs" Inherits="iTest2012.TrangCaNhan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <div align="center">
            <table class="border_tableheadline">
                <tr>
                    <td>
                        THÔNG TIN TÀI KHOẢN
                    </td>
                </tr>
            </table>
            <table class="border_alltable">
                <tr align="left">
                    <td colspan="2" style=" height:20px; text-align: center">
                    </td>                    
                </tr>
                <tr align="left">
                    <td class="td_style_wid" style="font-weight:bold">
                        Tên đăng nhập :<br />
                        
                    </td>
                    <td  class="td_style_Nowid">
                    <asp:Label ID="lblUserName" runat="server" Width="200px"></asp:Label>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="ChangePass.aspx">Đổi Mật khẩu đăng nhập.</asp:HyperLink>
                       
                    </td>
                </tr>
                <tr align="left">
                    <td  class="td_style_wid" style="font-weight:bold">
                        Email đăng ký :<br />
                        
                    </td>
                    <td  class="td_style_Nowid">
                        <asp:Label ID="lblEmail" runat="server" Width="200px"></asp:Label>
                        
                    </td>
                </tr>
                <tr align="left">
                    <td  class="td_style_wid" style="font-weight:bold">
                        Ngày đăng ký :<br />
                        
                    </td  >
                    <td class="td_style_Nowid">
                        <asp:Label ID="lblCreatedDate" runat="server" Width="200px"></asp:Label>
                        
                    </td>
                </tr>
                 <tr align="left">
                    <td  class="td_style_wid" style="font-weight:bold">
                        Số bài test đã làm :<br />
                        
                    </td>
                    <td  class="td_style_Nowid">
                        <asp:Label ID="lblSumTest" runat="server" Width="200px"></asp:Label><br />
                    </td>
                </tr>
                <tr align="left">
                    <td  class="td_style_wid" style="font-weight:bold">
                        Tổng điểm đã làm :<br />
                        
                    </td>
                    <td  class="td_style_Nowid">
                        <asp:Label ID="lblSumMark" runat="server" Width="200px"></asp:Label>
                        <span style="font-weight:bold">Trung bình : </span><asp:Label ID="lblAvgMark" runat="server" Width="200px"></asp:Label>
                     </td>
                </tr>
                
                 <tr align="left">
                    <td  class="td_style_wid" style="font-weight:bold">
                        Tổng điểm thưởng :<br />
                        
                    </td>
                    <td  class="td_style_Nowid">
                        <asp:Label ID="lblSumBuonus" runat="server" Width="200px"></asp:Label>
                        
                    </td>
                </tr>
                <tr align="left">
                    <td  class="td_style_wid" style="font-weight:bold">
                        Xếp hạng :<br />
                        
                    </td>
                    <td  class="td_style_Nowid">
                        <asp:Label ID="lbXepHang" runat="server" Width="200px"></asp:Label>
                        
                    </td>
                </tr>
                <tr align="right" >
                    <td colspan="2" >
                        
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Default.aspx">Quay lại trang chủ</asp:HyperLink>
                        
                    </td>
                </tr>
            </table>
        </div>
    
    <asp:GridView ID="gdv_iTestLog" runat="server" Visible="false">
    </asp:GridView>
    <asp:GridView ID="gdv_User" runat="server" Visible="false">
    </asp:GridView>
    <br />
    <br />
</asp:Content>
