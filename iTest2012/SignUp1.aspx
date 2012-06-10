<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="SignUp1.aspx.cs" Inherits="iTest2012.SignUp1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style2
        {
            font-size: x-large;
        }
        
        .style3
        {
            text-align: left;
            width: 366px;
            font-size:medium;
        }
        .style4
        {
            width: 285px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="center">
        <br />
        <br />
        <asp:Image ID="Image_AddUser_Icon" runat="server" ImageUrl="~/image/icon/add-user-icon.jpg" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <div align="center">
            <table class="border_tableheadline">
                <tr>
                    <td colspan="2" style="font-weight: 700; text-align: center" class="style2">
                        Đăng Ký Thành Viên

                    </td>
                </tr>
            </table>
            <table class="border_alltable">
            
            <tr>
                    <td class="style3">
                        
                    </td>
                    <td style="text-align: left">
                       
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Tên đăng nhập<br />
                        <br />
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtUsername" runat="server" Width="200px" BackColor="White" 
                            Height="22px"></asp:TextBox>
                        <asp:Label Font-Size="Small" ForeColor="Gray" ID="lblTen" runat="server">Tên đăng nhập từ 6 - 12 ký tự, bắt đầu bằng ký tự chữ.</asp:Label>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="6-12 char"
                            ControlToValidate="txtUsername" ValidationExpression=".{6,12}" ForeColor="Red"></asp:RegularExpressionValidator>
                        &nbsp;<br />
                        <asp:Label ID="labUser" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Mật khẩu<br />
                        <br />
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtPass" runat="server" Width="200px" TextMode="Password" BackColor="White"></asp:TextBox>
                        <asp:Label Font-Size="Small" ForeColor="Gray" ID="lblTen0" runat="server">Mật khẩu từ 6 đến 20 ký tự.</asp:Label>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="6-20 char"
                            ControlToValidate="txtPass" ValidationExpression=".{6,20}" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Nhập lại Mật khẩu<br />
                        <br />
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtReEnterPass" runat="server" Width="200px" TextMode="Password"
                            BackColor="White"></asp:TextBox>
                        <asp:Label Font-Size="Small" ForeColor="Gray" ID="lblTen1" runat="server">Nhập lại Mật khẩu vừa đăng ký.</asp:Label>
                        <br />
                        <asp:Label ID="labRePass" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Email <br />
                        <br />
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtEmail" runat="server" Width="200px" BackColor="White" 
                            Height="22px"></asp:TextBox>
                        <asp:Label Font-Size="Small" ForeColor="Gray" ID="Label2" runat="server">Nhập Email của bạn.</asp:Label>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="6-12 char"
                            ControlToValidate="txtUsername" ValidationExpression=".{6,12}" ForeColor="Red"></asp:RegularExpressionValidator>
                        &nbsp;<br />
                        <asp:Label ID="labEmail" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Câu hỏi bí mật<br />
                        <br />
                    </td>
                    <td style="text-align: left">
                    <asp:DropDownList ID="dropCauHoiBiMat" runat="server" Width="200px"></asp:DropDownList>
                        
                        <asp:Label Font-Size="Small" ForeColor="Gray" ID="lblTen2" runat="server">Chọn câu hỏi bí mật.</asp:Label>
                        <br />
                        
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                       Câu trả lời<br />
                        <br />
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TextBox3" runat="server" Width="200px" BackColor="White" 
                            Height="22px"></asp:TextBox>
                        <asp:Label Font-Size="Small" ForeColor="Gray" ID="Label4" runat="server">Nhập Câu trả lời của bạn.</asp:Label>
                        <br />
                        
                        &nbsp;<br />
                        
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        
                    </td>
                    <td style="text-align: left">
                       
                    </td>
                </tr>
                <tr>
                    <td class="style3" style="text-align: center">
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td style="text-align: left" class="style4">
                        <asp:Label ID="Label1" runat="server" Width="159%" ForeColor="Blue">Bạn cần đọc và chấp nhận đồng ý theo Điều Khoản khi đăng ký</asp:Label><br />
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" BackColor="White"
                            Width="700px">1. ưhkwì</asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style3" style="text-align: center">
                        <br />
                    </td>
                    <td style="text-align: left">
                        <asp:CheckBox ID="chk_DongY" runat="server" Text="Tôi đã đọc, và đồng ý tuân theo điều khoản đăng ký của e-iTest" />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <br />
                        &nbsp;<asp:Button ID="btnSignUp" runat="server" OnClick="btnSignUp_Click" Style="text-align: center;
                            font-weight: 700; color: #FFFFFF;" Text="Đăng ký" BackColor="#003300" ForeColor="White" />
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LogIn.aspx">Bạn đã có Tài khoản? Đăng nhập</asp:HyperLink>
                        <br />
                    </td>
                </tr>

            </table>
        </div>
    </div>
    <br />
    <br />
</asp:Content>
