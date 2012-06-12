<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="Test.aspx.cs" Inherits="iTest2012.Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="center">
        <br />
        <br />
        <br />        
        <div>
                <table class="border_tableheadline">
                    <tr>
                        <td>
                            Thông tin cho đề thi
                        </td>
                    </tr>
                </table>
                <table class="border_alltable">                
                    <tr>                    
                        <td >
                            Chọn Môn/Lĩnh vực :
                        </td>
                        <td >
                            <asp:DropDownList ID="ddlSubject" runat="server" DataSourceID="LinqDataSource1" DataTextField="iSubjectName"
                                DataValueField="iSubjectName" Width="200px"  AppendDataBoundItems="True">
                                <asp:ListItem Selected="True" Value="-1">Tất cả</asp:ListItem>
                            </asp:DropDownList>
                            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="iTest2012.MyiTestDataDataContext"
                                EntityTypeName="" GroupBy="iSubjectName" OrderGroupsBy="key" Select="new (key as iSubjectName, it as iSubjects)"
                                TableName="iSubjects">
                            </asp:LinqDataSource>
                        </td>
                    </tr> 
                    <tr>
                        <td>
                            Chọn mức độ khó :
                        </td>
                        <td>
                            
                            <asp:DropDownList ID="ddlLevel" runat="server" Height="22px" Width="199px">
                                <asp:ListItem Value="-1" Selected="True">Ngẫu nhiên</asp:ListItem>
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
                            Số câu hỏi :
                        </td>
                        <td >
                            <asp:DropDownList ID="ddlNumberofQuests" runat="server" Width="200px" AppendDataBoundItems="True">
                                <asp:ListItem Selected="True">10</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>50</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <br />
                            &nbsp;<asp:Button ID="btnLetsGo" runat="server" Style="font-weight: 700; color: #003300;
                                text-align: center;" Text="Bắt đầu !" OnClick="btnLetsGo_Click" Height="26px"
                                Width="85px" />
                            <br />
                            <asp:Label ID="lbError" runat="server" Style="color: #FF0000"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>          
    </div>
    <br />
    <br />
    <br />
</asp:Content>
