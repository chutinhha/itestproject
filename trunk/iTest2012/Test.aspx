<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="Test.aspx.cs" Inherits="iTest2012.Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel_How" runat="server" Style="margin-top: 0px">
            <div align="center">
                <table style="text-align: center" class="border_tableheadline">
                    <tr>
                        <td>
                            Thông tin cho đề thi
                        </td>
                    </tr>
                </table>
                <table class="border_alltable">
                
                    <tr>
                    
                        <td class="style3">
                            Chọn môn :
                        </td>
                        <td class="style4">
                            <asp:DropDownList ID="ddlSubject" runat="server" DataSourceID="LinqDataSource1" DataTextField="iSubjectName"
                                DataValueField="iSubjectName" Width="200px" AutoPostBack="True" AppendDataBoundItems="True">
                                <asp:ListItem Selected="True" Value="-1">Tất cả</asp:ListItem>
                            </asp:DropDownList>
                            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="iTest2012.MyiTestDataDataContext"
                                EntityTypeName="" GroupBy="iSubjectName" OrderGroupsBy="key" Select="new (key as iSubjectName, it as iSubjects)"
                                TableName="iSubjects">
                            </asp:LinqDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Loại câu hỏi :&nbsp;
                        </td>
                        <td class="style4">
                            <asp:DropDownList ID="ddlQuestType" runat="server" Width="200px" AppendDataBoundItems="True">
                                <asp:ListItem Selected="True" Value="One-Choice">Một lựa chọn</asp:ListItem>
                                <asp:ListItem Value="Multi-Choices">Nhiều lựa chọn</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Số câu hỏi :
                        </td>
                        <td class="style4">
                            <asp:DropDownList ID="ddlNumberofQuests" runat="server" Width="200px" AppendDataBoundItems="True">
                                <asp:ListItem Selected="True">1</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <br />
                            &nbsp;<asp:Button ID="btnLetsGo" runat="server" Style="font-weight: 700; color: #003300;
                                text-align: center;" Text="Bắt đầu !" OnClick="btnLetsGo_Click" Height="26px"
                                Width="85px" />
                            <br />
                            <asp:Label ID="lbError" runat="server" Style="color: #FF0000"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
            </table>
        </asp:Panel>
    </div>
    <br />
    <br />
    <br />
</asp:Content>
