<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FinalScore.aspx.cs" Inherits="iTest2012.FinalScore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div align="center">
    <table class="border_tableheadline" style="width:300px">
        <tr>
            <td>
                Kết quả
            </td>
        </tr>
    </table>
    <table class="border_alltable" style="width:300px; color:#003300 ">
        <tr align="left">
            <td>
                Tổng số câu đúng : <asp:Label ID="lbResult" runat="server" ></asp:Label>
            </td>
        </tr>        
        <tr align="left">
            <td>
                Thời gian hoàn thành : <asp:Label ID="lbTime" runat="server" ></asp:Label>
            </td>
        </tr>
        <tr align="left">
            <td>
                Ngày test : <asp:Label ID="lbDate" runat="server" ></asp:Label>
            </td>
        </tr>
        <tr align="left" style="font-size:large; font-weight:bold">
            <td>
                Tổng điểm : <asp:Label ID="lbScore" runat="server" style="color:Red; font-weight:bold" ></asp:Label>
            </td>
        </tr>
        <tr align="left" style="font-size:larger; font-weight:bold">
            <td>
                Điểm bonus : <asp:Label ID="lbBonus" runat="server" style="font-weight:bolder" ></asp:Label>
            </td>
        </tr>
    </table>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Test.aspx">Làm bài test khác</asp:HyperLink>
</div>
</asp:Content>
