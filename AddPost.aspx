<%@ Page Language="C#" MasterPageFile="~/Roblox.master" AutoEventWireup="true" CodeBehind="AddPost.aspx.cs" Inherits="Roblox.Website.Forum.AddPost" %>
<%@ Register TagPrefix="AspNetForums" Namespace="AspNetForums.Controls" Assembly="AspNetForums" %>
<%@ Import Namespace="AspNetForums.Components" %>
<%@ Register Src="~/UserControls/Ads/AsyncAd.ascx" TagName="AsyncAd" TagPrefix="rbx" %>

<%-- Inaccurate AddPost.aspx and Skin-Post.ascx content indentation, because I took it from a poorly done archive, and server-ified it ¯\_(ツ)_/¯ --%>

<asp:Content ContentPlaceHolderID="cphRoblox" runat="server">
<table width="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
<td></td>
</tr>
<tr valign="bottom">
<td>
<table width="100%" height="100%" cellspacing="0" cellpadding="0" border="0">
<tr valign="top">
<!-- left column -->
<td>&nbsp; &nbsp; &nbsp;</td>
<!-- center column -->
<td id="CenterColumn" Width="95%" runat="server" class="CenterColumn">
<br>
<AspNetForums:NavigationMenu id="Navigationmenu1" runat="server" />
<AspNetForums:CreateEditPost runat="server" ID="Createeditpost1" NAME="Createeditpost1" />
</td>
<td class="CenterColumn">&nbsp;&nbsp;&nbsp;</td>
<!-- right margin -->
<td class="RightColumn">&nbsp;&nbsp;&nbsp;</td>
</tr>
</table>
</td>
</tr>
</table>
</asp:Content>

<asp:Content ContentPlaceHolderID="cphBannerAd" runat="server">
<div id="AdvertisingLeaderboard" >
    <rbx:AsyncAd ID="ForumsBanner" runat="server" />
</div>
</asp:Content>