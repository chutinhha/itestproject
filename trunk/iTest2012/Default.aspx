<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="iTest2012.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-size: xx-large;
        }
        .style6
    {
            font-size: x-large;
            color: #006600;
            font-family: Snap ITC;
        }
    .style7
    {
        text-align: center;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="style7" style="background-color: #FFFFFF">
    
        <span class="style2">
        <span class="style6">&nbsp;Wellcome </span> </span><span class="style6">to iTest</span>
    
        <br />
        <br />
        <br />
        <br />
        <asp:Image ID="Image2" runat="server" 
            ImageUrl="~/image/etc/Teachers-Day-SMS-Masseges.jpg" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
</asp:Content>
