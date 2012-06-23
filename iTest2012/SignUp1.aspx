<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="SignUp1.aspx.cs" Inherits="iTest2012.SignUp1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="center">
        <br />
        <asp:Image ID="Image_AddUser_Icon" runat="server" ImageUrl="~/image/icon/add-user-icon.jpg" />
        <br />        
        <table class="border_tableheadline">
            <tr >
                <td align="center">
                    ĐĂNG KÝ
                </td>
            </tr>
        </table>
        <table class="border_alltable" style=" width: 800px">
            <tr align="left">
                <td colspan="2" class="border_headtittle" >
                Thông tin cần thiết
                </td>
            </tr>
            <tr align="left" >
            <td colspan="2" class="td_style_Nowid">
            <span style="color: Red">*&nbsp;</span> <span style="color:#999999; font-size:smaller">Là thông tin bắt buộc điền đầy đủ.</span>
            </td>
            </tr>
            <tr align="left" >
                <td class="td_style_wid">
                    Tên đăng nhập :<br />
                    <br />
                </td>
                <td class="td_style_Nowid">
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="boder_textbox" Width="200px" BackColor="White"></asp:TextBox>
                    <span style="color: Red">&nbsp;*&nbsp;</span> <span style="color: Gray">Tên đăng nhập từ 6-12 ký tự</span>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="6-12 ký tự"
                        ControlToValidate="txtUsername" ValidationExpression=".{6,12}" ForeColor="Red"></asp:RegularExpressionValidator>
                    &nbsp;<br />
                    <asp:Label ID="labUser" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr align="left" >
                <td class="td_style_wid">
                    Mật khẩu :<br />
                    <br />
                </td>
                <td class="td_style_Nowid">
                    <asp:TextBox ID="txtPass" runat="server" Width="200px" CssClass="boder_textbox" TextMode="Password" BackColor="White"></asp:TextBox>
                    <span style="color: Red">&nbsp;*&nbsp;</span> <span style="color: Gray">Mật khẩu từ 6-20 ký tự, phân biệt hoa thường</span>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="6-20 ký tự"
                        ControlToValidate="txtPass" ValidationExpression=".{6,20}" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr align="left" >
                <td class="td_style_wid">
                    Nhập lại mật khẩu :<br />
                    <br />
                </td>
                <td class="td_style_Nowid">
                    <asp:TextBox ID="txtReEnterPass" runat="server" CssClass="boder_textbox" Width="200px" TextMode="Password"
                        BackColor="White"></asp:TextBox>
                    <span style="color: Red">&nbsp;*&nbsp;</span>
                    <asp:Label ID="labRePass" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr align="left">
                <td class="td_style_wid">
                    Email :<br />
                    <br />
                </td>
                <td class="td_style_Nowid">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="boder_textbox" Width="200px" BackColor="White"></asp:TextBox>
                    <span style="color: Red">&nbsp;*&nbsp;</span> <span style="color: Gray">Nhập E-mail của
                        bạn.</span>
                    <br />
                    <asp:Label ID="labEmail" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr align="left">
                <td class="td_style_wid">
                    Ngày sinh :</td>
                <td class="td_style_Nowid">
                    Ngày
                    <asp:DropDownList ID="ddlNgay" CssClass="boder_textbox" Width="50px" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;Tháng
                    <asp:DropDownList ID="ddlThang" CssClass="boder_textbox" Width="50px" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;Năm
                    <asp:DropDownList ID="ddlNam" CssClass="boder_textbox" Width="50px" runat="server">
                        <asp:ListItem>1900</asp:ListItem>
                        <asp:ListItem>1901</asp:ListItem>
                        <asp:ListItem>1902</asp:ListItem>
                        <asp:ListItem>1903</asp:ListItem>
                        <asp:ListItem>1904</asp:ListItem>
                        <asp:ListItem>1905</asp:ListItem>
                        <asp:ListItem>1906</asp:ListItem>
                        <asp:ListItem>1907</asp:ListItem>
                        <asp:ListItem>1908</asp:ListItem>
                        <asp:ListItem>1909</asp:ListItem>
                        <asp:ListItem>1910</asp:ListItem>                        
                        <asp:ListItem>1911</asp:ListItem>
                        <asp:ListItem>1912</asp:ListItem>
                        <asp:ListItem>1913</asp:ListItem>
                        <asp:ListItem>1914</asp:ListItem>
                        <asp:ListItem>1915</asp:ListItem>
                        <asp:ListItem>1916</asp:ListItem>
                        <asp:ListItem>1917</asp:ListItem>
                        <asp:ListItem>1918</asp:ListItem>
                        <asp:ListItem>1919</asp:ListItem>
                        <asp:ListItem>1920</asp:ListItem>
                        <asp:ListItem>1921</asp:ListItem>
                        <asp:ListItem>1922</asp:ListItem>
                        <asp:ListItem>1923</asp:ListItem>
                        <asp:ListItem>1924</asp:ListItem>
                        <asp:ListItem>1925</asp:ListItem>
                        <asp:ListItem>1926</asp:ListItem>
                        <asp:ListItem>1927</asp:ListItem>
                        <asp:ListItem>1928</asp:ListItem>
                        <asp:ListItem>1929</asp:ListItem>
                        <asp:ListItem>1930</asp:ListItem>
                        <asp:ListItem>1931</asp:ListItem>
                        <asp:ListItem>1932</asp:ListItem>
                        <asp:ListItem>1933</asp:ListItem>
                        <asp:ListItem>1934</asp:ListItem>
                        <asp:ListItem>1935</asp:ListItem>
                        <asp:ListItem>1936</asp:ListItem>
                        <asp:ListItem>1937</asp:ListItem>
                        <asp:ListItem>1938</asp:ListItem>
                        <asp:ListItem>1939</asp:ListItem>
                        <asp:ListItem>1940</asp:ListItem>
                        <asp:ListItem>1941</asp:ListItem>
                        <asp:ListItem>1942</asp:ListItem>
                        <asp:ListItem>1943</asp:ListItem>
                        <asp:ListItem>1944</asp:ListItem>
                        <asp:ListItem>1945</asp:ListItem>
                        <asp:ListItem>1946</asp:ListItem>
                        <asp:ListItem>1947</asp:ListItem>
                        <asp:ListItem>1948</asp:ListItem>
                        <asp:ListItem>1949</asp:ListItem>
                        <asp:ListItem>1950</asp:ListItem>
                        <asp:ListItem>1951</asp:ListItem>
                        <asp:ListItem>1952</asp:ListItem>
                        <asp:ListItem>1953</asp:ListItem>
                        <asp:ListItem>1954</asp:ListItem>
                        <asp:ListItem>1955</asp:ListItem>
                        <asp:ListItem>1956</asp:ListItem>
                        <asp:ListItem>1957</asp:ListItem>
                        <asp:ListItem>1958</asp:ListItem>
                        <asp:ListItem>1959</asp:ListItem>
                        <asp:ListItem>1960</asp:ListItem>
                        <asp:ListItem>1961</asp:ListItem>
                        <asp:ListItem>1962</asp:ListItem>
                        <asp:ListItem>1963</asp:ListItem>
                        <asp:ListItem>1964</asp:ListItem>
                        <asp:ListItem>1965</asp:ListItem>
                        <asp:ListItem>1966</asp:ListItem>
                        <asp:ListItem>1967</asp:ListItem>
                        <asp:ListItem>1968</asp:ListItem>
                        <asp:ListItem>1969</asp:ListItem>
                        <asp:ListItem>1970</asp:ListItem>
                        <asp:ListItem>1971</asp:ListItem>
                        <asp:ListItem>1972</asp:ListItem>
                        <asp:ListItem>1973</asp:ListItem>
                        <asp:ListItem>1974</asp:ListItem>
                        <asp:ListItem>1975</asp:ListItem>
                        <asp:ListItem>1976</asp:ListItem>
                        <asp:ListItem>1977</asp:ListItem>
                        <asp:ListItem>1978</asp:ListItem>
                        <asp:ListItem>1979</asp:ListItem>
                        <asp:ListItem>1980</asp:ListItem>
                        <asp:ListItem>1981</asp:ListItem>
                        <asp:ListItem>1982</asp:ListItem>
                        <asp:ListItem>1983</asp:ListItem>
                        <asp:ListItem>1984</asp:ListItem>
                        <asp:ListItem>1985</asp:ListItem>
                        <asp:ListItem>1986</asp:ListItem>
                        <asp:ListItem>1987</asp:ListItem>
                        <asp:ListItem>1988</asp:ListItem>
                        <asp:ListItem>1989</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                        <asp:ListItem>1995</asp:ListItem>
                        <asp:ListItem>1996</asp:ListItem>
                        <asp:ListItem>1997</asp:ListItem>
                        <asp:ListItem>1998</asp:ListItem>
                        <asp:ListItem>1999</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>2001</asp:ListItem>
                        <asp:ListItem>2002</asp:ListItem>
                        <asp:ListItem>2003</asp:ListItem>
                        <asp:ListItem>2004</asp:ListItem>
                        <asp:ListItem>2005</asp:ListItem>
                        <asp:ListItem>2006</asp:ListItem>
                        <asp:ListItem>2007</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr align="left">
                <td class="td_style_wid">
                    Câu hỏi bí mật :<br />
                    <br />
                </td>
                <td class="td_style_Nowid">
                    <asp:DropDownList ID="dropCauHoiBiMat" runat="server" Width="400px" CssClass="boder_textbox">
                        <asp:ListItem Value="-1">--- Chọn câu hỏi bí mật ---</asp:ListItem>
                        <asp:ListItem Value="1">Tên nhạc sĩ bạn yêu thích ?</asp:ListItem>
                        <asp:ListItem Value="2">Tên trường tiểu học của bạn là gì ?</asp:ListItem>
                        <asp:ListItem Value="3">Con vật cưng đầu tiên của bạn tên gì?</asp:ListItem>
                        <asp:ListItem Value="4">Bạn thích môn học nào?</asp:ListItem>
                        <asp:ListItem Value="5">Món khoái khẩu của bạn lúc nhỏ là gì ?</asp:ListItem>
                    </asp:DropDownList>
                    <span style="color: Red">&nbsp;*&nbsp;</span>
                    <asp:Label ID="lbdrop" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr align="left" >
                <td class="td_style_wid">
                    Câu trả lời :<br />
                    <br />
                </td>
            
                <td class="td_style_Nowid">
                    <asp:TextBox ID="txtAnswer" runat="server" CssClass="boder_textbox" Width="400px" BackColor="White"></asp:TextBox>
                    <span style="color: Red">&nbsp;*&nbsp;</span>
                    <br />
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>            
            <tr align="left">
                <td colspan="2" class="border_headtittle" >
                Điều khoản sử dụng iTest :
                </td>
            </tr>
            <tr align="left">
                <td colspan="2" class="td_style_Nowid">                   
                    <%--<asp:Panel runat="server" BackColor="#F3F3F3" BorderStyle="Solid" 
                        BorderWidth="1px">
                     ákhgls<br />ákhgls<br />ákhgls<br />ákhgls<br />ákhgls<br />ákhgls<br />ákhgls<br />
                    
                    </asp:Panel >--%>
                    <div class="div_formular">
                    <p><b>Chào mừng bạn đến với iTest</b></p>
                    <p style="color:Red">Bạn phải đồng ý với các điều khoản sau để tham gia vào iTest :</p>
                    <strong>Điều 1. Nội qui thành viên :</strong>
                    <br />
                    - Tên đăng nhập không được lấy tên các vị lãnh tụ, có liên vấn đề chính trị, hoặc những tên gây phản cảm.
                    <br />
                    - Tên đăng nhập không chứa các ký tự đặc biệt như : <b>[ * ¤ ° ´ ¯ )]</b>
                    <br />
                    <strong>Điều 2 :</strong>
                    <br />
                    <br />
                    <strong>Điều 3 :</strong>
                    <br />
                    <br />
                    <strong>Những qui định khác :</strong>
                    <br />
                    <br />
                    </div>
                </td>
            </tr>
            <tr align="left">                
                <td colspan="2" >
                    <asp:CheckBox ID="chk_DongY" runat="server" Text="Tôi đã đọc và đồng ý với các điều khoản của iTest." />
                </td>
            </tr>
            <tr class="border_headtittle">
                <td colspan="2" align="right" class="td_style_Nowid" >
                    <asp:Button ID="btnSignUp" runat="server" OnClick="btnSignUp_Click" CssClass="btn_body" Text="Đăng ký"  />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnReEnter" runat="server" CssClass="btn_body" Text="Nhập lại" onclick="btnReEnter_Click" />
                 </td>
            </tr>
            <tr>
            <td colspan="2" align="right" class="td_style_Nowid">   
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LogIn.aspx">Bạn đã có tài khoản? Mời đăng nhập.</asp:HyperLink>
                    
            </td>
            </tr>
        </table>
    </div>
    <br />
    <br />
</asp:Content>
