<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="iTest2012.LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style6
    {
        font-size: x-large;
        color: #003300;
    }
    .style7
    {
        font-weight: 700;
        text-align: left;
        color: #003300;
    }
    
    .style8
    {
        color: #003300;
    }
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="text-align: center; background-color: #FFFFFF;">
    
        
    
        <br />
        <asp:Image ID="Image_Login_Icon" runat="server" 
            ImageUrl="~/image/icon/login-icon.jpg" />
    
        
    
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table align="center">
            <tr>
                <td colspan="2" style="font-weight: 700; text-align: center;" class="style6">
                    Login</td>
            </tr>
            <tr>
                <td class="style7" style="width: 100px">
                    User name</td>
                <td style="text-align: right; width: 250px;">
                    <asp:TextBox ID="txtUsername" runat="server" Width="200px" 
                        style="background-color :White" BackColor="White"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7" style="width: 100px">
                    Password</td>
                <td style="text-align: right; width: 250px;">
                    <asp:TextBox ID="txtPass" runat="server" Width="200px" TextMode="Password" 
                        style="background-color:White" BackColor="White"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
&nbsp;<asp:Button ID="btnLogin" runat="server" onclick="btnLogin_Click" style="text-align: center; font-weight: 700; color: #FFFFFF; background-color: #003300;" 
                        Text="Login" />
                    <br />
                    <span class="style8">Create New Account?</span>&nbsp;
                    <asp:HyperLink ID="hplCreateUser" runat="server" 
                        NavigateUrl="~/MasterPageContent/SignUp.aspx">Click Here !</asp:HyperLink>
                    <br />
                    <span class="style8">Forget Your Password ?
                    </span>
                    <asp:HyperLink ID="HyperLink1" runat="server">Click Here !</asp:HyperLink>
                </td>
            </tr>
        </table>
        <br />
        <br />
    
        <br />
    
    </div>
</asp:Content>


