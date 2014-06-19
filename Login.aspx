<%@ Page Title="Login" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Login ID="Login1" runat="server" 
        CreateUserText="Sign Up for Member Rewards" CreateUserUrl="~/CreateUser.aspx" 
        DestinationPageUrl="~/Members/RewardsMembers.aspx">
    </asp:Login>
</asp:Content>

