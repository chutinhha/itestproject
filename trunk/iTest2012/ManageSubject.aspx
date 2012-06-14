<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ManageSubject.aspx.cs" Inherits="iTest2012.ManageSubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
    <table class="border_tableheadline">
        <tr>
            <td>
                Quản Lý Chủ Đề
            </td>
        </tr>
    </table>
    <table class="border_alltable" >
            
        <tr align="left">
            <td colspan="2" style="text-align: center; height:20px"> </td>        
            </tr>
         <tr align="center">
            <td>
                <asp:Button ID="btnView" runat="server" CssClass="btn_body" Text="Danh sách chủ đề" 
                    Width="150px"  onclick="btnView_Click" />
           
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
                <asp:Button ID="btnAdd" runat="server" CssClass="btn_body" Text="Thêm chủ đề" 
                     Width="150px" onclick="btnAdd_Click" />
            </td>
        </tr>
        <tr align="left">
            <td colspan="2" class="border_headtittle" style="text-align: center; height:20px"> </td>        
            </tr>
        </table>
        <br />
        
        <asp:Panel ID="Panel_View" runat="server" style="text-align: center" 
            Visible="False">
            <span class="style1"><strong>Danh sách các chủ đề</strong></span><br />
            <table style="width:100%; text-align:center">
                <tr align="center">
                    <td align="center">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AutoGenerateColumns="False" CellPadding="4" DataSourceID="LinqDataSource1" 
                            ForeColor="#333333" GridLines="None" 
                            onpageindexchanging="GridView1_PageIndexChanging" PageSize="10" 
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
            <div align="center">
            <table class="border_tableheadline">
                <tr>
                    <td>
                            Thêm chủ đề
                    </td>
                </tr>
            </table>
            <table class="border_alltable">
                <tr>
                    <td style="height:20px" colspan="2">
                        </td>
                </tr>
                <tr align="left">
                    <td class="td_style_wid">
                        Mã chủ đề</td>
                    <td "td_style_Nowid">
                        <asp:TextBox ID="txtSubID" runat="server" Width="200px" CssClass="boder_textbox"
                                onkeyup="valid(this,'numbers')" onblur="valid(this,'numbers')" 
                                MaxLength="7"></asp:TextBox>
                        &nbsp;</td>
                </tr>
                <tr align="left">
                    <td class="td_style_wid">
                        Tên chủ đề :</td>
                    <td "td_style_Nowid">
                        <asp:TextBox ID="txtSubName" runat="server" Width="200px" CssClass="boder_textbox" MaxLength="250"></asp:TextBox>
                    </td>
                </tr>
                <tr align="right">
                    <td colspan="2">
                        <asp:Label ID="lbError" runat="server" style="color: #FF0000"></asp:Label>
                    </td>
                </tr>
                <tr align="right">
                    <td colspan="2" class="border_headtittle" style="text-align:right">
                        <asp:Button ID="btnAddNewSub" runat="server" 
                                    Text="Add" onclick="btnAddNewSub_Click"  CssClass="btn_body"
                                 />
                    </td>
                </tr>
            </table>
            <br />
            </div>
        </asp:Panel>
        

</div>
</asp:Content>


