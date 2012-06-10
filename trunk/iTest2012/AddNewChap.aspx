﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="AddNewChap.aspx.cs" Inherits="iTest2012.AddNewChap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            text-align: left;
        }
        .style2
        {
            text-align: left;
            width: 122px;
        }
        .style3
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="text-align: center; background-color: #FFFFFF;">
        <br />
        <br />
        <br />
        <br />
        <div align="center">
            <table style="text-align: center" class="border_tableheadline">
                <tr>
                    <td>
                        Thêm chương mới
                    </td>
                </tr>
            </table>
            <table class="border_alltable">
                <tr >
                    <td class="style2">
                        Tiêu đề
                    </td>
                    <td class="style1">
                        <asp:DropDownList ID="ddlSubject" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                            DataSourceID="LinqDataSource1" DataTextField="iSubjectName" DataValueField="iSubjectName"
                            Width="200px">
                            <asp:ListItem Value="-1">---- Chọn môn học ----</asp:ListItem>
                        </asp:DropDownList>
                        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="iTest2012.MyiTestDataDataContext"
                            EntityTypeName="" GroupBy="iSubjectName" Select="new (key as iSubjectName, it as iSubjects)"
                            TableName="iSubjects">
                        </asp:LinqDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Chapter Index
                    </td>
                    <td class="style1">
                        <asp:TextBox ID="txtIndex" runat="server" Width="200px"></asp:TextBox>
                        <br />
                        <asp:Label ID="lbIndex" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Tên chương
                    </td>
                    <td class="style1">
                        <asp:TextBox ID="txtName" runat="server" Width="200px"></asp:TextBox>
                        <br />
                        <asp:Label ID="lbName" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Thêm" Width="100px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnAgain" runat="server" OnClick="btnAgain_Click" Text="Nhập lại"
                            Width="100px" />
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Quay về Trang chủ</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
        <br />
    </div>
</asp:Content>