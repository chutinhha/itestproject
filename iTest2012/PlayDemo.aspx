﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PlayDemo.aspx.cs" Inherits="iTest2012.PlayDemo" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register src="QuestControl.ascx" tagname="QuestControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js' type='text/javascript'></script>
<script src="js/jquery.countdown.js" type="text/javascript"></script>

<style type="text/css">
      br { clear: both; }
      .cntSeparator {
        font-size: 54px;
        margin: 10px 7px;
        color: #000;
      }
      </style>
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <script type="text/javascript">
    $(function () {
        $('#counter').countdown({
            image: 'js/img/digits.png',
            startTime: '01:12:12:00'
        });

        $('#counter_2').countdown({
            image: 'js/img/digits.png',
            startTime: '01:00',
            timerEnd: function (event) {
                alert('Đã hết thời gian làm bài!');
                $('#ContentPlaceHolder1_btn10Test').click();
            },
            format: 'mm:ss'
        });
    });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("input[name='cks']").change(function () {                
                var str = "";                
                $("input[name='cks']:checked").each(function (i, val) {
                    str += "<a href='#"+$(this).val() +"'>"+$(this).val()+"</a>"+ "<br />";
                });               
                $("#cks_div").html(str);

            });
        });  
</script> 
  <div align="center">
  <table>
    <tr>
        <td>
            <div id="counter_2" style="height: 77px; overflow: hidden; text-align:center " align="center"></div>
        </td>
    </tr>
  </table>
  </div>    
  <br />
  <div align="center">   
   
    <table class="border_tableheadline">
        <tr>
            <td>
                Demo
            </td>
        </tr>        
    </table>
    <table class="border_alltable">
        <tr style="padding: 0 15px;">
            <td>
                <asp:Label ID="Label1" runat="server" ></asp:Label>
                <asp:Panel ID="panelLoad" runat="server">
                    <asp:GridView ID="gridLoadQuest" runat="server" Visible="False">
                    </asp:GridView>
                    <asp:GridView ID="gridRandom" runat="server" Visible="False">
                    </asp:GridView>
                    <asp:GridView ID="gridLoadAns" runat="server" Visible="False">
                    </asp:GridView>
                    <br />                   
                </asp:Panel>
            </td>
        </tr>        
        <%--panel 10 câu--%>
        <asp:Panel ID="panel10Test" runat="server" >
            <tr align="left" style="padding: 0 15px;">                      
                <td class="td_style_Nowid">   
                Đánh dấu vào ô trước câu hỏi để ghi nhớ.                 
                    <div id="Câu 1" class="border_headtittle">
                    <input type="checkbox" value="Câu 1" name="cks"/>Câu 1</div>
                    <asp:Literal ID="Literal1" runat="server" Mode="Transform" ></asp:Literal> 
                    <asp:Label ID="lb10Test1" runat="server" Text=""></asp:Label>                   
                    <br /><asp:Image ID="img10Test1" runat="server" />                    
                    <br /><asp:RadioButton ID="rd10Test1a" runat="server" GroupName="10Test1"/>
                    <br /><asp:RadioButton ID="rd10Test1b" runat="server" GroupName="10Test1"/>
                    <br /><asp:RadioButton ID="rd10Test1c" runat="server" GroupName="10Test1"/>
                    <br /><asp:RadioButton ID="rd10Test1d" runat="server" GroupName="10Test1"/>
                    <div id="Câu 2" class="border_headtittle">
                    <input type="checkbox" value="Câu 2" name="cks"/>Câu 2</div> 
                    <asp:Literal ID="Literal2" runat="server" Mode="Transform"></asp:Literal>
                    <asp:Label ID="lb10Test2" runat="server" Text=""></asp:Label>                    
                    <br /><asp:Image ID="img10Test2" runat="server" /> 
                    <br /><asp:RadioButton ID="rd10Test2a" runat="server" GroupName="10Test2"/>
                    <br /><asp:RadioButton ID="rd10Test2b" runat="server" GroupName="10Test2"/>
                    <br /><asp:RadioButton ID="rd10Test2c" runat="server" GroupName="10Test2"/>
                    <br /><asp:RadioButton ID="rd10Test2d" runat="server" GroupName="10Test2"/>
                    <div id="Câu 3" class="border_headtittle">
                    <input type="checkbox" value="Câu 3" name="cks"/>Câu 3</div>
                    <asp:Literal ID="Literal3" runat="server" Mode="Transform"></asp:Literal> 
                    <asp:Label ID="lb10Test3" runat="server" Text=""></asp:Label>                    
                    <br /><asp:Image ID="img10Test3" runat="server" /> 
                    <br /><asp:RadioButton ID="rd10Test3a" runat="server" GroupName="10Test3"/>
                    <br /><asp:RadioButton ID="rd10Test3b" runat="server" GroupName="10Test3"/>
                    <br /><asp:RadioButton ID="rd10Test3c" runat="server" GroupName="10Test3"/>
                    <br /><asp:RadioButton ID="rd10Test3d" runat="server" GroupName="10Test3"/>
                    <div id="Câu 4" class="border_headtittle">
                    <input type="checkbox" value="Câu 4" name="cks"/>Câu 4</div> 
                    <asp:Literal ID="Literal4" runat="server" Mode="Transform"></asp:Literal>
                    <asp:Label ID="lb10Test4" runat="server" Text=""></asp:Label>                    
                    <br /><asp:Image ID="img10Test4" runat="server" /> 
                    <br /><asp:RadioButton ID="rd10Test4a" runat="server" GroupName="10Test4"/>
                    <br /><asp:RadioButton ID="rd10Test4b" runat="server" GroupName="10Test4"/>
                    <br /><asp:RadioButton ID="rd10Test4c" runat="server" GroupName="10Test4"/>
                    <br /><asp:RadioButton ID="rd10Test4d" runat="server" GroupName="10Test4"/>
                    <div id="Câu 5" class="border_headtittle">
                    <input type="checkbox" value="Câu 5" name="cks"/>Câu 5</div> 
                    <asp:Literal ID="Literal5" runat="server" Mode="Transform"></asp:Literal>
                    <asp:Label ID="lb10Test5" runat="server" Text=""></asp:Label>                    
                    <br /><asp:Image ID="img10Test5" runat="server" /> 
                    <br /><asp:RadioButton ID="rd10Test5a" runat="server" GroupName="10Test5"/>
                    <br /><asp:RadioButton ID="rd10Test5b" runat="server" GroupName="10Test5"/>
                    <br /><asp:RadioButton ID="rd10Test5c" runat="server" GroupName="10Test5"/>
                    <br /><asp:RadioButton ID="rd10Test5d" runat="server" GroupName="10Test5"/>
                    <div id="Câu 6" class="border_headtittle">
                    <input type="checkbox" value="Câu 6" name="cks"/>Câu 6</div> 
                    <asp:Literal ID="Literal6" runat="server" Mode="Transform"></asp:Literal>
                    <asp:Label ID="lb10Test6" runat="server" Text=""></asp:Label>                    
                    <br /><asp:Image ID="img10Test6" runat="server" /> 
                    <br /><asp:RadioButton ID="rd10Test6a" runat="server" GroupName="10Test6"/>
                    <br /><asp:RadioButton ID="rd10Test6b" runat="server" GroupName="10Test6"/>
                    <br /><asp:RadioButton ID="rd10Test6c" runat="server" GroupName="10Test6"/>
                    <br /><asp:RadioButton ID="rd10Test6d" runat="server" GroupName="10Test6"/>
                    <div  id="Câu 7" class="border_headtittle">
                    <input type="checkbox" value="Câu 7" name="cks"/>Câu 7</div> 
                    <asp:Literal ID="Literal7" runat="server" Mode="Transform"></asp:Literal>
                    <asp:Label ID="lb10Test7" runat="server" Text=""></asp:Label>                    
                    <br /><asp:Image ID="img10Test7" runat="server" /> 
                    <br /><asp:RadioButton ID="rd10Test7a" runat="server" GroupName="10Test7"/>
                    <br /><asp:RadioButton ID="rd10Test7b" runat="server" GroupName="10Test7"/>
                    <br /><asp:RadioButton ID="rd10Test7c" runat="server" GroupName="10Test7"/>
                    <br /><asp:RadioButton ID="rd10Test7d" runat="server" GroupName="10Test7"/>
                    <div id="Câu 8" class="border_headtittle">
                    <input type="checkbox" value="Câu 8" name="cks"/>Câu 8</div> 
                    <asp:Literal ID="Literal8" runat="server" Mode="Transform"></asp:Literal>
                    <asp:Label ID="lb10Test8" runat="server" Text=""></asp:Label>                    
                    <br /><asp:Image ID="img10Test8" runat="server" /> 
                    <br /><asp:RadioButton ID="rd10Test8a" runat="server" GroupName="10Test8"/>
                    <br /><asp:RadioButton ID="rd10Test8b" runat="server" GroupName="10Test8"/>
                    <br /><asp:RadioButton ID="rd10Test8c" runat="server" GroupName="10Test8"/>
                    <br /><asp:RadioButton ID="rd10Test8d" runat="server" GroupName="10Test8"/>
                    <div id="Câu 9" class="border_headtittle">
                    <input type="checkbox" value="Câu 9" name="cks"/>Câu 9</div> 
                    <asp:Literal ID="Literal9" runat="server" Mode="Transform"></asp:Literal>
                    <asp:Label ID="lb10Test9" runat="server" Text=""></asp:Label>                    
                    <br /><asp:Image ID="img10Test9" runat="server" /> 
                    <br /><asp:RadioButton ID="rd10Test9a" runat="server" GroupName="10Test9"/>
                    <br /><asp:RadioButton ID="rd10Test9b" runat="server" GroupName="10Test9"/>
                    <br /><asp:RadioButton ID="rd10Test9c" runat="server" GroupName="10Test9"/>
                    <br /><asp:RadioButton ID="rd10Test9d" runat="server" GroupName="10Test9"/>
                    <div id="Câu 10" class="border_headtittle">
                    <input type="checkbox" value="Câu 10" name="cks"/>Câu 10</div> 
                    <div><asp:Literal ID="Literal10" runat="server" Mode="Transform"></asp:Literal>
                    </div>
                    <asp:Label ID="lb10Test10" runat="server" Text=""></asp:Label>                   
                    <br /><asp:Image ID="img10Test10" runat="server" /> 
                    <br /><asp:RadioButton ID="rd10Test10a" runat="server" GroupName="10Test10"/>
                    <br /><asp:RadioButton ID="rd10Test10b" runat="server" GroupName="10Test10"/>
                    <br /><asp:RadioButton ID="rd10Test10c" runat="server" GroupName="10Test10"/>
                    <br /><asp:RadioButton ID="rd10Test10d" runat="server" GroupName="10Test10"/>
                    <br />                 
                </td>
            </tr> 
            <tr align="center" style="padding: 0 15px;">
                <td>
                    <asp:Button ID="btn10Test" runat="server" CssClass="btn_body" Text="Hoàn thành"  OnClick="btn10Test_Click"/>
                </td>
            </tr>
        </asp:Panel>

        <%--Panel 40 câu--%>
        <asp:Panel ID="panel40Test" runat="server" >
            <tr align="left" style="padding: 0 15px;">            
                <td>
                    <asp:Label ID="lb40Test1" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test1" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test2" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test2" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test3" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test3" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test4" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test4" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test5" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test5" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList5" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test6" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test6" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList6" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test7" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test7" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList7" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test8" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test8" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList8" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test9" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test9" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList9" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test10" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test10" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList10" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test11" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test11" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList11" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test12" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test12" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList12" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test13" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test13" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList13" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test14" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test14" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList14" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test15" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test15" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList15" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test16" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test16" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList16" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test17" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test17" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList17" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test18" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test18" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList18" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test19" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test19" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList19" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test20" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test20" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList20" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <br /> 
                    <asp:Label ID="lb40Test21" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test21" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList21" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test22" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test22" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList22" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test23" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test23" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList23" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test24" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test24" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList24" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test25" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test25" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList25" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test26" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test26" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList26" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test27" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test27" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList27" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test28" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test28" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList28" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test29" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test29" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList29" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test30" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test30" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList30" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test31" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test31" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList31" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test32" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test32" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList32" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test33" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test33" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList33" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test34" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test34" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList34" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test35" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test35" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList35" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test36" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test36" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList36" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test37" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test37" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList37" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test38" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test38" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList38" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb40Test39" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test39" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList39" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>   
                    <asp:Label ID="lb40Test40" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img40Test40" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList40" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>              
                </td>
            </tr> 
            <tr align="center" style="padding: 0 15px;">
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Hoàn thành"  OnClick="btn10Test_Click"/>
                </td>
            </tr>
        </asp:Panel>

        <%--Panel 60 câu--%>
        <asp:Panel ID="panel60Test" runat="server" >
            <tr align="left" style="padding: 0 15px;">            
                <td>
                    <asp:Label ID="lb60Test1" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test1" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList41" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test2" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test2" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList42" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test3" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test3" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList43" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test4" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test4" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList44" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test5" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test5" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList45" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test6" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test6" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList46" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test7" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test7" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList47" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test8" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test8" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList48" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test9" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test9" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList49" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test10" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test10" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList50" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test11" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test11" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList51" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test12" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test12" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList52" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test13" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test13" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList53" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test14" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test14" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList54" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test15" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test15" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList55" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test16" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test16" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList56" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test17" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test17" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList57" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test18" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test18" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList58" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test19" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test19" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList59" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test20" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test20" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList60" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <br /> 
                    <asp:Label ID="lb60Test21" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test21" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList61" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test22" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test22" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList62" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test23" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test23" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList63" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test24" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test24" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList64" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test25" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test25" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList65" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test26" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test26" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList66" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test27" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test27" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList67" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test28" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test28" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList68" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test29" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test29" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList69" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test30" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test30" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList70" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test31" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test31" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList71" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test32" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test32" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList72" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test33" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test33" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList73" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test34" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test34" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList74" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test35" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test35" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList75" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test36" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test36" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList76" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test37" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test37" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList77" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test38" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test38" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList78" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test39" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test39" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList79" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>   
                    <asp:Label ID="lb60Test40" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test40" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonLis80" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>   
                    <asp:Label ID="lb60Test41" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test41" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList81" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test42" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test42" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList82" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test43" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test43" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList83" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test44" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test44" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList84" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test45" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test45" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList85" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test46" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test46" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList86" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test47" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test47" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList87" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test48" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test48" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList88" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test49" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test49" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList89" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test50" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test50" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList90" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test51" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test51" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList91" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test52" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test52" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList92" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test53" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test53" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList93" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test54" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test54" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList94" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test55" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test55" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList95" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    
                    <asp:Label ID="lb60Test56" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test56" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList96" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test57" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test57" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList97" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test58" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test58" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList98" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lb60Test59" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test59" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList99" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>     
                    <asp:Label ID="lb60Test60" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Image ID="img60Test60" runat="server" />
                    <asp:RadioButtonList ID="RadioButtonList100" runat="server">
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                        <asp:ListItem ></asp:ListItem>
                    </asp:RadioButtonList>           
                </td>
            </tr> 
            <tr align="center" style="padding: 0 15px;">
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Hoàn thành"  OnClick="btn10Test_Click"/>
                </td>
            </tr>
        </asp:Panel>
              
    </table>
</div>  
<div style="position: fixed; z-index: 100; left:0px; color:#FFFFFF; background-color: transparent; bottom: 0px;">
<table class="border_tableheadline" style ="width:102px; height:20px; position: fixed; z-index: 100; bottom:190px; " >
    <tr>
        <td>Ghi nhớ</td>
    </tr>
</table>
<table class="border_alltable" style ="width:100px; height:150px">
    <tr>
        <td>
            <div id="cks_div" class="divOnTop" style="height:150px; width:100px; overflow:scroll">
                Chưa ghi nhớ
            </div>
        </td>
    </tr>
</table>
</div>
</asp:Content>
