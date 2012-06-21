<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FinalScore.aspx.cs" Inherits="iTest2012.FinalScore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div align="center">
    <table class="border_tableheadline" style="width:350px">
        <tr>
            <td>
                KẾT QUẢ
            </td>
        </tr>
    </table>
    <table class="border_alltable" style="width:350px; color:#003300 ">
        <tr align="left">
            <td style="width:150px;">
                Tổng số câu đúng : 
            </td>
            <td>
                <asp:Label ID="lbResult" runat="server" ></asp:Label>
            </td>
        </tr>        
        <tr align="left">
            <td style="width:150px;">
                Thời gian hoàn thành : 
            </td>
            <td>
                <asp:Label ID="lbTime" runat="server" ></asp:Label>
            </td>
        </tr>
        <tr align="left">
            <td style="width:150px;">
                Ngày test : 
            </td>
            <td>
                <asp:Label ID="lbDate" runat="server" ></asp:Label>
            </td>
        </tr>
        <tr align="left" style="font-size:large; font-weight:bold">
            <td style="width:150px;">
                Tổng điểm : 
            </td>
            <td>
                <asp:Label ID="lbScore" runat="server" style="color:Red; font-weight:bold" ></asp:Label>
            </td>
        </tr>
        <tr align="left" style="font-size:larger; font-weight:bold">
            <td style="width:150px;">
                Điểm thưởng :
            </td>
            <td>
                <asp:Label ID="lbBonus" runat="server" style="font-weight:bolder" ></asp:Label>
            </td>
        </tr>        
    </table>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Test.aspx">Làm bài test khác</asp:HyperLink>
</div>
</asp:Content>
