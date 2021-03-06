﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Password Generator.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Automatic Password Generator</h1>
        <p>Having a hard time thinking up a unique password? Enter the information below to generate possible passwords.</p>
        <p>
            &nbsp;<asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="textBoxLastName" runat="server" OnTextChanged="textBoxLastName_TextChanged" style="margin-left: 0px" Width="183px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="textBoxLastName" ErrorMessage="Last name is required"></asp:RequiredFieldValidator>
        </p></div>
        <p>
            &nbsp;<asp:Label ID="lblBirthYear" runat="server" Text="Birth Year"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="textBoxBirthYear" runat="server" OnTextChanged="textBoxBirthYear_TextChanged" style="margin-bottom: 0px" width="191px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revBirthYear" runat="server" ControlToValidate="textBoxBirthYear" ErrorMessage="Four digit birth year is required" ValidationExpression="\d{4}"></asp:RegularExpressionValidator>
&nbsp;</p>
        <p>
            &nbsp;<asp:Label ID="lblFavoriteColor" runat="server" Text="Favorite Color"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="textBoxFavoriteColor" runat="server" OnTextChanged="textBoxFavoriteColor_TextChanged" width="191px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFavoriteColor" runat="server" ControlToValidate="textBoxFavoriteColor" ErrorMessage="Favorite color is required"></asp:RequiredFieldValidator>
        </p>
        <asp:Button ID="btnSuggestPwds" runat="server" OnClick="btnSuggestPwds_Click" Text="Suggest Passwords &gt;&gt;&gt;" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="16px" Width="176px">
        </asp:DropDownList>
        <asp:ValidationSummary ID="vsPasswordGeneratorPage" runat="server" Height="55px" />
    </form>
</body>
</html>
