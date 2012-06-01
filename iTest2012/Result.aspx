<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="iTest2012.Result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style7
        {
            color: #003300;
        }
       
        .style8
        {
            font-size: x-large;
            color: #003300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="text-align: center">

    <br />
    <br />
    <br />
    <span class="style8"><strong>Result</strong></span><br />
        <span class="style7"><strong>Number of correct answers :</strong></span>
        <asp:Label ID="lbCorrectAns" runat="server" 
            style="font-weight: 700; color: #FF0000"></asp:Label>
        <br />
    <asp:Label ID="lbtest" runat="server"></asp:Label>
    <br />
        <br />

</div>
</asp:Content>
