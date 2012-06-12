<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="AddQuestions.aspx.cs" Inherits="iTest2012.AddQuestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="Content-Type" id="meta" runat="server" content="text/html; charset=utf-8" />
    <%--<script src="ckeditor/ckeditor.js" type="text/javascript"></script>--%>
    <script src="~/ckeditor/ckeditor.js" type="text/javascript"></script>    
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
        <br />
        <br />
        <asp:Image ID="Image_Add_Icon" runat="server" ImageUrl="~/image/icon/add-quest-icon.jpg" />
        <br />
        <br />
        <table class="border_tableheadline">
            <tr>
                <td>
                    Thêm Câu hỏi
                </td>
            </tr>
        </table>
        <table class="border_alltable">
            <tr >
                <td >
                    Môn học
                </td>
                <td >
                    <asp:DropDownList ID="ddlSubName" runat="server" BackColor="White" Style="margin-left: 0px"
                        Width="350px" DataSourceID="LinqDataSource1" DataTextField="iSubjectName" DataValueField="iSubjectName"
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
            <tr>
                <td >
                    Mức độ câu hỏi
                </td>
                <td c>
                    <asp:DropDownList ID="ddlLevel" runat="server" BackColor="White" Style="margin-left: 0px"
                        Width="350px">
                        <asp:ListItem Value="0">Chưa xác định</asp:ListItem>
                        <asp:ListItem Value="1">Dễ</asp:ListItem>                       
                        <asp:ListItem Value="2">Bình thường</asp:ListItem>
                        <asp:ListItem Value="3">Khó</asp:ListItem>
                        <asp:ListItem Value="4">Thông minh</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td >
                    Chọn chương
                </td>
                <td >
                    <asp:DropDownList ID="ddlChapNum" runat="server" AppendDataBoundItems="True" Width="350px"
                        OnSelectedIndexChanged="ddlChapNum_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem Value="-1">---- Chọn Chương ---- </asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td >
                    Tên chương
                </td>
                <td >
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="350px" ForeColor="Blue"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td >
                    &nbsp;
                </td>
                <td >
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AddNewChap.aspx">Thêm Chương mới ? Nhấn vào đây</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    Nội dung : 
                </td>
                <td><textarea name="txtnoidung" id="txtnoidung" runat="server" rows="10" cols="50" style="width:350px; height:200px;"></textarea></td>
            </tr>
            <script type="text/javascript" language="javascript">

                CKEDITOR.replace('txtnoidung');
 
            </script>
            <tr>
                <td >
                   Chèn hình ảnh</td>
                <td >
                    <asp:FileUpload ID="FileUploadQuest" runat="server" Width="245px" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FileUploadQuest"
                        ErrorMessage="Incorrect Image !" ValidationExpression="^([0-9a-zA-Z_\-~ :\\])+(.jpg|.JPG|.jpeg|.JPEG|.bmp|.BMP|.gif|.GIF|.png|.PNG)$"
                        ForeColor="Red"></asp:RegularExpressionValidator>
                    <br />
                    *<span style="color:'#999999';">Chỉ cho phép chèn 01 hình ảnh vào câu hỏi</span><br />
                </td>
            </tr>            
            <tr>
                <td >
                    &nbsp;
                    Đáp án</td>
                <td >
                    
                        <strong>Câu A</strong><br />
                        <asp:TextBox ID="txtAns5" runat="server" BackColor="White" TextMode="MultiLine" 
                            Width="350px"></asp:TextBox>
                        <br />
                        <asp:RadioButton ID="rbA" runat="server" GroupName="radioans" 
                            Text="Đây là câu trả lời đúng." />
                        &nbsp;<br /> <strong>Câu B</strong><br />
                        <asp:TextBox ID="txtAns6" runat="server" BackColor="White" TextMode="MultiLine" 
                            Width="350px"></asp:TextBox>
                        <br />
                        <asp:RadioButton ID="rbB" runat="server" GroupName="radioans" 
                            Text="Đây là câu trả lời đúng." />
                        &nbsp;<br /> <strong>Câu C</strong><br />
                        <asp:TextBox ID="txtAns7" runat="server" BackColor="White" TextMode="MultiLine" 
                            Width="350px"></asp:TextBox>
                        <br />
                        <asp:RadioButton ID="rbC" runat="server" GroupName="radioans" 
                            Text="Đây là câu trả lời đúng." />
                        &nbsp;<br /> <strong>Câu D</strong><br />
                        <asp:TextBox ID="txtAns8" runat="server" BackColor="White" TextMode="MultiLine" 
                            Width="349px"></asp:TextBox>
                        <br />
                        <asp:RadioButton ID="rbD" runat="server" GroupName="radioans" 
                            Text="Đây là câu trả lời đúng." />
                        &nbsp;<br />
                        <br />
                    
                    <br />
                </td>
            </tr>
            <tr >
                <td colspan="2" style="text-align: center;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnAddQuest" runat="server" CssClass="btn_body" style="width:100px; height:25px" Text="Thêm" 
                        OnClick="btnAddQuest_Click" />
                    
                    <asp:Button ID="btnEnterAgain" runat="server" CssClass="btn_body" style="width:100px; height:25px" Text="Nhập lại" 
                        OnClick="btnEnterAgain_Click" />
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Default.aspx">Quay về Trang chủ</asp:HyperLink>
                </td>
                <td style="float: left" colspan="2">
                </td>
            </tr>
        </table>

        <br />
    </div>
</asp:Content>
