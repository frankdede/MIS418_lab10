<%@ Page Title="" Language="VB" MasterPageFile="~/StoreMaster.master" AutoEventWireup="false" CodeFile="Registration.aspx.vb" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Please Sign Up<br />
    </p>
    <p>
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" ContinueButtonText="Continue to Login" ContinueDestinationPageUrl="~/Login.aspx">
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server" />
                <asp:CompleteWizardStep runat="server" />
            </WizardSteps>
        </asp:CreateUserWizard>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

