<%@ Page Title="Create User" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="CreateUser.aspx.vb" Inherits="CreateUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
    ContinueDestinationPageUrl="~/Members/RewardsMembers.aspx">
    <WizardSteps>
        <asp:CreateUserWizardStep runat="server" />
        <asp:CompleteWizardStep runat="server" />
    </WizardSteps>
</asp:CreateUserWizard>
</asp:Content>

