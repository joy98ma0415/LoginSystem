<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="LoginSystem.ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function getWidth() {
            var intViewportWidth = window.innerWidth;
            var w = window.innerWidth;
            var h = window.innerHeight;
            var ow = window.outerWidth; //including toolbars and status bar etc.
            var oh = window.outerHeight;
            if (window.matchMedia("(min-width: 400px)").matches) {
                /* the viewport is at least 400 pixels wide */
            }
            else {
                /* the viewport is less than 400 pixels wide */
            }
            if (self.innerWidth) {
                return self.innerWidth;
            }
            if (document.documentElement && document.documentElement.clientWidth) {
                return document.documentElement.clientWidth;
            }
            if (document.body) {
                return document.body.clientWidth;
            }
        }
    </script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script type="text/javascript">
        $(function () {
            // See if this is a touch device
            if ('ontouchstart' in window) {
                // Set the correct body class
                $('body').removeClass('no-touch').addClass('touch');

                // Add the touch toggle to show text
                $('div.boxInner img').click(function () {
                    $(this).closest('.boxInner').toggleClass('touchFocus');
                });
            }
        });
    </script>

    <asp:Table ID="Table1" runat="server" Height="85" BackColor="Plum"></asp:Table>
    <div>
        <h1 class="textAlign" style="color: #00CC00">Login System Using ASP.NET</h1>
    </div>
    <div>
        <table align="center" style="width: 80%">
            <tr>
                <td style="height: 45px">&nbsp;</td>
                <td style="height: 45px">
                    <asp:Label ID="LabelPassword0" runat="server" Text="帳號：" CssClass="style6"></asp:Label>
                </td>
                <td style="height: 45px" colspan="2">
                    <asp:TextBox ID="TextBoxName" runat="server" Width="175px"></asp:TextBox>
                    <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*必填"></asp:Label>
                </td>
                <td style="height: 45px">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 45px"></td>
                <td style="height: 45px">
                    <asp:Label ID="LabelPassword" runat="server" Text="密碼：" CssClass="style6"></asp:Label>
                </td>
                <td style="height: 45px" colspan="2">
                    <asp:TextBox ID="TextBoxPassword" runat="server" Width="175px" TextMode="Password"></asp:TextBox>
                    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*必填"></asp:Label>
                </td>
                <td style="height: 45px"></td>
            </tr>
            <tr>
                <td style="height: 45px"></td>
                <td style="height: 45px">
                    <asp:Label ID="LabelChangePassword" runat="server" Text="更改密碼：" CssClass="style6"></asp:Label>
                </td>
                <td style="height: 45px" colspan="2">
                    <asp:TextBox ID="TextBoxChangePassword" runat="server" Width="175px" TextMode="Password"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*必填"></asp:Label>
                </td>
                <td style="height: 45px"></td>
            </tr>
            <tr>
                <td style="height: 45px">&nbsp;</td>
                <td style="height: 45px">
                    <asp:Label ID="LabelConfirmPassword0" runat="server" Text="確認密碼：" CssClass="style6"></asp:Label>
                </td>
                <td style="height: 45px" colspan="2">
                    <asp:TextBox ID="TextBoxConfirmPassword" runat="server" Width="175px" TextMode="Password"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*請再輸入一次新的密碼"></asp:Label>
                </td>
                <td style="height: 45px">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 45px">&nbsp;</td>
                <td style="height: 45px" class="text-left">
                    <asp:Label ID="LabelMsg" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td style="height: 45px" class="textAlign">
                    <asp:Button ID="ButtonChagePassword" runat="server" OnClick="ButtonChagePassword_Click" Text="Update" style="font-size: medium" />
                </td>
                <td style="height: 45px" class="textAlign">
                    <asp:Button ID="ButtonBack" runat="server" OnClick="ButtonBack_Click" Text="Back" style="font-size: medium" />
                </td>
                <td style="height: 45px">&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>