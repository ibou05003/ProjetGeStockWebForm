<%@ Page Title="Gestion Ventes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmVente.aspx.cs" Inherits="GestionStock.View.FrmVente" %>
<asp:Content ID="TitleContent" ContentPlaceHolderID="TitleContent" runat="server">
    <h4><%: Title %>.</h4>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <div class="card">
        <div class="card-body">
            <div class="row ml-2 mr-2">
                <div class="col-12">
                    <asp:ValidationSummary runat="server" CssClass="text-danger" />
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <asp:Label runat="server" AssociatedControlID="txtIdClient">Client</asp:Label>
                            <asp:TextBox runat="server" ID="txtIdClient" CssClass="form-control" TextMode="Number" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtIdClient"
                                CssClass="text-danger" ErrorMessage="*" />
                        </div>
                    </div>
                    <div class="form-group col-12">
                        <div class="col-md-offset-10 col-md-2">
                            <asp:Button runat="server" ID="btnAjouter" Text="Ajouter" CssClass="btn btn-success" OnClick="btnAjouter_Click" />
                        </div>
                    </div>
                </div>
                <div class="row  ml-2 mr-2">
                    <div class="table-responsive">
                        <asp:GridView ID="dgProduit" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-hover">
                            <Columns>
                                <asp:BoundField DataField="idV" HeaderText="ID" />
                                <asp:BoundField DataField="dateV" HeaderText="Date" />
                                <asp:BoundField DataField="idClient" HeaderText="Client" />
                                <asp:CommandField ShowSelectButton="True" SelectText="<i class='nav-icon far fa-edit'></i>"
                                    ShowDeleteButton="true" DeleteText="<i class='nav-icon fas fa-trash'></i>" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
      </div>
    </div>
</asp:Content>
