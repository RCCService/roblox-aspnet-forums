﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Roblox.Website.Forum
{
    public partial class ShowForum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ((RobloxMaster)Page.Master).IsBanner970px = true;
        }
    }
}