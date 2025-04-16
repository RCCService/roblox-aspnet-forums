<%@ Page Title="ROBLOX Forum" Language="C#" MasterPageFile="~/Roblox.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Roblox.Website.Forum.Default" %>
<%@ Import Namespace="AspNetForums.Components" %>
<%@ Register TagPrefix="AspNetForumsSearch" Namespace="AspNetForums.Controls.Search" Assembly="AspNetForums" %>
<%@ Register TagPrefix="AspNetForums" Namespace="AspNetForums.Controls" Assembly="AspNetForums" %>
<%@ Register Src="~/UserControls/Ads/AsyncAd.ascx" TagName="AsyncAd" TagPrefix="rbx" %>

<asp:Content ContentPlaceHolderID="cphRoblox" runat="server">

	<table width="100%" height="100%" cellspacing="0" cellpadding="0" border="0">
		<tr valign="top">
			
            <!-- left column -->
			<td class="LeftColumn">&nbsp;&nbsp;&nbsp;</td>
			
            <!-- center column -->
			<td id="CenterColumn" Width="95%" runat="server" class="CenterColumn">
				<br>
            	<AspNetForums:NavigationMenu id="NavigationMenu2" runat="server" />
				<br>
				<table Cellpadding="0" Cellspacing="2" width="100%">
					<Tr>
						<td align="left">
							<AspNetForums:CurrentTime runat="server" id="CurrentTime1" />
						</td>
						<td align="right">
						    <AspNetForumsSearch:SearchRedirect runat="server" id="SearchRedirect" />
							
						</td>
					</Tr>
				</table>
                <div style="height:7px;"></div>
				<AspNetForums:ForumGroupRepeater runat="server" id="ForumGroupRepeater1"></AspNetForums:ForumGroupRepeater>
				<P></P>
			</td>

			<td class="CenterColumn">&nbsp;&nbsp;&nbsp;</td>
			
            <!-- right column -->
			<td id="RightColumn" nowrap Width="160" runat="server" class="RightColumn" style="padding-top:88px;">
			    <rbx:AsyncAd ID="ForumsSkyscraper" runat="server" />
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