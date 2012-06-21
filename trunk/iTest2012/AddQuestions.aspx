﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="AddQuestions.aspx.cs" Inherits="iTest2012.AddQuestions" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="Content-Type" id="meta" content="text/html; charset=utf-8" />      
    <script type="text/javascript">        // tao script chi cho nhap so
        function valid(o, w) {
            o.value = o.value.replace(valid.r[w], '');
        }
        valid.r = {
            'numbers': /[^\d]/g
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<asp:TextBox ID="txtNoidung" runat="server" Height="200px" TextMode="MultiLine" 
                        Width="500px"></asp:TextBox>--%>
    <div align="center">        
        <asp:Image ID="Image_Add_Icon" runat="server" ImageUrl="~/image/icon/add-quest-icon.jpg" />
        <table class="border_tableheadline">
            <tr>
                <td>
                    THÊM CÂU HỎI
                </td>
            </tr>
        </table>
        <table class="border_alltable">
        <tr class="border_headtittle">
                <td colspan="2">
                    Nhập các thông tin cần thiết cho câu hỏi
                </td>
            </tr>
            <tr >
                <td colspan="2" style="height:20px">
                    
                </td>
            </tr>
            <tr align="left">
                <td class="td_style_wid">
                    Môn / Lĩnh vực :
                </td>
                <td  class="td_style_Nowid">
                    <asp:DropDownList ID="ddlSubName" runat="server"  CssClass="boder_textbox"
                        Width="350px" Height="25px" DataSourceID="LinqDataSource1" DataTextField="iSubjectName" DataValueField="iSubjectName"
                        AppendDataBoundItems="True" OnSelectedIndexChanged="ddlSubName_SelectedIndexChanged"
                        AutoPostBack="True">
                        <asp:ListItem Value="-1">--- Chọn môn / lĩnh vực ---</asp:ListItem>
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="iTest2012.MyiTestDataDataContext"
                        EntityTypeName="" GroupBy="iSubjectName" OrderGroupsBy="key" Select="new (key as iSubjectName, it as iSubjects)"
                        TableName="iSubjects" OrderBy="iSubjectName">
                    </asp:LinqDataSource>
                </td>
            </tr>
            <tr align="left">
                <td  class="td_style_wid">
                    Mức độ câu hỏi :
                </td>
                <td  class="td_style_Nowid">
                    <asp:DropDownList ID="ddlLevel" runat="server"  CssClass="boder_textbox"
                        Width="350px">
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
                    Chương :</td>
                <td  class="td_style_Nowid">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="ddlChapNum" CssClass="boder_textbox" runat="server" AppendDataBoundItems="True" Width="350px"
                             AutoPostBack="True">
                            <asp:ListItem Value="-1">--- Chọn chương --- </asp:ListItem>
                            </asp:DropDownList>                            
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="ddlSubName" EventName="SelectedIndexChanged" />
                        </Triggers>
                    </asp:UpdatePanel>
                    
                </td>
            </tr>            
            <tr align="left">
                <td  class="td_style_wid">
                    
                </td>
                <td  class="td_style_Nowid">
                    <asp:HyperLink ID="HyperLink2" runat="server" Target="_blank" NavigateUrl="~/AddNewChap.aspx">Thêm chương mới ? Nhấn vào đây</asp:HyperLink>
                </td>
            </tr>
            <tr align="left">
                <td  class="td_style_wid" style=" background-color:#E9E9E9 ">
                    
                    Nội dung câu hỏi :</td>
                <td  class="td_style_Nowid" style=" background-color:#E9E9E9 ">
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td  class="td_style_wid">
                    &nbsp;</td>
                <td  class="td_style_Nowid">

                    <%--<asp:TextBox ID="txtNoidung" runat="server" Height="200px" TextMode="MultiLine" 
                        Width="500px"></asp:TextBox>--%>
                    <%--<asp:TextBox ID="txtNoidung" runat="server" Height="200px" TextMode="MultiLine" 
                        Width="500px"></asp:TextBox>--%>
                    <textarea id="txtQuest" runat="server" cols="10" rows="2" style="height:200px; width:450px"></textarea>
                </td>
            </tr>            
            <tr align="left">
                <td  class="td_style_wid">
                    Hình ảnh (nếu có) :</td>
                <td  class="td_style_Nowid">
                    <asp:FileUpload ID="FileUploadQuest" runat="server"  CssClass="boder_textbox" Width="250px" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FileUploadQuest"
                        ErrorMessage="Sai định dạng ảnh !!!" ValidationExpression="^([0-9a-zA-Z_\-~ :\\])+(.jpg|.JPG|.jpeg|.JPEG|.bmp|.BMP|.gif|.GIF|.png|.PNG)$"
                        ForeColor="Red"></asp:RegularExpressionValidator>
                        </td>
            </tr>
            <tr align="left">
                <td  class="td_style_wid" style=" background-color:#E9E9E9 ">
                    Đáp án 1 :</td>
                <td  class="td_style_Nowid" style=" background-color:#E9E9E9 ">
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td  class="td_style_wid">
                    &nbsp;</td>
                <td  class="td_style_Nowid">
                    <textarea id="txtAns1" runat="server" cols="10" rows="2" 
                        style="height:100px; width:450px" name="S1"></textarea><br />
                    <asp:RadioButton ID="rbA" runat="server" GroupName="Ans" 
                        Text="Đây là đáp án đúng" Checked="True" />
                </td>
            </tr>
            <tr align="left">
                <td  class="td_style_wid" style=" background-color:#E9E9E9 ">
                     
                    Đáp án 2 :</td>
                <td  class="td_style_Nowid" style=" background-color:#E9E9E9 ">
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td  class="td_style_wid">
                     
                    &nbsp;</td>
                <td  class="td_style_Nowid">
                    <textarea id="txtAns2" runat="server" cols="10" rows="2" 
                        style="height:100px; width:450px" name="S2"></textarea><br />
                    <asp:RadioButton ID="rbB" runat="server" GroupName="Ans" 
                        Text="Đây là đáp án đúng" />
                </td>
            </tr>
            <tr align="left">
                <td  class="td_style_wid" style=" background-color:#E9E9E9 ">
                     
                    Đáp án 3 :</td>
                <td  class="td_style_Nowid" style=" background-color:#E9E9E9 ">
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td  class="td_style_wid">
                     
                    &nbsp;</td>
                <td  class="td_style_Nowid">
                    <textarea id="txtAns3" runat="server" cols="10" rows="2" 
                        style="height:100px; width:450px" name="S3"></textarea><br />
                    <asp:RadioButton ID="rbC" runat="server" GroupName="Ans" 
                        Text="Đây là đáp án đúng" />
                </td>
            </tr>
            <tr align="left">
                <td  class="td_style_wid" style=" background-color:#E9E9E9 ">
                     
                    Đáp án 4 :
                     
                </td>
                <td  class="td_style_Nowid" style=" background-color:#E9E9E9 ">
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td  class="td_style_wid">
                     
                    &nbsp;</td>
                <td  class="td_style_Nowid">
                    <textarea id="txtAns4" runat="server" cols="10" rows="2" 
                        style="height:100px; width:450px" name="S4"></textarea><br />
                    <asp:RadioButton ID="rbD" runat="server" GroupName="Ans" 
                        Text="Đây là đáp án đúng" />
                </td>
            </tr>
            <tr align="right" class="border_headtittle">
                <td colspan="2" style="text-align: right;">
                    <asp:Button ID="btnAddQuest" runat="server" CssClass="btn_body" 
                        style="width:100px; height:25px" Text="Hoàn thành" 
                        OnClick="btnAddQuest_Click" />
                    
                    &nbsp;&nbsp;&nbsp;<asp:Button ID="btnXemtruoc" CssClass="btn_body" runat="server" Text="Xem trước" 
                        Visible="False" />
                    &nbsp;&nbsp;
                    
                    <asp:Button ID="btnEnterAgain" runat="server" CssClass="btn_body" style="width:100px; height:25px" Text="Nhập lại" 

                        OnClick="btnEnterAgain_Click" />
                    </td>
            </tr>
            <tr align="right">
            <td colspan="2" style="text-align: right;">
                   <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Default.aspx">Quay về trang chủ</asp:HyperLink>
                </td>                
            </tr>
        </table>
    </div>
</asp:Content>
