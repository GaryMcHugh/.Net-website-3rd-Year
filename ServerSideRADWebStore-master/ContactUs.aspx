<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">

        .style12
        {
            width: 283px;
        }
        .style4
        {
            width: 91px;
            height: 29px;
        }
        .style5
        {
            height: 29px;
            width: 283px;
        }
        .style13
        {
            height: 21px;
            width: 283px;
        }
        .style6
        {
            height: 21px;
        }
        .style10
        {
            height: 37px;
        }
        .style11
        {
            height: 37px;
            width: 91px;
        }
        .style14
        {
            height: 38px;
            width: 148px;
        }
        .style15
        {
            background-color: #FFFFFF;
            height: 38px;
        }
        .style16
        {
            width: 283px;
            height: 38px;
        }
        .style17
        {
            height: 22px;
            width: 148px;
        }
        .style18
        {
            height: 22px;
            width: 91px;
            background-color: #FFFFFF;
        }
        .style19
        {
            height: 22px;
            width: 283px;
        }
        .style20
        {
            width: 91px;
            background-color: #FFFFFF;
        }
        .style21
        {
            width: 148px;
        }
        .style22
        {
            height: 21px;
            width: 91px;
        }
        .style23
        {
            background-color: #FFFFFF;
            height: 38px;
            width: 91px;
        }
        .style24
    {
        text-decoration: underline;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="main">
            
            If you have any queries feel free to contact us by <strong>Phone</strong> or by
            <strong>E-mail</strong> and we will get back to you as soon as possible.<br />
        <br />Our <strong>Phone No</strong>. is: 091-123456<br />
        <br />Our <strong>E-mail</strong> is: <a href="mailto:GroceryStore@gmail.com">GroceryStore@gmail.com</a><br />
            <br />
        <br />
        <br />
        <table class="style2">
            <tr>
                <td class="style14">
                    <asp:Label ID="lblCategory" runat="server" 
                        style="font-weight: 700; font-size: small" Text="Category Of Concern:"></asp:Label>
                    </td>
                <td class="style23">
                    <asp:TextBox ID="txtProduct" runat="server"></asp:TextBox>
                </td>
                <td class="style15">
                    <asp:CustomValidator ID="cvProduct" runat="server" 
                        ControlToValidate="txtProduct" Display="Dynamic" 
                        ErrorMessage="Product must be in database" 
                        onservervalidate="valPoduct_ServerValidate" ForeColor="Red"></asp:CustomValidator>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtProduct" Display="Dynamic" 
                        ErrorMessage="Product is required" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="style14">
                    <span class="style24"><strong>N</strong></span><strong>ame:</strong></td>
                <td class="style23">
                    <asp:TextBox ID="txtName" runat="server" AccessKey="n"></asp:TextBox>
                </td>
                <td class="style16">
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" 
                            ControlToValidate="txtName" EnableTheming="True" 
                            ErrorMessage="Name Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style21">
                    <asp:Label ID="lblAge" runat="server" Text="Age:" style="font-weight: 700"></asp:Label>
                    </td>
                <td class="style20">
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                </td>
                <td class="style12" style="margin-left: 40px">
                    <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="txtAge" 
                            CultureInvariantValues="True" Display="Dynamic" 
                            ErrorMessage="Age Between 18 - 99" ForeColor="Red" MaximumValue="99" 
                            MinimumValue="18"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="rfAge" runat="server" 
                            ControlToValidate="txtAge" Display="Dynamic" ErrorMessage="Age Is Required" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style21">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:" style="font-weight: 700"></asp:Label>
                    </td>
                <td class="style20">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td class="style12">
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                            ControlToValidate="txtEmail" Display="Dynamic" EnableTheming="True" 
                            ErrorMessage="Email Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reEmail" runat="server" 
                            ControlToValidate="txtEmail" Display="Dynamic" 
                            ErrorMessage="Invalid Email(e.g john@example.com)" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style21">
                    <asp:Label ID="lblConfirmEmail" runat="server" Text="Confirm Email:" 
                        style="font-weight: 700"></asp:Label>
                    </td>
                <td class="style4">
                    <asp:TextBox ID="txtEmailConfirm" runat="server"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="rfvEmailConfirm" runat="server" 
                            ControlToValidate="txtEmailConfirm" Display="Dynamic" EnableTheming="True" 
                            ErrorMessage="Confirm Email" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reEmailConfirm" runat="server" 
                            ControlToValidate="txtEmailConfirm" Display="Dynamic" 
                            ErrorMessage="Invalid Email(e.g john@example.com)" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:CompareValidator ID="cvEmail" runat="server" ControlToCompare="txtEmail" 
                        ControlToValidate="txtEmailConfirm" Display="Dynamic" 
                        ErrorMessage="Email Must Match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style21">
                    <asp:Label ID="lblMobile" runat="server" Text="Mobile:" 
                        style="font-weight: 700"></asp:Label>
                    </td>
                <td class="style20">
                    <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                </td>
                <td class="style12">
                    <asp:RequiredFieldValidator ID="rfvMobile" runat="server" 
                            ControlToValidate="txtMobile" Display="Dynamic" 
                            ErrorMessage="Mobile Number is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reMobile" runat="server" 
                            ControlToValidate="txtMobile" 
                            ErrorMessage="Invalid Mobile Number (e.g 012-3456789)" ForeColor="Red" 
                            ValidationExpression="0\d{1,3}-\d{7}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:Label ID="lblPhone" runat="server" Text="Phone:" style="font-weight: 700"></asp:Label>
                    </td>
                <td class="style18">
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                </td>
                <td class="style19">
                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server" 
                            ControlToValidate="txtPhone" Display="Dynamic" 
                            ErrorMessage="Phone Number is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="rePhone" runat="server" 
                            ControlToValidate="txtPhone" 
                            ErrorMessage="Invalid Phone Number (e.g 091-525252)" ForeColor="Red" 
                            ValidationExpression="0\d{1,3}-\d{6}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style21">
                    <asp:Label ID="lblGender" runat="server" style="font-weight: 700" 
                        Text="Gender:"></asp:Label>
                </td>
                <td class="style22">
                    <asp:RadioButtonList ID="rbtnlGender" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="rbtnlGender" ErrorMessage="Gender Is Required" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblQuery" runat="server" style="font-weight: 700" 
                        Text="Enter Your Query:"></asp:Label>
                </td>
                <td class="style6" colspan="2">
                    <asp:TextBox ID="txtQuery" runat="server" Height="62px" TextMode="MultiLine" 
                            Width="332px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Button ID="btnOK" runat="server" Height="25px" Text="OK" 
                        onclick="btnOK_Click" OnClientClick="btnOK_Click" />
                </td>
                <td class="style11">
                    <asp:Button ID="btnClear" runat="server" Text="Clear" 
                            Width="46px" OnClientClick="btnClear_Click" onclick="btnClear_Click" />
                </td>
            </tr>
            <tr>
                <td class="style10" colspan="2">
                    <asp:TextBox ID="txtSummary" runat="server" Height="122px" TextMode="MultiLine" 
                        Width="332px"></asp:TextBox>
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        HeaderText="Fix These errors:" ForeColor="Red" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

