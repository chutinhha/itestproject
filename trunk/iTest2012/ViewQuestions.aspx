<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewQuestions.aspx.cs" Inherits="iTest2012.ViewQuestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <script type="text/javascript">            // tao script chi cho nhap so
            function valid(o, w) {
                o.value = o.value.replace(valid.r[w], '');
            }
            valid.r = {
                'numbers': /[^\d]/g
            }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div align="center">    
        <br />
        <br />
        <asp:Image ID="Image_View_Icon" runat="server" 
            ImageUrl="~/image/icon/search-icon.jpg" />
        <br />
        <br />
        <table class="border_tableheadline">
            <tr>
                <td>
                    Danh Sách Câu Hỏi
                </td>
            </tr>
        </table>
        <table class="border_alltable">
            <tr>
                <td class="style5">
                    Chọn Môn/Lĩnh vực :</td>
                <td class="style7">
                    <asp:DropDownList ID="ddlChooseSub" runat="server" DataSourceID="LinqDataSub" 
                        DataTextField="iSubjectName" DataValueField="iSubjectName" Width="400px" 
                        AppendDataBoundItems="True" AutoPostBack="True" 
                        onselectedindexchanged="ddlChooseSub_SelectedIndexChanged">
                        <asp:ListItem Value="-1">---- Choose a subject ----</asp:ListItem>
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSub" runat="server" 
                        ContextTypeName="iTest2012.MyiTestDataDataContext" EntityTypeName="" 
                        GroupBy="iSubjectName" OrderGroupsBy="key" 
                        Select="new (key as iSubjectName, it as iSubjects)" TableName="iSubjects">
                    </asp:LinqDataSource>
                </td>
            </tr>
            <tr>
                <td >
                    Chọn mức độ :</td>
                <td class="style7">
                    <asp:DropDownList ID="ddlLevel" runat="server" Width="400px" 
                        AutoPostBack="True">
                        <asp:ListItem Value="0">Chưa xác định</asp:ListItem>
                        <asp:ListItem Value="1">Dễ</asp:ListItem>
                        <asp:ListItem Value="2">Bình thường</asp:ListItem>
                        <asp:ListItem Value="3">Khó</asp:ListItem>
                        <asp:ListItem Value="4">Thông minh</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td >
                    Chọn chương :</td>
                <td >
                    <asp:DropDownList ID="ddlChapIndex" runat="server" AppendDataBoundItems="True" 
                        AutoPostBack="True" onselectedindexchanged="ddlChapIndex_SelectedIndexChanged" 
                        Width="400px">
                        <asp:ListItem Value="-1">-- Chọn chương --</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    </td>
            </tr>
            <tr>
                <td >
                    &nbsp;</td>
                <td >
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" ForeColor="Blue" 
                        Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnView" runat="server"  CssClass="btn_body" 
                        onclick="btnView_Click" style="font-weight: 700; " 
                        Text="Xem" Width="100px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnViewAll" runat="server"  CssClass="btn_body" onclick="btnViewAll_Click" style="font-weight: 700" 
                        Text="Xem tất cả" Width="100px" />
                </td>
            </tr>
            </table>
    <div>
        <asp:Panel ID="panelView" runat="server">
            <table align="center" style="width: 550px;">
                <tr>
                    <td class="style2" colspan="2">
                        <asp:GridView ID="GridQuestion" runat="server" AllowPaging="True" 
                        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="4" HorizontalAlign="Justify" 
                        onpageindexchanging="GridQuestion_PageIndexChanging" ForeColor="Black" 
                            GridLines="Vertical">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateField HeaderText="Check">
                                    <EditItemTemplate>
                                        <asp:CheckBox ID="CheckBox1" runat="server" />
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="CheckBox2" runat="server" 
                                        oncheckedchanged="CheckBox1_CheckedChanged" />
                                    </ItemTemplate>
                                    <ControlStyle Width="20px" />
                                    <ControlStyle Width="20px" />
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#000065" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>                        
                    </td>
                </tr>
                <tr>
                    <td class="style1" style="width: 275px; text-align: center;">
                        <asp:Button ID="btnUpdate" runat="server" CssClass="btn_body"
                        Text="Cập nhật" Width="100px" style="text-align: center" />
                    </td>
                    <td class="style1" style="width: 275px; text-align: center;">
                        <asp:Button ID="btnDelete" runat="server" CssClass="btn_body" 
                        onclick="btnDelete_Click" style="font-weight: 700" Text="Xoá" 
                        Width="100px" />
                        <br />
                    </td>
                </tr>                
            </table>
        </asp:Panel>
        <div align="center">
        <asp:Label ID="lbGridLoad" runat="server" ForeColor="Red"></asp:Label>
        </div>       
    </div>    
    </div>
    <br /><br /><br />
</asp:Content>
