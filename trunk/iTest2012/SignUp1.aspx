<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="SignUp1.aspx.cs" Inherits="iTest2012.SignUp1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="center">
        <br />
        <asp:Image ID="Image_AddUser_Icon" runat="server" ImageUrl="~/image/icon/add-user-icon.jpg" />
        <br />        
        <table class="border_tableheadline">
            <tr >
                <td align="center">
                    ĐĂNG KÝ
                </td>
            </tr>
        </table>
        <table class="border_alltable" style=" width: 800px">
            <tr align="left">
                <td colspan="2" class="border_headtittle" >
                Thông tin cần thiết
                </td>
            </tr>
            <tr align="left" >
            <td colspan="2" class="td_style_Nowid">
            <span style="color: Red">*&nbsp;</span> <span style="color:#999999; font-size:smaller">Là thông tin bắt buộc điền đầy đủ.</span>
            </td>
            </tr>
            <tr align="left" >
                <td class="td_style_wid">
                    Tên đăng nhập :<br />
                    <br />
                </td>
                <td class="td_style_Nowid">
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="boder_textbox" Width="200px" BackColor="White"></asp:TextBox>
                    <span style="color: Red">&nbsp;*&nbsp;</span> <span style="color: Gray">Tên đăng nhập từ 6-12 ký tự</span>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="6-12 ký tự"
                        ControlToValidate="txtUsername" ValidationExpression=".{6,12}" ForeColor="Red"></asp:RegularExpressionValidator>
                    &nbsp;<br />
                    <asp:Label ID="labUser" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr align="left" >
                <td class="td_style_wid">
                    Mật khẩu :<br />
                    <br />
                </td>
                <td class="td_style_Nowid">
                    <asp:TextBox ID="txtPass" runat="server" Width="200px" CssClass="boder_textbox" TextMode="Password" BackColor="White"></asp:TextBox>
                    <span style="color: Red">&nbsp;*&nbsp;</span> <span style="color: Gray">Mật khẩu từ 6-20 ký tự, phân biệt hoa thường</span>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="6-20 ký tự"
                        ControlToValidate="txtPass" ValidationExpression=".{6,20}" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr align="left" >
                <td class="td_style_wid">
                    Nhập lại mật khẩu :<br />
                    <br />
                </td>
                <td class="td_style_Nowid">
                    <asp:TextBox ID="txtReEnterPass" runat="server" CssClass="boder_textbox" Width="200px" TextMode="Password"
                        BackColor="White"></asp:TextBox>
                    <span style="color: Red">&nbsp;*&nbsp;</span>
                    <asp:Label ID="labRePass" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr align="left">
                <td class="td_style_wid">
                    Email :<br />
                    <br />
                </td>
                <td class="td_style_Nowid">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="boder_textbox" Width="200px" BackColor="White"></asp:TextBox>
                    <span style="color: Red">&nbsp;*&nbsp;</span> <span style="color: Gray">Nhập E-mail của
                        bạn.</span>
                    <br />
                    <asp:Label ID="labEmail" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr align="left">
                <td class="td_style_wid">
                    Câu hỏi bí mật :<br />
                    <br />
                </td>
                <td class="td_style_Nowid">
                    <asp:DropDownList ID="dropCauHoiBiMat" runat="server" Width="400px" CssClass="boder_textbox">
                        <asp:ListItem Value="-1">--- Chọn câu hỏi bí mật ---</asp:ListItem>
                        <asp:ListItem Value="1">Tên nhạc sĩ bạn yêu thích ?</asp:ListItem>
                        <asp:ListItem Value="2">Tên trường tiểu học của bạn là gì ?</asp:ListItem>
                        <asp:ListItem Value="3">Con vật cưng đầu tiên của bạn tên gì?</asp:ListItem>
                        <asp:ListItem Value="4">Bạn thích môn học nào?</asp:ListItem>
                        <asp:ListItem Value="5">Món khoái khẩu của bạn lúc nhỏ là gì ?</asp:ListItem>
                    </asp:DropDownList>
                    <span style="color: Red">&nbsp;*&nbsp;</span>
                    <asp:Label ID="lbdrop" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr align="left" >
                <td class="td_style_wid">
                    Câu trả lời :<br />
                    <br />
                </td>
            
                <td class="td_style_Nowid">
                    <asp:TextBox ID="txtAnswer" runat="server" CssClass="boder_textbox" Width="400px" BackColor="White"></asp:TextBox>
                    <span style="color: Red">&nbsp;*&nbsp;</span>
                    <br />
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>            
            <tr align="left">
                <td colspan="2" class="border_headtittle" >
                Điều khoản sử dụng iTest :
                </td>
            </tr>
            <tr align="left">
                <td colspan="2" class="td_style_Nowid">                   
                    <%--<asp:Panel runat="server" BackColor="#F3F3F3" BorderStyle="Solid" 
                        BorderWidth="1px">
                     ákhgls<br />ákhgls<br />ákhgls<br />ákhgls<br />ákhgls<br />ákhgls<br />ákhgls<br />
                    
                    </asp:Panel >--%>
                    <div class="div_formular">
                    <p><b>Chào mừng bạn đến với iTest</b></p>
                    <p style="color:Red">Bạn phải đồng ý với các điều khoản sau để tham gia vào iTest :</p>
                    <strong>Điều 1. Nội qui thành viên :</strong>
                    <br />
                    - Tên đăng nhập không được lấy tên các vị lãnh tụ, có liên vấn đề chính trị, hoặc những tên gây phản cảm.
                    <br />
                    - Tên đăng nhập không chứa các ký tự đặc biệt như : <b>[ * ¤ ° ´ ¯ )]</b>
                    <br />
                    <strong>Điều 2 :</strong>
                    <br />
                    <br />
                    <strong>Điều 3 :</strong>
                    <br />
                    <br />
                    <strong>Những qui định khác :</strong>
                    <br />
                    <br />
                    </div>
                </td>
            </tr>
            <tr align="left">                
                <td colspan="2" >
                    <asp:CheckBox ID="chk_DongY" runat="server" Text="Tôi đã đọc và đồng ý với các điều khoản của iTest." />
                </td>
            </tr>
            <tr class="border_headtittle">
                <td colspan="2" align="right" class="td_style_Nowid" >
                    <asp:Button ID="btnSignUp" runat="server" OnClick="btnSignUp_Click" CssClass="btn_body" Text="Đăng ký"  />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnReEnter" runat="server" CssClass="btn_body" Text="Nhập lại" onclick="btnReEnter_Click" />
                 </td>
            </tr>
            <tr>
            <td colspan="2" align="right" class="td_style_Nowid">   
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LogIn.aspx">Bạn đã có tài khoản? Mời đăng nhập.</asp:HyperLink>
                    
            </td>
            </tr>
        </table>
    </div>
    <br />
    <br />
</asp:Content>
