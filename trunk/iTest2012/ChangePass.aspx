<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="ChangePass.aspx.cs" Inherits="iTest2012.ChangePass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
        <div align="center">
            <table class="border_tableheadline">
                <tr>
                    <td>
                        Đổi mật khẩu
                    </td>
                </tr>
            </table>
            <table class="border_alltable" style=" width: 800px" >
            <tr class="border_headtittle">
            <td colspan="2" >
                Xác nhận thông tin :
            </td>
            </tr>
                <tr >
                    <td align="left" style="padding: 0 15px; width:200px; " >
                        Tên đăng nhập
                    </td>
                    <td align="left" style="padding: 0 15px;">
                        <asp:TextBox ID="txtUsername" runat="server" Width="200px" CssClass=" boder_textbox" BackColor="White"></asp:TextBox>
                    </td>
                </tr>
                <tr >
                    <td align="left" style="padding: 0px 15px; width:200px;  ">
                        Mật khẩu cũ
                    </td>
                    <td align="left" style="padding: 0 15px;">
                        <asp:TextBox ID="txtOldPass" runat="server" Width="200px" CssClass=" boder_textbox" TextMode="Password"
                            BackColor="White"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="left" style="padding: 0px 15px; width:200px; " >
                        Mật khẩu mới
                    </td>
                    <td align="left" style="padding: 0 15px;">
                        <asp:TextBox ID="txtNewPass" runat="server" Width="200px" CssClass=" boder_textbox" TextMode="Password"
                            BackColor="White"></asp:TextBox>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* 6-20 char"
                        ControlToValidate="txtNewPass" ValidationExpression=".{6,20}" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr >
                    <td align="left" style="padding: 0px 15px; width:200px; " >
                        Nhập lại Mật khẩu mới
                    </td>
                    <td align="left" style="padding: 0 15px;">
                        <asp:TextBox ID="txtReEnterNewPass" runat="server" Width="200px" CssClass=" boder_textbox"
                            TextMode="Password" BackColor="White"></asp:TextBox>
                    </td>
                </tr>
                <tr class="border_headtittle">
                    <td colspan="2" style="text-align: right; padding: 0 15px;" >
                        &nbsp;<asp:Button ID="btnChangePass" runat="server" OnClick="btnChangePass_Click" Text="Lưu lại" CssClass="btn_body" />
                                                
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: right; padding: 0 15px;">
                        <asp:HyperLink ID="hplReturnHome" runat="server" NavigateUrl="~/Default.aspx">Quay về Trang chủ ?</asp:HyperLink>
                        
                    </td>
                </tr>
            </table>

        </div>
        <p> </p>
        <p> </p>
   
</asp:Content>
