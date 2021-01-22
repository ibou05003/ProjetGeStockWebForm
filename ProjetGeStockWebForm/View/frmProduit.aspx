<%@ Page Title="Gestion Produits" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmProduit.aspx.cs" Inherits="GestionStock.View.FrmProduit" %>
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
            <asp:ValidationSummary runat="server" CssClass="text-danger" />
            <div class="form-row">
                <div class="form-group col-md-4">
                    <asp:Label runat="server" AssociatedControlID="txtNomP">Nom Produit</asp:Label>
                    <asp:TextBox runat="server" ID="txtNomP" CssClass="form-control"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNomP"
                        CssClass="text-danger" ErrorMessage="*" />
                </div>
                <div class="form-group col-md-4">
                    <asp:Label runat="server" AssociatedControlID="txtDescriptionP">Description</asp:Label>
                    <asp:TextBox runat="server" ID="txtDescriptionP" CssClass="form-control"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDescriptionP"
                        CssClass="text-danger" ErrorMessage="*" />
                </div>
             
            
                <div class="form-group col-md-4">
                    <asp:Label runat="server" AssociatedControlID="txtQteP">Quantité</asp:Label>
                    <asp:TextBox runat="server" ID="txtQteP" CssClass="form-control" TextMode="Number"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtQteP"
                        CssClass="text-danger" ErrorMessage="*" />
                </div>
                <div class="form-group col-md-4">
                    <asp:Label runat="server" AssociatedControlID="txtQteSeuilP">Quantité Seuil</asp:Label>
                    <asp:TextBox runat="server" ID="txtQteSeuilP" CssClass="form-control" TextMode="Number"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtQteSeuilP"
                        CssClass="text-danger" ErrorMessage="*" />
                </div>
                <div class="form-group col-md-4">
                    <asp:Label runat="server" AssociatedControlID="txtPuP">Prix Unitaire</asp:Label>
                    <asp:TextBox runat="server" ID="txtPuP" CssClass="form-control" TextMode="Number"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPuP"
                        CssClass="text-danger" ErrorMessage="*" />
                </div>
                <div class="form-group col-md-4">
                    <asp:Label runat="server" AssociatedControlID="cbbCategorie">Catégorie</asp:Label>
                    <asp:DropDownList runat="server" ID="cbbCategorie" CssClass="form-control"></asp:DropDownList>
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
                    <asp:BoundField DataField="idP" HeaderText="ID" />
                    <asp:BoundField DataField="nomP" HeaderText="Nom" />
                    <asp:BoundField DataField="descriptionP" HeaderText="Description" />
                    <asp:BoundField DataField="qteP" HeaderText="Quantité" />
                    <asp:BoundField DataField="qteSeuil" HeaderText="Quantité seuil" />
                    <asp:BoundField DataField="pu" HeaderText="Prix unitaire" />
                    <asp:BoundField DataField="idCat" HeaderText="Catégorie" />
                    <asp:CommandField ShowSelectButton="True" SelectText="<i class='nav-icon far fa-edit'></i>"
                        ShowDeleteButton="true" DeleteText="<i class='nav-icon fas fa-trash'></i>" />
                </Columns>
            </asp:GridView> 
        </div>
        </div>
      </div>
    </div>
</asp:Content>
