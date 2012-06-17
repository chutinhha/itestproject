<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="iTest2012.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">  
<style type="text/css">
    .tittle
    {
        font-weight:bold;
    }
    .description
    {
        color:#003300;
    }
    .pubdate
    {
        color:#999999;    
    }
</style>  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
   <div  align="center" style="width:800px">  
                <div style="float:left">
                <table class="border_tableheadline" style="width:550px">
                    <tr>
                        <td>
                            Thông Báo - Hướng Dẫn</td>
                    </tr>
                </table>
                <table class="border_alltable" style="width:550px">
                    <tr>
                        <td>
                            Đây là phần thân khung, edit tuỳ ý<br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
                <table class="border_alltable" style =" width:550px; border-width:0px; border-color:inherit;">
                    <tr>
                        <td style ="height:20px">
                        </td>
                    </tr>
                </table>   
                <table class="border_tableheadline" style="width:550px">
                    <tr>
                        <td>
                            Tin Tức Đó Đây</td>
                    </tr>
                </table>
                <table class="border_alltable" style="width:550px">
                    <tr>
                        <td class="border_headtittle">
                            >> Từ kenhtuyensinh.vn
                        </td>
                        <td>
                            <asp:Repeater ID="rptRSS" runat="server">
                                <ItemTemplate>
                                    <div class="tittle"><asp:HyperLink ID="tittle" runat="server" NavigateUrl='<%# Eval("link") %>' Text='<%# Eval("title") %>'></asp:HyperLink></div>
                                    <div class="description"><asp:Label ID="description" runat="server" Text='<%# Eval("description")%>' ></asp:Label></div>
                                    <div class="pubdate">Ngày đăng tin : '<%# Eval("pubDate")%>' - Sửa lần cuối : '<%# Eval("lastBuildDate")%>'</div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </td>
                    </tr>
                </table>
                </div>
           
            <div style="float:right">
                <table class="border_tableheadline" style=" width:230px; top:0px">
                    <tr>
                        <td>
                            Xếp Hạng Hàng Tuần</td>
                    </tr>
                </table>
                <table class="border_alltable" style="width:230px">
                    <tr>
                        <td>
                            Đây là phần thân khung, edit tuỳ ý<br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
            </div>                     
   </div>
     
</div>
</asp:Content>


