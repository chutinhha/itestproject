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
                    <asp:GridView ID="gridLoadAns" runat="server">
                    </asp:GridView>
                    <br />                   
                </asp:Panel>
            </td>
        </tr>
        <asp:Panel ID="panel10Test" runat="server" >
            <tr align="left">            
                <td>
                    <asp:Label ID="lb10Test1" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img10Test1" runat="server" />
                    <asp:RadioButtonList ID="rd10Test1" runat="server">
                        <asp:ListItem Value="A"></asp:ListItem>
                        <asp:ListItem Value="B"></asp:ListItem>
                        <asp:ListItem Value="C"></asp:ListItem>
                        <asp:ListItem Value="D"></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb10Test2" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img10Test2" runat="server" />
                    <asp:RadioButtonList ID="rd10Test2" runat="server">
                        <asp:ListItem Value="A"></asp:ListItem>
                        <asp:ListItem Value="B"></asp:ListItem>
                        <asp:ListItem Value="C"></asp:ListItem>
                        <asp:ListItem Value="D"></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb10Test3" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img10Test3" runat="server" />
                    <asp:RadioButtonList ID="rd10Test3" runat="server">
                        <asp:ListItem Value="A"></asp:ListItem>
                        <asp:ListItem Value="B"></asp:ListItem>
                        <asp:ListItem Value="C"></asp:ListItem>
                        <asp:ListItem Value="D"></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb10Test4" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img10Test4" runat="server" />
                    <asp:RadioButtonList ID="rd10Test4" runat="server">
                        <asp:ListItem Value="A"></asp:ListItem>
                        <asp:ListItem Value="B"></asp:ListItem>
                        <asp:ListItem Value="C"></asp:ListItem>
                        <asp:ListItem Value="D"></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb10Test5" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img10Test5" runat="server" />
                    <asp:RadioButtonList ID="rd10Test5" runat="server">
                        <asp:ListItem Value="A"></asp:ListItem>
                        <asp:ListItem Value="B"></asp:ListItem>
                        <asp:ListItem Value="C"></asp:ListItem>
                        <asp:ListItem Value="D"></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb10Test6" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img10Test6" runat="server" />
                    <asp:RadioButtonList ID="rd10Test6" runat="server">
                        <asp:ListItem Value="A"></asp:ListItem>
                        <asp:ListItem Value="B"></asp:ListItem>
                        <asp:ListItem Value="C"></asp:ListItem>
                        <asp:ListItem Value="D"></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb10Test7" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img10Test7" runat="server" />
                    <asp:RadioButtonList ID="rd10Test7" runat="server">
                        <asp:ListItem Value="A"></asp:ListItem>
                        <asp:ListItem Value="B"></asp:ListItem>
                        <asp:ListItem Value="C"></asp:ListItem>
                        <asp:ListItem Value="D"></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb10Test8" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img10Test8" runat="server" />
                    <asp:RadioButtonList ID="rd10Test8" runat="server">
                        <asp:ListItem Value="A"></asp:ListItem>
                        <asp:ListItem Value="B"></asp:ListItem>
                        <asp:ListItem Value="C"></asp:ListItem>
                        <asp:ListItem Value="D"></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb10Test9" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img10Test9" runat="server" />
                    <asp:RadioButtonList ID="rd10Test9" runat="server">
                        <asp:ListItem Value="A"></asp:ListItem>
                        <asp:ListItem Value="B"></asp:ListItem>
                        <asp:ListItem Value="C"></asp:ListItem>
                        <asp:ListItem Value="D"></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb10Test10" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img10Test10" runat="server" />
                    <asp:RadioButtonList ID="rd10Test10" runat="server">
                        <asp:ListItem Value="A"></asp:ListItem>
                        <asp:ListItem Value="B"></asp:ListItem>
                        <asp:ListItem Value="C"></asp:ListItem>
                        <asp:ListItem Value="D"></asp:ListItem>
                    </asp:RadioButtonList>
                    <br />                 
                </td>
            </tr> 
            <tr>
                <td>
                    <asp:Button ID="btn10Test" runat="server" Text="Hoàn thành" />
                </td>
            </tr>
        </asp:Panel>
                  
          
              
    </table>
</div>  
</asp:Content>
