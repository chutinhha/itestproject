<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ManageSubject.aspx.cs" Inherits="iTest2012.ManageSubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        font-size: x-large;
        color: #0000FF;
    }
    
        }
    .style3
    {
        color: #0000FF;
    }
        
        .style11
        {
            text-align: center;
            width: 333px;
            color: #0000FF;
        }
    .style12
    {
        width: 496px;
        text-align: right;
    }
    .style13
    {
        width: 497px;
        text-align: left;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>

    <br />
    <br />
    <br />
    <table class="stylem12" 
            style="border: thin dotted #0000FF; background-color: #D9EBEC;">
        <tr>
            <td class="style1" colspan="2" style="text-align: center">
                <strong>Subject Management</strong></td>
        </tr>
        <tr>
            <td class="style12" >
                <asp:Button ID="btnView" runat="server" CssClass="style3" Text="View Subjects" 
                    Width="150px" onclick="btnView_Click" />
            </td>
            <td class="style13" >
                <asp:Button ID="btnAdd" runat="server" CssClass="style3" Text="Add Subjects" 
                    Width="150px" onclick="btnAdd_Click" />
            </td>
        </tr>
        </table>
        <br />
        <asp:Panel ID="Panel_View" runat="server" style="text-align: center" 
            Visible="False">
            <span class="style1"><strong>Subjects List</strong></span><br />
            <table style="width:100%; text-align:center">
                <tr align="center">
                    <td align="center">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AutoGenerateColumns="False" CellPadding="4" DataSourceID="LinqDataSource1" 
                            ForeColor="#333333" GridLines="None" 
                            onpageindexchanging="GridView1_PageIndexChanging" PageSize="2" 
                            Width="400px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateField HeaderText="SubjectID" SortExpression="iSubjectID">
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server"  Text='<%# Bind("iSubjectID") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("iSubjectID") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ControlStyle Width="150px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="SubjectName" SortExpression="iSubjectName">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("iSubjectName") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("iSubjectName") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ControlStyle Width="250px" />
                                </asp:TemplateField>
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                            ContextTypeName="iTest2012.MyiTestDataDataContext" EntityTypeName="" 
                            Select="new (iSubjectName, iSubjectID)" TableName="iSubjects" 
                            OrderBy="iSubjectID">
                        </asp:LinqDataSource>
                        <br />
                    </td>
                </tr>
            </table>            
        </asp:Panel>
        <asp:Panel ID="Panel_Add" runat="server" style="text-align: center" 
            Visible="False">
            <table style="width: 350px;" align="center">
                <tr>
                    <td class="style1" colspan="2">
                        <strong>Add New Subject</strong></td>
                </tr>
                <tr>
                    <td class="style11">
                        Subject ID</td>
                    <td>
                        <asp:TextBox ID="txtSubID" runat="server" Width="200px" 
                                onkeyup="valid(this,'numbers')" onblur="valid(this,'numbers')" 
                                MaxLength="7"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        Subject Name :</td>
                    <td>
                        <asp:TextBox ID="txtSubName" runat="server" Width="200px" MaxLength="250"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lbError" runat="server" style="color: #FF0000"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnAddNewSub" runat="server" 
                                    Text="Add" onclick="btnAddNewSub_Click" 
                                style="color: #0000FF; font-weight: 700" Width="100px" />
                    </td>
                </tr>
            </table>
            <br />
        </asp:Panel>
        <br />
    <br />

</div>
</asp:Content>


