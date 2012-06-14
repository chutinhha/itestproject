<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ManagePermission.aspx.cs" Inherits="iTest2012.ManagePermission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
        
        <asp:Image ID="Image_Permiss_Icon" runat="server" 
            ImageUrl="~/image/icon/key-icon.jpg" />
        <br />
        <br />
        <table class="border_tableheadline">
            <tr>
                <td >
                    <strong>Quản lý quyền hạn</strong></td>
            </tr>
            </table>
        <table class="border_alltable">
            <tr align="left">
                <td colspan="2" style="height:20px" >
                 </td>
            </tr>
            <tr align="left">
                <td  class="td_style_wid">
                   Tên tài khoản : </td>
                <td  class="td_style_Nowid">
                    <asp:DropDownList ID="ddlUsername" runat="server" Width="250px" 
                        DataSourceID="LinqDataSource1" DataTextField="iUserName"  CssClass="boder_textbox"
                        DataValueField="iUserName">
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                        ContextTypeName="iTest2012.MyiTestDataDataContext" EntityTypeName="" 
                        Select="new (iUserName)" TableName="iUsers">
                    </asp:LinqDataSource>
                </td>
            </tr>
            <tr align="left">
                <td  class="td_style_wid">
                    Quyền hạn</td>
                <td  class="td_style_Nowid">
                    <asp:DropDownList ID="ddlFunction" runat="server" Width="250px"  CssClass="boder_textbox"
                        DataSourceID="LinqDataSource2" DataTextField="iFuncName" 
                        DataValueField="iFuncName">
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSource2" runat="server" 
                        ContextTypeName="iTest2012.MyiTestDataDataContext" EntityTypeName="" 
                        Select="new (iFuncName)" TableName="iFunctions">
                    </asp:LinqDataSource>
                </td>
                </tr>
                <tr>
                <td colspan="2" style="height:20px">
                </td>
                </tr>
            
            <tr align="right">
                <td colspan="2" class="border_headtittle" style="text-align:right">
                    <asp:Button ID="btnAdd" runat="server" Text="Set"  
                         CssClass="btn_body" onclick="btnAdd_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="btnRemove" runat="server" Text="Remove"  
                        CssClass="btn_body" onclick="btnRemove_Click" />
                </td>
           </tr>
        </table>
        <br />
    </div>
    <div align="center">    
    <table class="border_tableheadline">
        <tr>
            <td>
                Xoá tài khoản
            </td>
        </tr>
    </table>
    <table class="border_alltable">
        <tr align="left">
            <td colspan="2" style="height:20px">
             </td>
        </tr>        
        <tr align="left">
            <td class="td_style_wid">
                Tên tài khoản muốn xoá :</td>
            <td class="td_style_Nowid">
                <asp:DropDownList ID="ddlUserName02" runat="server" 
                    DataSourceID="LinqDataSource3" DataTextField="iUserName" 
                    DataValueField="iUserName" Width="250px" CssClass="boder_textbox">
                </asp:DropDownList>
                <asp:LinqDataSource ID="LinqDataSource3" runat="server" 
                    ContextTypeName="iTest2012.MyiTestDataDataContext" EntityTypeName="" GroupBy="iUserName" 
                    OrderBy="iUserName" OrderGroupsBy="key" 
                    Select="new (key as iUserName, it as iUsers)" TableName="iUsers">
                </asp:LinqDataSource>
            </td>            
        </tr>
        <tr align="left">
            <td colspan="2" style="height:20px">
             </td>
        </tr>
        <tr >
            <td colspan="2" class="border_headtittle" style="text-align:right">
                <asp:Button ID="btnDel" runat="server" onclick="btnDel_Click" Text="Thực hiện"  CssClass="btn_body" />
            </td>
        </tr>
    </table>
    <br />
</div>
</asp:Content>
