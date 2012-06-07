﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="AddQuestions.aspx.cs" Inherits="iTest2012.AddQuestions" %>


    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <%--<title>Demo CKeditor by Jimmy Van</title>--%>
    <script src="ckeditor/ckeditor.js" type="text/javascript"></script>
    <style type="text/css">
        .style1
        {
            width: 293px;
            text-align: left;
            font-weight: 700;
            float:left;
        }
        .style2
        {
            width: 531px ;
            text-align: left;
            float:left
        }
        .style3
        {
            color: #FFFFFF;
            width: 119px;
            background-color: #003300;
            float:left
        }
    </style>
    <script type="text/javascript">        // tao script chi cho nhap so
        function valid(o, w) {
            o.value = o.value.replace(valid.r[w], '');
        }
        valid.r = {
            'numbers': /[^\d]/g
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="text-align: center; background-color: #FFFFFF;">
        <br />
        <br />
        <asp:Image ID="Image_Add_Icon" runat="server" ImageUrl="~/image/icon/add-quest-icon.jpg" />
        <br />
        <br />
        <table align="center" style="border: medium ridge #008000; width: 550px; color: #003300;">
            <tr>
                <td colspan="2" style="font-weight: 700; font-size: x-large;">
                    Thêm Câu hỏi
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Môn học
                </td>
                <td class="style2">
                    <asp:DropDownList ID="ddlSubName" runat="server" BackColor="White" Style="margin-left: 0px"
                        Width="350px" AutoPostBack="True" DataSourceID="LinqDataSource1" DataTextField="iSubjectName"
                        DataValueField="iSubjectName" AppendDataBoundItems="True" OnSelectedIndexChanged="ddlSubName_SelectedIndexChanged">
                        <asp:ListItem Value="-1">---- Chọn môn học ----</asp:ListItem>
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="iTest2012.MyiTestDataDataContext"
                        EntityTypeName="" GroupBy="iSubjectName" OrderGroupsBy="key" Select="new (key as iSubjectName, it as iSubjects)"
                        TableName="iSubjects" OrderBy="iSubjectName">
                    </asp:LinqDataSource>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Mức độ câu hỏi
                </td>
                <td class="style2">
                    <asp:DropDownList ID="ddlLevel" runat="server" BackColor="White" Style="margin-left: 0px"
                        Width="350px">
                        <asp:ListItem>Dễ</asp:ListItem>
                        <asp:ListItem>Vừa</asp:ListItem>
                        <asp:ListItem>Bình thường</asp:ListItem>
                        <asp:ListItem>Khó</asp:ListItem>
                        <asp:ListItem>Thông minh</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Chọn chương
                </td>
                <td class="style2">
                    <asp:DropDownList ID="ddlChapNum" runat="server" AppendDataBoundItems="True" Width="350px"
                        AutoPostBack="True" OnSelectedIndexChanged="ddlChapNum_SelectedIndexChanged">
                        <asp:ListItem Value="-1">---- Chọn Chương ---- </asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Tên Chương
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="350px" ForeColor="Blue"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;
                </td>
                <td class="style2">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AddNewChap.aspx">Có muốn thêm Chương mới?</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Nội Dung :
                </td>
                    <td style="width: 650px; float: left">
                        <textarea name="txt_noidung" id="txtnoidung" rows="10" cols="40"> </textarea>
                    </td>
               
                <script type="text/javascript" language="javascript">

                    CKEDITOR.replace('txtnoidung');
 
                </script>
            </tr>
            
            <tr>
                <td class="style1">
                    Chèn Hình ảnh
                </td>
                <td class="style2">
                    <asp:FileUpload ID="FileUploadQuest" runat="server" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FileUploadQuest"
                        ErrorMessage="Incorrect Image !" ValidationExpression="^([0-9a-zA-Z_\-~ :\\])+(.jpg|.JPG|.jpeg|.JPEG|.bmp|.BMP|.gif|.GIF|.png|.PNG)$"
                        ForeColor="Red"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Loại câu hỏi
                </td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem Value="-1">Chọn Loại Câu Hỏi</asp:ListItem>
                        <asp:ListItem Value="1">Một lựa chọn</asp:ListItem>
                        <asp:ListItem Value="2">Nhiều lựa chọn</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;
                </td>
                <td class="style2" style="border-style: groove; border-width: thin">
                    <asp:Panel ID="Panel_MutiChoices" runat="server">
                        <strong>A</strong><br />
                        <asp:TextBox ID="txtAns1" runat="server" BackColor="White" TextMode="MultiLine" Width="330px"></asp:TextBox>
                        <br />
                        <asp:FileUpload ID="FileUploadAns1" runat="server" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="FileUploadAns1"
                            ErrorMessage="Incorrect Image !" ForeColor="Red" ValidationExpression="^([0-9a-zA-Z_\-~ :\\])+(.jpg|.JPG|.jpeg|.JPEG|.bmp|.BMP|.gif|.GIF|.png|.PNG)$"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <strong>B</strong><br />
                        <asp:TextBox ID="txtAns2" runat="server" BackColor="White" TextMode="MultiLine" Width="330px"></asp:TextBox>
                        <br />
                        <asp:FileUpload ID="FileUploadAns2" runat="server" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="FileUploadAns2"
                            ErrorMessage="Incorrect Image !" ForeColor="Red" ValidationExpression="^([0-9a-zA-Z_\-~ :\\])+(.jpg|.JPG|.jpeg|.JPEG|.bmp|.BMP|.gif|.GIF|.png|.PNG)$"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <strong>C</strong><br />
                        <asp:TextBox ID="txtAns3" runat="server" BackColor="White" TextMode="MultiLine" Width="330px"></asp:TextBox>
                        <br />
                        <asp:FileUpload ID="FileUploadAns3" runat="server" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="FileUploadANs3"
                            ErrorMessage="Incorrect Image !" ForeColor="Red" ValidationExpression="^([0-9a-zA-Z_\-~ :\\])+(.jpg|.JPG|.jpeg|.JPEG|.bmp|.BMP|.gif|.GIF|.png|.PNG)$"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <strong>D</strong><br />
                        <asp:TextBox ID="txtAns4" runat="server" BackColor="White" TextMode="MultiLine" Width="330px"></asp:TextBox>
                        <br />
                        <asp:FileUpload ID="FileUploadAns4" runat="server" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="FileUploadAns4"
                            ErrorMessage="Incorrect Image !" ForeColor="Red" ValidationExpression="^([0-9a-zA-Z_\-~ :\\])+(.jpg|.JPG|.jpeg|.JPEG|.bmp|.BMP|.gif|.GIF|.png|.PNG)$"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        Chọn câu trả lời đúng<br />
                        <asp:CheckBox ID="cb1" runat="server" Checked="True" Text="A" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="cb2" runat="server" Text="B" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="cb3" runat="server" Text="C" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CheckBox ID="cb4" runat="server" Text="D" />
                        <br />
                    </asp:Panel>
                    <asp:Panel ID="Panel_OneChoice" runat="server">
                        <strong>A</strong><br />
                        <asp:TextBox ID="txtAns5" runat="server" BackColor="White" TextMode="MultiLine" Width="330px"></asp:TextBox>
                        <br />
                        <asp:FileUpload ID="FileUploadAns5" runat="server" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="FileUploadAns1"
                            ErrorMessage="Incorrect Image !" ForeColor="Red" ValidationExpression="^([0-9a-zA-Z_\-~ :\\])+(.jpg|.JPG|.jpeg|.JPEG|.bmp|.BMP|.gif|.GIF|.png|.PNG)$"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <strong>B</strong><br />
                        <asp:TextBox ID="txtAns6" runat="server" BackColor="White" TextMode="MultiLine" Width="330px"></asp:TextBox>
                        <br />
                        <asp:FileUpload ID="FileUploadAns6" runat="server" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="FileUploadAns2"
                            ErrorMessage="Incorrect Image !" ForeColor="Red" ValidationExpression="^([0-9a-zA-Z_\-~ :\\])+(.jpg|.JPG|.jpeg|.JPEG|.bmp|.BMP|.gif|.GIF|.png|.PNG)$"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <strong>C</strong><br />
                        <asp:TextBox ID="txtAns7" runat="server" BackColor="White" TextMode="MultiLine" Width="330px"></asp:TextBox>
                        <br />
                        <asp:FileUpload ID="FileUploadAns7" runat="server" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="FileUploadANs3"
                            ErrorMessage="Incorrect Image !" ForeColor="Red" ValidationExpression="^([0-9a-zA-Z_\-~ :\\])+(.jpg|.JPG|.jpeg|.JPEG|.bmp|.BMP|.gif|.GIF|.png|.PNG)$"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <strong>D</strong><br />
                        <asp:TextBox ID="txtAns8" runat="server" BackColor="White" TextMode="MultiLine" Width="330px"></asp:TextBox>
                        <br />
                        <asp:FileUpload ID="FileUploadAns8" runat="server" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="FileUploadAns4"
                            ErrorMessage="Incorrect Image !" ForeColor="Red" ValidationExpression="^([0-9a-zA-Z_\-~ :\\])+(.jpg|.JPG|.jpeg|.JPEG|.bmp|.BMP|.gif|.GIF|.png|.PNG)$"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        Chọn <span class="stylem17">câu </span>đúng nhất<br />
                        <asp:RadioButtonList ID="RadioButtonListAns" runat="server">
                            <asp:ListItem Value="0">A</asp:ListItem>
                            <asp:ListItem Value="1">B</asp:ListItem>
                            <asp:ListItem Value="2">C</asp:ListItem>
                            <asp:ListItem Value="3">D</asp:ListItem>
                        </asp:RadioButtonList>
                    </asp:Panel>
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnAddQuest" runat="server" CssClass="style3" Text="Thêm"
                        Width="120px" OnClick="btnAddQuest_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnEnterAgain" runat="server" CssClass="style3" Text="Nhập lại"
                        Width="120px" OnClick="btnEnterAgain_Click" />
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Quay về Trang chủ</asp:HyperLink>
                </td>
            </tr>
        </table>
        <br />
    </div>
</asp:Content>