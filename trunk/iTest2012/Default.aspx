<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="iTest2012.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div align="center">   
    <table class="border_tableheadline">
        <tr>
            <td>
                Đây là header của khung</td>
        </tr>
    </table>
    <table class="border_alltable">
        <tr>
            <td>
                Đây là phần thân khung, edit tuỳ ý</td>
        </tr>
    </table>
   </div>
</asp:Content>


