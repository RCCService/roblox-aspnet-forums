<%@ Page Language="C#" MasterPageFile="~/Roblox.master" AutoEventWireup="true" CodeBehind="ShowForum.aspx.cs" Inherits="Roblox.Website.Forum.ShowForum" %>
<%@ Import Namespace="AspNetForums.Components" %>
<%@ Register TagPrefix="AspNetForums" Namespace="AspNetForums.Controls" Assembly="AspNetForums" %>
<%@ Register Src="~/UserControls/Ads/AsyncAd.ascx" TagName="AsyncAd" TagPrefix="rbx" %>

<asp:Content ContentPlaceHolderID="cphRoblox" runat="server">

	<table width="100%" height="100%" cellspacing="0" cellpadding="0" border="0">
		<tr valign="top">
			<!-- left column -->
			<td class="LeftColumn">&nbsp;&nbsp;&nbsp;</td>

			<!-- center column -->
			<td id="CenterColumn" runat="server" class="CenterColumn">
				<br>
				<AspNetForums:ThreadView runat="server" id="ThreadView1" />
			</td>

			<td class="CenterColumn">&nbsp;&nbsp;&nbsp;</td>	
            
            <!-- right column -->
            <td Width="160px" style="padding-top:88px;">
                <rbx:AsyncAd ID="ForumsSkyscraper" runat="server" Visible="false" />
            </td>
            <td class="RightColumn">&nbsp;&nbsp;&nbsp;</td>
		</tr>
	</table>
    
</asp:Content>

<asp:Content ContentPlaceHolderID="cphBannerAd" runat="server">
<div id="AdvertisingLeaderboard" >
    <rbx:AsyncAd ID="ForumsBanner" runat="server" />
</div>
</asp:Content>