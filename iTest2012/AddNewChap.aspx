<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="AddNewChap.aspx.cs" Inherits="iTest2012.AddNewChap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">        
        <div align="center">
            <table  class="border_tableheadline">
                <tr>
                    <td>
                        Thêm chương mới
                    </td>
                </tr>
            </table>
            <table class="border_alltable">
            <tr>
                    <td colspan="2" class="border_headtittle">
                        Thông tin chương :
                    </td>
                </tr>
                <tr align="left">
                    <td  class="td_style_wid">
                        Môn / Lĩnh vực :
                    </td>
                    <td class="td_style_Nowid">
                        <asp:DropDownList ID="ddlSubject" runat="server" AppendDataBoundItems="True"
                            DataSourceID="LinqDataSource1" DataTextField="iSubjectName" DataValueField="iSubjectName"
                             Width="200px" CssClass="boder_textbox">
                            <asp:ListItem Value="-1">--- Chọn môn / lĩnh vực ---</asp:ListItem>
                        </asp:DropDownList>
                        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="iTest2012.MyiTestDataDataContext"
                            EntityTypeName="" GroupBy="iSubjectName" Select="new (key as iSubjectName, it as iSubjects)"
                            TableName="iSubjects">
                        </asp:LinqDataSource>
                    </td>
                </tr>
                <%--<tr align="left">
                    <td class="td_style_wid">
                        Mã Index :
                    </td>
                    <td class="td_style_Nowid">
                        <asp:TextBox ID="txtIndex" runat="server" Width="200px" CssClass="boder_textbox"></asp:TextBox>
                        <br />
                        <asp:Label ID="lbIndex" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>--%>
                <tr align="left">
                    <td class="td_style_wid">
                        Tên chương :
                    </td>
                    <td class="td_style_Nowid">
                        <asp:TextBox ID="txtName" runat="server" Width="200px" CssClass="boder_textbox"></asp:TextBox>
                        <br />
                        <asp:Label ID="lbName" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr align="right" class="border_headtittle">
                    <td colspan="2" align="right">
                        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Thêm"  CssClass="btn_body" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnAgain" runat="server" OnClick="btnAgain_Click" Text="Nhập lại"
                            CssClass="btn_body" />
                      </td>
                </tr>
                 <tr align="right">
                     <td colspan="2">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Quay về trang chủ</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
        
</asp:Content>
