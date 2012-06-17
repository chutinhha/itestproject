<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddQuestion01.aspx.cs" Inherits="iTest2012.AddQuestion01" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div align="center">
    <table class="border_alltable">
        <tr>
            <td>
                <asp:DropDownList ID="ddlSub" runat="server" DataSourceID="LinqDataSource1" 
                    DataTextField="iSubjectName" DataValueField="iSubjectName" 
                    onselectedindexchanged="ddlSub_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
                
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                    ContextTypeName="iTest2012.MyiTestDataDataContext" EntityTypeName="" 
                    GroupBy="iSubjectName" OrderGroupsBy="key" 
                    Select="new (key as iSubjectName, it as iSubjects)" TableName="iSubjects">
                </asp:LinqDataSource>
                
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="ddlChap" runat="server" AutoPostBack="True" 
                            onselectedindexchanged="ddlChap_SelectedIndexChanged">
                        </asp:DropDownList>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="ddlSub" EventName="SelectedIndexChanged" />
                    </Triggers>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="lbChapName" runat="server"></asp:Label>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="ddlChap" EventName="SelectedIndexChanged" />
                    </Triggers>
                </asp:UpdatePanel>
                
                
            </td>
        </tr>
    </table>
</div>
</asp:Content>
