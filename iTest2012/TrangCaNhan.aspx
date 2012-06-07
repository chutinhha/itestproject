<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TrangCaNhan.aspx.cs" Inherits="iTest2012.TrangCaNhan" %>
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
                    Thông Tin Tài Khoản của Bạn</td>
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
                </td>
            </tr>
          
            <tr>
                <td class="style3">
                    Email của bạn<br />
                    <br />
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtEmail" runat="server" Width="200px"  
                        BackColor="White"></asp:TextBox>
                    <br />
                    
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">

                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Default.aspx">Quay lại Trang chủ</asp:HyperLink>
                    <br />
                </td>
            </tr>
        </table>
    
    </div>
    <br />
    <br />
</asp:Content>
