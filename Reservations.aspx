<%@ Page Title="Reservations" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Reservations.aspx.vb" Inherits="Reservations" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 150px;
        }
        .style2
        {
            width: 176px;
        }
    .style3
    {
        width: 150px;
        height: 26px;
    }
    .style4
    {
        width: 176px;
        height: 26px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <div>
        <table style="width: 37%; height: 675px;">
            <tr>
                <td align="right" class="style1">
                    Room:</td>
                <td class="style2">
                    <asp:DropDownList ID="ddRoom" runat="server" DataSourceID="SqlDataSource2" 
                        DataTextField="Room" DataValueField="Room" Width="175px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Cottage6 %>" 
                        SelectCommand="SELECT [Room] FROM [Rooms]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td align="right" class="style1">
                    Name:</td>
                <td class="style2">
                    <asp:TextBox ID="txtBxName" runat="server" Width="175px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style1">
                    Phone Number:</td>
                <td class="style2">
                    <asp:TextBox ID="txtBxPhone" runat="server" Width="175px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style1">
                    Credit Card Type:</td>
                <td class="style2">
                    <asp:TextBox ID="txtBxCardType" runat="server" Width="175px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style1">
                    Credit Card Number:</td>
                <td class="style2">
                    <asp:TextBox ID="txtBxCardNumber" runat="server" Width="175px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style1">
                    Expiration Date:</td>
                <td class="style2">
                    <asp:Calendar ID="CalExpiration" runat="server"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td align="right" class="style1">
                    Arrival Date:</td>
                <td class="style2">
                    <asp:Calendar ID="CalArrival" runat="server"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    Departure Date:</td>
                <td class="style4">
                    <asp:Calendar ID="CalDeparture" runat="server"></asp:Calendar>
                </td>
            </tr>
            <tr>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Cottage6 %>" 
                
                SelectCommand="SELECT [Guest], [Room], [Arrival], [Departure], [CreditCardNumber], [Card] FROM [Reservations]" 
                DeleteCommand="DELETE FROM [Reservations] WHERE [Guest] = @Guest AND [Arrival] = @Arrival" 
                InsertCommand="INSERT INTO [Reservations] ([Guest], [Room], [Arrival], [Departure], [CreditCardNumber], [Card]) VALUES (@Guest, @Room, @Arrival, @Departure, @CreditCardNumber, @Card)" 
                UpdateCommand="UPDATE [Reservations] SET [Room] = @Room, [Departure] = @Departure, [CreditCardNumber] = @CreditCardNumber, [Card] = @Card WHERE [Guest] = @Guest AND [Arrival] = @Arrival">
                
                <DeleteParameters>
                    <asp:Parameter Name="Guest" Type="String" />
                    <asp:Parameter Name="Arrival" Type="DateTime" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtBxName" Name="Guest" PropertyName="Text" 
                        Type="String" />
                    <asp:ControlParameter ControlID="ddRoom" Name="Room" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="CalArrival" Name="Arrival" 
                        PropertyName="SelectedDate" Type="DateTime" />
                    <asp:ControlParameter ControlID="CalDeparture" Name="Departure" 
                        PropertyName="SelectedDate" Type="DateTime" />
                    <asp:ControlParameter ControlID="txtBxCardNumber" Name="CreditCardNumber" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtBxCardType" Name="Card" PropertyName="Text" 
                        Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Room" Type="String" />
                    <asp:Parameter Name="Departure" Type="DateTime" />
                    <asp:Parameter Name="CreditCardNumber" Type="String" />
                    <asp:Parameter Name="Card" Type="String" />
                    <asp:Parameter Name="Guest" Type="String" />
                    <asp:Parameter Name="Arrival" Type="DateTime" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </tr>
        </table>
    </div>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Make Reservation" />
    </div>
</asp:Content>

