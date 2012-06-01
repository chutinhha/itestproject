<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddNewSubject.aspx.cs" Inherits="iTest2012.AddNewSubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: x-large;
            color: #0000FF;
        }
        .style2
        {
            color: #0000FF;
        }
    </style>
    <script type="text/javascript">
        function valid(o, w) {
            o.value = o.value.replace(valid.r[w], '');
        }
        valid.r = {
            'numbers': /[^\d]/g
        }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center; background-color: #FFFFFF;">
                <br />
                <br />
                <br />
                <table style="width: 350px;" align="center">
                    <tr>
                        <td class="style1" colspan="2">
                            <strong>Add New Subject</strong></td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Subject ID</td>
                        <td>
                            <asp:TextBox ID="txtSubID" runat="server" Width="200px" 
                                onkeyup="valid(this,'numbers')" onblur="valid(this,'numbers')" MaxLength="7"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Subject Name :</td>
                        <td>
                            <asp:TextBox ID="txtSubName" runat="server" Width="200px" MaxLength="250"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lbError" runat="server" style="color: #FF0000"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                                <asp:Button ID="btnAddNewSub" runat="server" 
                                    Text="Add" onclick="btnAddNewSub_Click" 
                                style="color: #0000FF; font-weight: 700" Width="100px" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            
</div>
</asp:Content>
