<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toggle.aspx.cs" Inherits="iTest2012.content.toggle" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $(".flip").click(function () {
            $(".panel").slideToggle("slow");
        });
    });
</script>
 
<style type="text/css"> 
div.panel,p.flip
{
margin:0px;
padding:5px;
text-align:center;
background:#e5eecc;
border:solid 1px #c3c3c3;
}
div.panel
{
height:120px;
display:none;
}
</style>
</head>
<body>
 <p class="flip">Show/Hide Panel</p>
<div class="panel">
<p>Because time is valuable, we deliver quick and easy learning.</p>
<p>At W3Schools, you can study everything you need to learn, in an accessible and handy format.</p>
</div>
</body>
</html>
