<%@ Page Language="C#" MasterPageFile="~/Roblox.master" AutoEventWireup="true" CodeBehind="ShowForumGroup.aspx.cs" Inherits="Roblox.Website.Forum.ShowForumGroup" %>
<%@ Register TagPrefix="AspNetForums" Namespace="AspNetForums.Controls" Assembly="AspNetForums" %>
<%@ Import Namespace="AspNetForums.Components" %>
<%@ Register Src="~/UserControls/Ads/AsyncAd.ascx" TagName="AsyncAd" TagPrefix="rbx" %>

<asp:Content ContentPlaceHolderID="cphRoblox" runat="server">

	<table width="100%" height="100%" cellspacing="0" cellpadding="0" border="0">
		<tr valign="top">
            <!-- left column -->
			<td>&nbsp;&nbsp;&nbsp;</td>
			
            <!-- center column -->
			<td id="CenterColumn" width="95%" runat="server" class="CenterColumn">
				<br>
				<AspNetForums:PostView runat="server" id="PostView1" />
			</td>

			<td>&nbsp;&nbsp;&nbsp;</td>
			
            <!-- right column -->
			<td id="RightColumn" nowrap="nowrap" width="160" runat="server" class="RightColumn">
				
                <div style="height:138px;">&nbsp;</div>
			    <div class="roblox-skyscraper" style="height:620px;margin-top:10px;"><rbx:AsyncAd ID="ForumsSkyscraper" runat="server" /></div>
			</td>

            <td>&nbsp;&nbsp;&nbsp;</td>
		</tr>
	</table>
    
    <script type="text/javascript">
        var users = [];

        $(".primaryGroupInfo").each(function (index, element) {
            var name = $(element).attr("username");
            if ($.inArray(name, users) == -1)
                users.push(name);
        });

        $.getJSON("/Groups/GetPrimaryGroupInfo.ashx", { "users": users.toString() }, function (data) {
            if (data != null) {
                for (var i = 0; i < users.length; i++) {
                    var username = users[i];
                    var groupInfo = data[username];
                    if (groupInfo != null) {
                        $("span[username='" + username + "']").each(function (i, e) {
                            var groupLink = $("<a href='/Groups/Group.aspx?gid=" + groupInfo.GroupId + "' title='" + groupInfo.GroupName + "'>" + fitStringToWidthSafe(groupInfo.GroupName, 120) + "</a>");
                            $(e).append(groupLink);
                            $(e).show();
                        });
                    }
                }
            }
        });
    </script>
    
	<script type="text/javascript">
	    $(window).load(function () {
	        var skyscraper = $(".roblox-skyscraper").first();
	        var numAds = $("#Body").height() / skyscraper.height();
	        for (var i = 2; i < numAds; i++) {
	            skyscraper.clone().appendTo("#<%= RightColumn.ClientID %>");
	        }
	    });
	</script>
	
</asp:Content>

<asp:Content ContentPlaceHolderID="cphBannerAd" runat="server">
<div id="AdvertisingLeaderboard" >
    <rbx:AsyncAd ID="ForumsBanner" runat="server" />
</div>
</asp:Content>