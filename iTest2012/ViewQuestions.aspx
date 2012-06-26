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
        
        <asp:Image ID="Image_View_Icon" runat="server" 
            ImageUrl="~/image/icon/search-icon.jpg" />
        <br />
        <br />
        <table class="border_tableheadline">
            <tr align="left">
                <td class="td_style_wid">
                    DANH SÁCH CÂU HỎI
                </td>
            </tr>
        </table>
        <table class="border_alltable">
            <tr align="left">
                <td  class="td_style_wid">
                    Chọn chủ đề</td>
                <td  class="td_style_Nowid">
                    <asp:DropDownList ID="ddlChooseSub" runat="server" DataSourceID="LinqDataSub" 
                        DataTextField="iSubjectName" DataValueField="iSubjectName" Width="300px" 
                        AppendDataBoundItems="True" AutoPostBack="True"  CssClass="boder_textbox"
                        onselectedindexchanged="ddlChooseSub_SelectedIndexChanged">
                        <asp:ListItem Value="-1">Tất cả</asp:ListItem>
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSub" runat="server" 
                        ContextTypeName="iTest2012.MyiTestDataDataContext" EntityTypeName="" 
                        GroupBy="iSubjectName" OrderGroupsBy="key" 
                        Select="new (key as iSubjectName, it as iSubjects)" TableName="iSubjects">
                    </asp:LinqDataSource>
                </td>
            </tr>            
            <tr align="left">
                <td  class="td_style_wid">
                    Chọn chủ đề con :</td>
                <td  class="td_style_Nowid" >
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="ddlChapIndex" runat="server" AppendDataBoundItems="True" 
                                AutoPostBack="True" CssClass="boder_textbox"  
                                Width="300px">
                            <asp:ListItem Value="-1">Tất cả</asp:ListItem>
                            </asp:DropDownList>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="ddlChooseSub"  EventName="SelectedIndexChanged" />
                        </Triggers>
                    </asp:UpdatePanel>              
                </td>
            </tr>
            <tr  align="left">
                <td  class="td_style_wid">
                    Chọn mức độ : </td>
                <td  class="td_style_Nowid">
                    <asp:DropDownList ID="ddlLevel" runat="server" Width="300px" 
                        CssClass="boder_textbox">
                        <asp:ListItem Value="-1">Tất cả</asp:ListItem>
                        <asp:ListItem Value="0">Chưa xác định</asp:ListItem>
                        <asp:ListItem Value="1">Dễ</asp:ListItem>
                        <asp:ListItem Value="2">Bình thường</asp:ListItem>
                        <asp:ListItem Value="3">Khó</asp:ListItem>
                        <asp:ListItem Value="4">Thông minh</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr align="left">
                <td  class="td_style_wid">
                    </td>
                <td  class="td_style_Nowid">
                    &nbsp;</td>
            </tr>
            <tr align="right">
                <td colspan="2" style="text-align:right"  class="border_headtittle">
                    <asp:Button ID="btnView" runat="server"  CssClass="btn_body" 
                        onclick="btnView_Click" 
                        Text="Xem"  />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnViewAll" runat="server"  CssClass="btn_body" onclick="btnViewAll_Click" 
                        Text="Xem tất cả"  />
                </td>
            </tr>
            </table>
    <div align="center">
        
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
                </table>
                <asp:Panel ID="panelView" runat="server">
                <table>
                <tr>
                    <td style="width: 275px; text-align: center;">
                        <asp:Button ID="btnUpdate" runat="server" CssClass="btn_body"
                        Text="Cập nhật"   />
                    </td>
                    <td  style="width: 275px; text-align: center;">
                        <asp:Button ID="btnDelete" runat="server" CssClass="btn_body" 
                        onclick="btnDelete_Click"  Text="Xoá" 
                         />
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
    
</asp:Content>
