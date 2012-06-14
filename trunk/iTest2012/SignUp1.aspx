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
                    Đăng Ký
                </td>
            </tr>
        </table>
        <table class="border_alltable" style=" width: 800px">
            <tr>
                <td colspan="2" class="border_headtittle" >
                Thông tin cần thiết
                </td>
            </tr>
            <tr align="left" style="padding: 0 15px;">
            <td colspan="2" align="left" style="padding: 0 15px;">
            <span style="color: Red">*&nbsp;</span> <span style="color:#999999; font-size:smaller">Là những thông tin bắt buộc phải điền đầy đủ.</span>
            </td>
            </tr>
            <tr align="left" style="padding: 0 15px;">
                <td style="width: 150px; padding: 0 15px;">
                    Tên đăng nhập<br />
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="boder_textbox" Width="200px" BackColor="White"></asp:TextBox>
                    <span style="color: Red">&nbsp;*&nbsp;</span> <span style="color: Gray">Tên đăng nhập
                        từ 6-12 ký tự.</span>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="6-12 char"
                        ControlToValidate="txtUsername" ValidationExpression=".{6,12}" ForeColor="Red"></asp:RegularExpressionValidator>
                    &nbsp;<br />
                    <asp:Label ID="labUser" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr align="left" style="padding: 0 15px; ">
                <td style="width: 150px; padding: 0 15px;">
                    Mật khẩu<br />
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="txtPass" runat="server" Width="200px" CssClass="boder_textbox" TextMode="Password" BackColor="White"></asp:TextBox>
                    <span style="color: Red">&nbsp;*&nbsp;</span> <span style="color: Gray">Mật khẩu từ 6-20 ký tự, phân biệt chữ Hoa, thường</span>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="6-20 char"
                        ControlToValidate="txtPass" ValidationExpression=".{6,20}" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr align="left" style="padding: 0 15px; ">
                <td style="width: 150px; padding: 0 15px;">
                    Nhập lại mật khẩu<br />
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="txtReEnterPass" runat="server" CssClass="boder_textbox" Width="200px" TextMode="Password"
                        BackColor="White"></asp:TextBox>
                    <span style="color: Red">&nbsp;*&nbsp;</span>
                    <asp:Label ID="labRePass" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr align="left" style="padding: 0 15px; ">
                <td style="width: 150px; padding: 0 15px;">
                    Email của bạn<br />
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="boder_textbox" Width="200px" BackColor="White"></asp:TextBox>
                    <span style="color: Red">&nbsp;*&nbsp;</span> <span style="color: Gray">Nhập E-mail của
                        bạn.</span>
                    <br />
                    <asp:Label ID="labEmail" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr align="left" style="padding: 0 15px; ">
                <td style="width: 150px; padding: 0 15px;">
                    Câu hỏi bí mật<br />
                    <br />
                </td>
                <td>
                    <asp:DropDownList ID="dropCauHoiBiMat" runat="server" Width="400px" CssClass="boder_textbox">
                        <asp:ListItem Value="-1">---- Chọn câu hỏi bí mật ----</asp:ListItem>
                        <asp:ListItem Value="1">Tên nhạc sĩ bạn yêu thích ?</asp:ListItem>
                    </asp:DropDownList>
                    <span style="color: Red">&nbsp;*&nbsp;</span>
                    <asp:Label ID="lbdrop" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr align="left" style="padding: 0 15px;">
                <td style="width: 150px; padding: 0 15px;">
                    Câu trả lời<br />
                    <br />
                </td>
            
                <td>
                    <asp:TextBox ID="txtAnswer" runat="server" CssClass="boder_textbox" Width="400px" BackColor="White"></asp:TextBox>
                    <span style="color: Red">&nbsp;*&nbsp;</span>
                    <br />
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>            
            <tr>
                <td colspan="2" class="border_headtittle" >
                Điều khoản sử dụng
                </td>
            </tr>
            <tr align="left">
                <td colspan="2" style="padding: 0 15px; margin:0px">                   
                    <%--<asp:Panel runat="server" BackColor="#F3F3F3" BorderStyle="Solid" 
                        BorderWidth="1px">
                     ákhgls<br />ákhgls<br />ákhgls<br />ákhgls<br />ákhgls<br />ákhgls<br />ákhgls<br />
                    
                    </asp:Panel >--%>
                    <div class="div_formular">
                    <p><b>Chào mừng bạn đến với iTest</b></p>
                    <p style="color:Red">Bạn phải đồng ý với những điều dưới đây để tiếp tục đăng ký thành viên!</p>
                    <strong>Điều 1. Nội qui thành viên</strong>
                    <br />
                    - Đăng kí thành viên: Không được lấy tên, biệt danh... của các vị lãnh tụ cách mạng, các vị lãnh đạo đảng, nhà nước, những kẻ xấu như khủng bố, phát xít ... hoặc có ý nghĩa không lành mạnh.
                    <br />
                    - Không đăng ký ID bằng các ký tự đặc biệt như: <b>[ * ¤ ° ´ ¯ )]</b>
                    <br />
                    <strong>Điều 2</strong>
                    <br />
                    <br />
                    <strong>Điều 3</strong>
                    <br />
                    <br />
                    <strong>Những qui định khác</strong>
                    <br />
                    <br />
                    </div>
                </td>
            </tr>
            <tr align="left">                
                <td colspan="2">
                    <asp:CheckBox ID="chk_DongY" runat="server" Text="Tôi đã đọc và đồng ý với các điều khoản của iTest" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    &nbsp;<asp:Button ID="btnSignUp" runat="server" OnClick="btnSignUp_Click" CssClass="btn_body" Text="Đăng ký"  />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnReEnter" runat="server" CssClass="btn_body" Text="Nhập lại" onclick="btnReEnter_Click" />
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LogIn.aspx">Bạn đã có Tài khoản? Mời Đăng nhập</asp:HyperLink>
                    <br />
                </td>
            </tr>
        </table>
    </div>
    <br />
    <br />
</asp:Content>
