<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="Test.aspx.cs" Inherits="iTest2012.Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="center"> 
                <table class="border_tableheadline">
                    <tr>
                        <td>
                            Thông tin cho đề thi
                        </td>
                    </tr>
                </table>
                <table  class="border_alltable">                
                    <tr align="left" >                    
                        <td class="td_style_wid">
                            Chọn Môn/Lĩnh vực :
                        </td>
                        <td class="td_style_Nowid">
                            <asp:DropDownList ID="ddlSubject" runat="server" DataSourceID="LinqDataSource1" DataTextField="iSubjectName"
                                DataValueField="iSubjectName" Width="200px" CssClass="boder_textbox"  AppendDataBoundItems="True">
                                <asp:ListItem Selected="True" Value="-1">Tất cả</asp:ListItem>
                            </asp:DropDownList>
                            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="iTest2012.MyiTestDataDataContext"
                                EntityTypeName="" GroupBy="iSubjectName" OrderGroupsBy="key" Select="new (key as iSubjectName, it as iSubjects)"
                                TableName="iSubjects">
                            </asp:LinqDataSource>
                        </td>
                    </tr> 
                    <tr align="left">
                        <td class="td_style_wid">
                            Chọn mức độ khó :
                        </td>
                        <td class="td_style_Nowid">
                            
                            <asp:DropDownList ID="ddlLevel" runat="server" Width="200px" CssClass="boder_textbox" >
                                <asp:ListItem Value="-1" Selected="True">Ngẫu nhiên</asp:ListItem>
                                <asp:ListItem Value="0">Chưa xác định</asp:ListItem>
                                <asp:ListItem Value="1">Dễ</asp:ListItem>
                                <asp:ListItem Value="2">Bình thường</asp:ListItem>
                                <asp:ListItem Value="3">Khó</asp:ListItem>
                                <asp:ListItem Value="4">Thông minh</asp:ListItem>
                            </asp:DropDownList>
                            
                        </td>
                    </tr>                   
                    <tr align="left">
                        <td class="td_style_wid" >
                            Số câu hỏi :
                        </td>
                        <td class="td_style_Nowid">
                            <asp:DropDownList ID="ddlNumberofQuests" Width="50px" runat="server" CssClass="boder_textbox"  AppendDataBoundItems="True">
                                <asp:ListItem Selected="True">10</asp:ListItem>
                                <asp:ListItem>40</asp:ListItem>
                                <asp:ListItem>60</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr align="right" >
                        <td colspan="2" class="border_headtittle" style="padding:0 15px; margin:0px; text-align:right;" >
                            <asp:Button ID="btnLetsGo" runat="server" CssClass="btn_body" Text="Bắt đầu !" OnClick="btnLetsGo_Click" Height="26px"
                                Width="85px" />
                         </td>
                    </tr>
                    <tr align="right">
                         <td colspan="2" class="td_style_Nowid">                            
                            <asp:Label ID="lbError" runat="server" Style="color: #FF0000"></asp:Label>
                        </td>
                    </tr>
                </table>
                <p> </p>
                <p> </p>
              
    </div>
    <br />
    <br />
    <br />
</asp:Content>
