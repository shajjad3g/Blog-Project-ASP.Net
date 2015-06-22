<%@ Page Language="C#" AutoEventWireup="true" CodeFile="richtexteditor.aspx.cs" Inherits="_Default" ValidateRequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Red Coders Blog</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="tiny_mce/tiny_mce.js"></script>
    <script type="text/javascript" language="javascript">
        tinyMCE.init({
            // General options
            mode: "textareas",
            theme: "advanced",
            plugins: "pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups",

        });
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 59px;
        }
    </style>
</head>
<body>

    <div id="container_wrapper1">
        <div id="container_wrapper2">
            <div id="container">
                <div id="header">
                    <div id="logo">
                    </div>
                </div>
                <div id="menu">
                    <ul>
                        <li><a href="index.aspx" class="current">Home</a></li>
                        <li><a href="richtexteditor.aspx">Blog</a></li>
                        <li><a href="#">Photo Gallery</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                <div id="content">

                    <form id="form1" runat="server">
                        <table align="center">
                            <tr>
                                <td align="center" colspan="2">
                                    <h1>Red Coders</h1>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Post Title : </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top" class="auto-style1">Body :
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Tags :
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="left">
                                    <asp:Button ID="Button1" runat="server" Text="Post" />
                                    <asp:Button ID="Button2" runat="server" Text="Clear" />
                                </td>
                            </tr>
                        </table>
                    </form>

            </div><%--end content--%>

            <div id="bottom"></div>
            <div id="footer">
                <a href="#">Home</a> | <a href="#">FAQs</a> | <a href="#">Terms of Use</a> | <a href="#">Privacy Policy</a> | <a href="#">Contact Us</a>
                <br />
                Copyright © 2008 | Designed & Developed by <a href="http://www.redcoders.com">redcoders.com</a>
            </div>
        </div>
    </div>
</div>
<div id="footer-copyright">Developed By RedCoders</div>

</body>
</html>
