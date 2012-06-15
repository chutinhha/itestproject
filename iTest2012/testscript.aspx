<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="testscript.aspx.cs" Inherits="iTest2012.testscript" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
  #change_table tr td div{
    width:200px; 
    height:100px;
    background-color:#EAEAEA;
    border:1px solid black;
  }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
  
  <script type="text/javascript">
      $(document).ready(function () {
          jQuery("[name='cks']").change(function () {
              var str = "";
              $("input[name='cks']:checked").each(function (i, val) {
                  str += jQuery(this).val() + " duoc checked, ";
              });
              $("#cks_div").html(str);
          });
          $("[name='rds']").change(function () {
              var str = "";
              $("input[name='rds']:checked").each(function (i, val) {
                  str += jQuery(this).val() + " duoc checked, ";
              });
              $("#rds_div").html(str);
          });
      });
  </script>
  
  <table id="change_table"><tr>
    <td>
   
    <input  type="checkbox" value="checkbox 1" name="cks"/>1
    <input  type="checkbox" value="checkbox 2" name="cks"/>2
    <input  type="checkbox" value="checkbox 3" name="cks"/>3
    <input  type="checkbox" value="checkbox 4" name="cks"/>4
    </td>
    <td><div id="cks_div">Không có checkbox nào được check.</div></td>
  </tr>
  <tr>
    <td>
    <input type="radio" value="radio 1" name="rds"/>radio 1
    <input type="radio" value="radio 2" name="rds"/>radio 2
    <input type="radio" value="radio 3" name="rds"/>radio 3
    <input type="radio" value="radio 4" name="rds"/>radio 4
  </td>
    <td><div id="rds_div">Không có radio button nào được chọn.</div>
    </td>
  </tr>
  </table>
</div>
</asp:Content>
