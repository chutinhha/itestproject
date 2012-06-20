<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="AddQuestions.aspx.cs" Inherits="iTest2012.AddQuestions" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="Content-Type" id="meta" content="text/html; charset=utf-8" />
    <script src="ckeditor/ckeditor_source.js" type="text/javascript"></script>   
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
    <div align="center">        
        <asp:Image ID="Image_Add_Icon" runat="server" ImageUrl="~/image/icon/add-quest-icon.jpg" />
        <table class="border_tableheadline">
            <tr>
                <td>
                    Thêm Câu hỏi
                </td>
            </tr>
        </table>
        <table class="border_alltable">
        <tr class="border_headtittle">
                <td colspan="2">
                    Nhập các thông tin cần thiết cho câu hỏi :
                </td>
            </tr>
            <tr >
                <td colspan="2" style="height:20px">
                    
                </td>
            </tr>
            <tr align="left">
                <td class="td_style_wid">
                    Môn học
                </td>
                <td  class="td_style_Nowid">
                    <asp:DropDownList ID="ddlSubName" runat="server"  CssClass="boder_textbox"
                        Width="350px" Height="25px" DataSourceID="LinqDataSource1" DataTextField="iSubjectName" DataValueField="iSubjectName"
                        AppendDataBoundItems="True" OnSelectedIndexChanged="ddlSubName_SelectedIndexChanged"
                        AutoPostBack="True">
                        <asp:ListItem Value="-1">---- Chọn môn học ----</asp:ListItem>
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="iTest2012.MyiTestDataDataContext"
                        EntityTypeName="" GroupBy="iSubjectName" OrderGroupsBy="key" Select="new (key as iSubjectName, it as iSubjects)"
                        TableName="iSubjects" OrderBy="iSubjectName">
                    </asp:LinqDataSource>
                </td>
            </tr>
            <tr align="left">
                <td  class="td_style_wid">
                    Mức độ câu hỏi
                </td>
                <td  class="td_style_Nowid">
                    <asp:DropDownList ID="ddlLevel" runat="server"  CssClass="boder_textbox"
                        Width="350px">
                        <asp:ListItem Value="0">Chưa xác định</asp:ListItem>
                        <asp:ListItem Value="1">Dễ</asp:ListItem>
                        <asp:ListItem Value="2">Bình thường</asp:ListItem>
                        <asp:ListItem Value="3">Khó</asp:ListItem>
                        <asp:ListItem Value="4">Thông minh</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr align="left">
                <td  class="td_style_wid">
                    Chọn chương
                </td>
                <td  class="td_style_Nowid">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="ddlChapNum" CssClass="boder_textbox" runat="server" AppendDataBoundItems="True" Width="350px"
                             AutoPostBack="True">
                            <asp:ListItem Value="-1">---- Chọn Chương ---- </asp:ListItem>
                            </asp:DropDownList>                            
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="ddlSubName" EventName="SelectedIndexChanged" />
                        </Triggers>
                    </asp:UpdatePanel>
                    
                </td>
            </tr>
            <%--<tr align="left">
                <td  class="td_style_wid">
                    Tên chương
                </td>
                <td  class="td_style_Nowid">
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="350px" ForeColor="Blue" BorderWidth="0px"></asp:TextBox>
                </td>
            </tr>--%>
            <tr align="left">
                <td  class="td_style_wid">
                    
                </td>
                <td  class="td_style_Nowid">
                    <asp:HyperLink ID="HyperLink2" runat="server" Target="_blank" NavigateUrl="~/AddNewChap.aspx">Thêm Chương mới ? Nhấn vào đây</asp:HyperLink>
                </td>
            </tr>
            <tr align="left">
                <td  class="td_style_wid">
                    Nội dung : 
                </td>

                <td  class="td_style_Nowid">
                    <cc1:Editor runat="server"></cc1:Editor>
                    <textarea name="txt_noidung" id="txtnoidung" runat="server" rows="10" cols="60" style="height:150px" class="boder_textbox"></textarea>
                </td>
            </tr>
            <script type="text/javascript" language="javascript">

                CKEDITOR.replace('txtnoidung');
 
            </script>
            <tr align="left">
                <td  class="td_style_wid">
                    Chèn hình ảnh
                </td>
                <td  class="td_style_Nowid">
                    <asp:FileUpload ID="FileUploadQuest" runat="server"  CssClass="boder_textbox" Width="250px" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FileUploadQuest"
                        ErrorMessage="Incorrect Image !" ValidationExpression="^([0-9a-zA-Z_\-~ :\\])+(.jpg|.JPG|.jpeg|.JPEG|.bmp|.BMP|.gif|.GIF|.png|.PNG)$"
                        ForeColor="Red"></asp:RegularExpressionValidator>
                        </td>
            </tr>
            <tr align="left">
                <td colspan="2" class="td_style_Nowid">
                   Đáp án
                </td>
            </tr>
            <tr align="left">
                <td  class="td_style_wid">
                     
                </td>
                <td  class="td_style_Nowid">
                   <strong>Đáp án A</strong><br />
                        <asp:TextBox ID="txtAns5" runat="server"  CssClass="boder_textbox" TextMode="MultiLine" 
                            Width="350px" Height="50px"></asp:TextBox>
                        <br />
                        <asp:RadioButton ID="rbA" runat="server" GroupName="radioans" 
                            Text="Đây là câu trả lời đúng." />
                        &nbsp;<br /> <strong>Đáp án B</strong><br />
                        <asp:TextBox ID="txtAns6" runat="server"  CssClass="boder_textbox" TextMode="MultiLine" 
                            Width="350px" Height="50px"></asp:TextBox>
                        <br />
                        <asp:RadioButton ID="rbB" runat="server" GroupName="radioans" 
                            Text="Đây là câu trả lời đúng." />
                        &nbsp;<br /> <strong>Đáp án C</strong><br />
                        <asp:TextBox ID="txtAns7" runat="server"  CssClass="boder_textbox" TextMode="MultiLine" 
                            Width="350px" Height="50px"></asp:TextBox>
                        <br />
                        <asp:RadioButton ID="rbC" runat="server" GroupName="radioans" 
                            Text="Đây là câu trả lời đúng." />
                        &nbsp;<br /> <strong>Đáp án D</strong><br />
                        <asp:TextBox ID="txtAns8" runat="server"  CssClass="boder_textbox" TextMode="MultiLine" 
                            Width="350px" Height="50px"></asp:TextBox>
                        <br />
                        <asp:RadioButton ID="rbD" runat="server" GroupName="radioans" 
                            Text="Đây là câu trả lời đúng." />
                        &nbsp;<br />
                    <br />
                </td>
            </tr>
            <tr align="right" class="border_headtittle">
                <td colspan="2" style="text-align: right;">
                    <asp:Button ID="btnAddQuest" runat="server" CssClass="btn_body" style="width:100px; height:25px" Text="Thêm" 
                        OnClick="btnAddQuest_Click" />
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <asp:Button ID="btnEnterAgain" runat="server" CssClass="btn_body" style="width:100px; height:25px" Text="Nhập lại" 

                        OnClick="btnEnterAgain_Click" />
                    </td>
            </tr>
            <tr align="right">
            <td colspan="2" style="text-align: right;">
                   <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Default.aspx">Quay về Trang chủ</asp:HyperLink>
                </td>                
            </tr>
        </table>
    </div>
</asp:Content>
