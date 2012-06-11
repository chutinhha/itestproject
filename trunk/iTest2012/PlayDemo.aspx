<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PlayDemo.aspx.cs" Inherits="iTest2012.PlayDemo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div align="center">    
    <table class="border_tableheadline">
        <tr>
            <td>
                Demo
            </td>
        </tr>        
    </table>
    <table class="border_alltable">
        <tr>
            <td align="center">
                <asp:Panel ID="panelLoad" runat="server">
                    <asp:GridView ID="gridLoadQuest" runat="server">
                    </asp:GridView>
                    <asp:GridView ID="gridRandom" runat="server">
                    </asp:GridView>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                
            </td>
        </tr>

    </table>
</div>
</asp:Content>
