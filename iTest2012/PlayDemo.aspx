<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PlayDemo.aspx.cs" Inherits="iTest2012.PlayDemo" %>
<%@ Register src="QuestControl.ascx" tagname="QuestControl" tagprefix="uc1" %>
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
                    <uc1:QuestControl ID="QuestControl1" runat="server" />
                    <br />
                    <%
                        for (int i = 0; i < Convert.ToInt32(Session["Num"].ToString()); i++)%>  
                        <%{%>                  
                            <input type="button" value="button" name="button<%=i%>" />;
                        <%}%>
                    
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
