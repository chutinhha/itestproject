<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="iTest2012.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">  
<style type="text/css">
    .title
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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
 <script type="text/javascript">
     $(document).ready(function () {
         $("#flip24").click(function () {
             $(".panel24").slideToggle("slow");
         });
         $("#flipVN").click(function () {
             $(".panelVn").slideToggle("slow");
         });
     });
</script>   
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
                            &nbsp;</td>
                    </tr>
                </table>   
                <table class="border_tableheadline" style="width:550px">
                    <tr>
                        <td>
                            Tin Tức Đó Đây</td>
                    </tr>
                </table>
                
                <table class="border_alltable" style="width:550px" align="left">
                    <tr>
                        <td class="border_headtittle">
                            <div style=" width:100%">
                                <img alt="(Ẩn / hiện)" id="flip24" src="image/icon/arrow_updown.png" title="Ẩn hiện tin tức" style="float: right" />Từ 24h.com.vn</div>                            
                        </td>
                    </tr>
                    <tr align="left">
                        <td  align="left" style="padding:0 0 0 15px">
                        <div class="panel24" style="overflow:scroll; height:400px; padding:0 15px 0 0">
                            <asp:Repeater ID="rptRSS24" runat="server">
                                <ItemTemplate>
                                    <div class="title"><asp:HyperLink ID="title" runat="server" NavigateUrl='<%# Eval("link")%>' Text='<%# Eval("title")%>' Target="_blank"></asp:HyperLink></div>
                                    <div class="description"><asp:Label ID="description" runat="server" Text='<%# Eval("description")%>'></asp:Label></div>
                                    <div class="pubdate">Ngày đăng tin : <%# Eval("pubDate")%></div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="border_headtittle">
                            <div style=" width:100%">
                                <img alt="(Ẩn / hiện)" id="flipVN" src="image/icon/arrow_updown.png" title="Ẩn hiện tin tức" style="float: right" />Từ VnExpress </div>
                        </td>
                    </tr>
                    <tr align="left">
                        <td  align="left" style="padding:0 0 0 15px">
                        <div class="panelVn" style="overflow:scroll; height:400px; padding:0 15px 0 0">
                            <asp:Repeater ID="rptRSSVN" runat="server">
                                <ItemTemplate>
                                    <div class="title"><asp:HyperLink ID="title" runat="server" NavigateUrl='<%# Eval("link")%>' Text='<%# Eval("title")%>' Target="_blank"></asp:HyperLink></div>
                                    <div class="description"><asp:Label ID="description" runat="server" Text='<%# Eval("description")%>'></asp:Label></div>
                                    <div class="pubdate">Ngày đăng tin : <%# Eval("pubDate")%></div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
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


