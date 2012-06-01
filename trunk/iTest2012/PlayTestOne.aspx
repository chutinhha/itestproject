<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PlayTestOne.aspx.cs" Inherits="iTest2012.PlayTestOne" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style6
        {
            font-size: x-large;
            color: #003300;
        }
        .style7
        {
            color: #003300;
        }
       
        .style12
        {
            color: #003300;
            font-weight: bold;
        }
        .style13
        {
            width: 400px;
        }
        .style14
        {
            width: 199px;
        }
        .style15
        {
            width: 199px;
            text-align: left;
        }
        .style16
        {
            width: 199px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="text-align: center">

    <br />
    <br />
    <br />
<div>
   
        &nbsp;<asp:Label ID="lbNumberOfTest" runat="server" ForeColor="#003300" 
            
            style="font-weight: 700; font-size: x-large; text-align: center; color: #0000FF;"></asp:Label>
        <span class="style6"><strong>&nbsp;Questions</strong></span><br />
        <span class="style7"><strong>Number of correct answers :</strong></span>
        <asp:Label ID="lbCorrectAns" runat="server" 
            style="font-weight: 700; color: #FF0000"></asp:Label>
        <br />
        <br />
        <span class="style7"><strong>Question</strong></span>
        <asp:Label ID="lbNumber" runat="server" 
            style="color: #0000FF; font-weight: 700"></asp:Label>
&nbsp;
        <br />
        <table style="width:100%; text-align :center">
            <tr>
                <td align="center">
&nbsp;<asp:GridView ID="GridViewBody" runat="server" Width="450px">
        </asp:GridView>
                </td>
            </tr>
            <tr>
                <td align="center">
&nbsp;<asp:Image ID="imgQuest" runat="server" />
                &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    <strong>Answers :</strong></td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Panel ID="Panel1" runat="server" Visible="False">
                        <asp:GridView ID="GridViewAnswer" runat="server"
              
              AlternatingRowStyle-BackColor="#006699"
              AlternatingRowStyle-ForeColor="#FFFFFF" >
                            <Columns>
                                <asp:TemplateField HeaderText="Serial Number">
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex + 1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </asp:Panel>
                </td>
            </tr>
        </table>
&nbsp;<asp:Panel ID="Panel_OneChoice" runat="server">
            <table  width="400px" align="center" class="style13">
                <tr>
                    <td  align="center">
                        <table align="center" class="style13" width="400px">
                            <tr>
                                <td class="style13" style="text-align: left">
                                    <asp:RadioButton ID="rdans1" runat="server" GroupName="ans" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style13" style="text-align: left">
                                    <asp:RadioButton ID="rdans2" runat="server" GroupName="ans" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style13" style="text-align: left">
                                    <asp:RadioButton ID="rdans3" runat="server" GroupName="ans" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style13" style="text-align: left">
                                    <asp:RadioButton ID="rdans4" runat="server" GroupName="ans" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel_MultiChoices" runat="server">
            <table  width="400px" align="center" class="style13">
                <tr>
                    <td style="text-align: left" class="style13" >
                        <asp:CheckBox ID="CheckBox1" runat="server" CssClass="style7" 
                            Text="1st Answer" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left" class="style13" >
                        <asp:CheckBox ID="CheckBox2" runat="server" CssClass="style7" 
                            Text="2nd Answer" />
                    </td>
                </tr>
                <tr>
                    <td class="style13" style="text-align: left">
                        <asp:CheckBox ID="CheckBox3" runat="server" CssClass="style7" 
                            Text="3rd Answer" />
                    </td>
                </tr>
                <tr>
                    <td class="style13" style="text-align: left">
                        <asp:CheckBox ID="CheckBox4" runat="server" CssClass="style7" 
                            Text="4th Answer" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <asp:Button ID="btnNext" runat="server" Text="Next" Width="100px" 
            onclick="btnNext_Click" CssClass="style12" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnFinish" runat="server" Text="Finish" Width="100px" 
            CssClass="style12" onclick="btnFinish_Click" />
        <br />
    
</div>
    <asp:Label ID="testthu" runat="server"></asp:Label>
    &nbsp;&lt;&gt;
    <asp:Label ID="testthu2" runat="server"></asp:Label>
    <br />
    
    <br />

</div>
</asp:Content>
