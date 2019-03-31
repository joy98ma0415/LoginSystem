<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="LoginSystem.Register" %>
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
        <table align="center" cellpadding="3" cellspacing="4" style="width: 941px; height: 195px">
            <tr>
                <td colspan="2" style="height: 65px; width: 468px">
                    <asp:Label ID="Label1" runat="server" Style="font-size: x-large" Text="UserName"></asp:Label>
                </td>
                <td style="height: 65px; width: 469px">
                    <asp:TextBox ID="TextBoxName" runat="server" Height="30px" Width="325px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 65px; width: 468px">
                    <asp:Label ID="Label2" runat="server" Style="font-size: x-large" Text="Password"></asp:Label>
                </td>
                <td style="height: 65px; width: 469px">
                    <asp:TextBox ID="TextBoxPassword" runat="server" Height="30px" TextMode="Password" Width="325px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="textAlign" style="height: 65px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="ButtonRegister" runat="server" OnClick="ButtonLogin_Click" Style="font-size: medium" Text="Register" />
                </td>
                <td class="textAlign" style="height: 65px">
                    <asp:Button ID="ButtonCancel" runat="server" OnClick="ButtonCancel_Click" Style="font-size: medium" Text="Cancel" />
                </td>
                <td class="text-right" style="height: 65px">
                    <asp:LinkButton ID="LinkButtonRegister" runat="server" CssClass="style6" PostBackUrl="~/Default.aspx" Style="font-size: medium">Login</asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>