<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="iTest2012.Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 498px;
            text-align: right;
            color: #003300;
        }
        .style4
        {
            width: 499px;
            text-align: left;
        }
        .style5
        {
            font-size: x-large;
            color: #003300;
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <br />
    <br />
    <br />
    <asp:Panel ID="Panel_How" runat="server">
        <table class="stylem12" align="center">
            <tr>
                <td colspan="2" class="style5">
                    <strong>How to start</strong></td>
            </tr>
            <tr>
                <td class="style3">
                    Choose Subject :
                </td>
                <td class="style4">
                    <asp:DropDownList ID="ddlSubject" runat="server" DataSourceID="LinqDataSource1" 
                        DataTextField="iSubjectName" DataValueField="iSubjectName" Width="200px" 
                        AutoPostBack="True" AppendDataBoundItems="True">
                        <asp:ListItem Selected="True" Value="-1">All Subjects</asp:ListItem>
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                        ContextTypeName="iTest2012.MyiTestDataDataContext" EntityTypeName="" 
                        GroupBy="iSubjectName" OrderGroupsBy="key" 
                        Select="new (key as iSubjectName, it as iSubjects)" TableName="iSubjects">
                    </asp:LinqDataSource>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Question Type :&nbsp;
                </td>
                <td class="style4">
                    <asp:DropDownList ID="ddlQuestType" runat="server" Width="200px" 
                        AppendDataBoundItems="True">
                        <asp:ListItem Selected="True" Value="One-Choice">One-Choice</asp:ListItem>
                        <asp:ListItem Value="Multi-Choices">Multi-Choices</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Number of Questions :</td>
                <td class="style4">
                    <asp:DropDownList ID="ddlNumberofQuests" runat="server" Width="200px" 
                        AppendDataBoundItems="True">
                        <asp:ListItem Selected="True">1</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    &nbsp;<asp:Button ID="btnLetsGo" runat="server" 
                        style="font-weight: 700; color: #003300; text-align: center;" 
                        Text="Let's go !" onclick="btnLetsGo_Click" Height="26px" Width="85px" />
                    <br />
                    <asp:Label ID="lbError" runat="server" style="color: #FF0000"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
</div>
    <br />
    <br />
    <br />

</asp:Content>

