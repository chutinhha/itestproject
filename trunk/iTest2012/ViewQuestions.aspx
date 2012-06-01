<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewQuestions.aspx.cs" Inherits="iTest2012.ViewQuestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            font-size: x-large;
            color: #003300;
        }
        .style4
        {
            text-align: left;
        }
        .style5
        {
            text-align: left;
            width: 120px;
            color: #003300;
            font-weight: bold;
        }
        .style7
        {
            text-align: left;
        }
        a:hover
        {
            text-decoration:none;
            color:Green;
            text-decoration:none;
            font-weight:bold;
         }
        .a:hover
    {
        text-align: center;
    }
    .a:hover
    {
        text-align: center;
    }
        .a:hover
    {
        text-align: center;
    }
    .a:hover
    {
        text-align: center;
    }
        </style>
        <script type="text/javascript">            // tao script chi cho nhap so
            function valid(o, w) {
                o.value = o.value.replace(valid.r[w], '');
            }
            valid.r = {
                'numbers': /[^\d]/g
            }
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="background-color: #FFFFFF; text-align: center;">
    
        <br />
        <br />
        <asp:Image ID="Image_View_Icon" runat="server" 
            ImageUrl="~/image/icon/search-icon.jpg" />
        <br />
        <br />
        <table align="center" 
            style="border-style: ridge; border-width: medium; width: 550px;">
            <tr>
                <td class="style3" colspan="2" style="text-align: center">
                    <strong>Questions List</strong></td>
            </tr>
            <tr>
                <td class="style5">
                    Choose Subject</td>
                <td class="style7">
                    <asp:DropDownList ID="ddlChooseSub" runat="server" DataSourceID="LinqDataSub" 
                        DataTextField="iSubjectName" DataValueField="iSubjectName" Width="400px" 
                        AppendDataBoundItems="True" AutoPostBack="True" 
                        onselectedindexchanged="ddlChooseSub_SelectedIndexChanged">
                        <asp:ListItem Value="-1">---- Choose a subject ----</asp:ListItem>
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSub" runat="server" 
                        ContextTypeName="iTest2012.MyiTestDataDataContext" EntityTypeName="" 
                        GroupBy="iSubjectName" OrderGroupsBy="key" 
                        Select="new (key as iSubjectName, it as iSubjects)" TableName="iSubjects">
                    </asp:LinqDataSource>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Choose Level</td>
                <td class="style7">
                    <asp:DropDownList ID="ddlLevel" runat="server" Width="400px" 
                        AutoPostBack="True">
                        <asp:ListItem Value="Easy">Easy</asp:ListItem>
                        <asp:ListItem Value="Medium">Medium</asp:ListItem>
                        <asp:ListItem Value="Normal">Normal</asp:ListItem>
                        <asp:ListItem Value="Hard">Hard</asp:ListItem>
                        <asp:ListItem Value="Intelligent">Intelligent</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Choose Chapter</td>
                <td class="style4">
                    <asp:DropDownList ID="ddlChapIndex" runat="server" AppendDataBoundItems="True" 
                        AutoPostBack="True" onselectedindexchanged="ddlChapIndex_SelectedIndexChanged" 
                        Width="400px">
                        <asp:ListItem Value="-1">---- Choose a chapter ----</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" ForeColor="Blue" 
                        Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <asp:Button ID="btnView" runat="server" BackColor="#003300" ForeColor="White" 
                        onclick="btnView_Click" style="font-weight: 700; " 
                        Text="View" Width="100px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnViewAll" runat="server" BackColor="#003300" 
                        ForeColor="White" onclick="btnViewAll_Click" style="font-weight: 700" 
                        Text="ViewAll" Width="100px" />
                </td>
            </tr>
            </table>
    <div>
        <br />
        <table align="center" style="width: 550px;">
            <tr>
                <td class="style2" colspan="2">
                    <asp:GridView ID="GridQuestion" runat="server" AllowPaging="True" 
                        BackColor="White" BorderColor="#999999" BorderStyle="Ridge" BorderWidth="3px" 
                        CellPadding="3" HorizontalAlign="Justify" 
                        onpageindexchanging="GridQuestion_PageIndexChanging">
                        <AlternatingRowStyle BackColor="Gainsboro" />
                        <Columns>
                            <asp:TemplateField HeaderText="Check">
                                <EditItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" 
                                        oncheckedchanged="CheckBox1_CheckedChanged" />
                                </ItemTemplate>
                                <ControlStyle Width="20px" />
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                    <br />
                    <asp:Label ID="lbGridLoad" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style1" style="width: 275px; text-align: center;">
                    <asp:Button ID="btnUpdate" runat="server" BackColor="#003300" ForeColor="White" 
                        Text="Update" Width="100px" style="text-align: center" />
                </td>
                <td class="style1" style="width: 275px; text-align: center;">
                    <asp:Button ID="btnDelete" runat="server" BackColor="#003300" ForeColor="White" 
                        onclick="btnDelete_Click" style="font-weight: 700" Text="Delete" 
                        Width="100px" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style1" colspan="2" style="width: 550px; text-align: center;">
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="a:hover"
                      NavigateUrl="~/Default.aspx">Return Home Page</asp:HyperLink>
                </td>
            </tr>
        </table>
    </div>
    </div>
</asp:Content>
