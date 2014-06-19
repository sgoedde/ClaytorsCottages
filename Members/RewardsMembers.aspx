<%@ Page Title="Rewards Members" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="RewardsMembers.aspx.vb" Inherits="RewardsMembers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: large;
        }
        .style2
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        <p class="style2">
            <strong>Come Enjoy the Fall Season With Us!</strong></p>
            <p style="padding: 15px 50px 8px 8px; width: 250px; float: right; border-top-width: 15px; border-right-width: 30px; height: 225px; margin-left: 9px;" 
            class="style1">Come enjoy the fall colors of Minnesota's beautiful north shore.  Guests will enjoy evening wine and cheese events.</p>
        <p>
            <img alt="" src="../Images/wi_fall2010b.jpg" 
                style="height: 428px; width: 579px; padding-left: 5px;" /></p>
        <br />
        <br />
    </div>
    <div>
        <asp:LoginStatus ID="LoginStatus1" runat="server" 
            LogoutPageUrl="~/Login.aspx" LogoutAction="Redirect" />
    </div>
</asp:Content>

