<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="iTest2012.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style2
        {
            font-size: x-large;
        }
        
    .style3
    {
        text-align: left;
    }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="background-color: #FFFFFF; text-align: center;">
    
        <br />
        <br />
        <asp:Image ID="Image_AddUser_Icon" runat="server" 
            ImageUrl="~/image/icon/add-user-icon.jpg" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table align="center" 
            
            
            
            style="border: medium ridge #008000; width: 408px; color: #003300; ">
            <tr>
                <td colspan="2" style="font-weight: 700; text-align: center" class="style2">
                    Đăng Ký</td>
            </tr>
            <tr>
                <td class="style3">
                    Tên đăng nhập<br />
                    <br />
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtUsername" runat="server" Width="200px"  BackColor="White" 
                        ></asp:TextBox>
                    
                    <br />
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                            runat="server"
			                ErrorMessage="6-12 char"
			                ControlToValidate="txtUsername" 
			                ValidationExpression=".{6,12}" ForeColor="Red"></asp:RegularExpressionValidator>

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
                    <asp:TextBox ID="txtPass" runat="server" Width="200px" TextMode="Password" 
                        BackColor="White"></asp:TextBox>
			        <br />
			        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                            runat="server"
			                ErrorMessage="6-20 char"
			                ControlToValidate="txtPass" 
			                ValidationExpression=".{6,20}" ForeColor="Red"></asp:RegularExpressionValidator>

                </td>
            </tr>
            <tr>
                <td class="style3">
                    Nhập lại Mật khẩu<br />
                    <br />
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtReEnterPass" runat="server" Width="200px" 
                        TextMode="Password"  BackColor="White"></asp:TextBox>
                    <br />
                    <asp:Label ID="labRePass" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Your email<br />
                    <br />
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtEmail" runat="server" Width="200px"  
                        BackColor="White"></asp:TextBox>
                    <br />
                    <asp:Label ID="labEmail" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
&nbsp;<asp:Button ID="btnSignUp" runat="server" onclick="btnSignUp_Click" style="text-align: center; font-weight: 700; color: #FFFFFF;" 
                        Text="Sign Up" BackColor="#003300" ForeColor="White"  />
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MasterPageContent/LogIn.aspx">Had Account ? Please log in</asp:HyperLink>
                    <br />
                </td>
            </tr>
        </table>
    
    </div>
    <br />
    <br />
</asp:Content>
