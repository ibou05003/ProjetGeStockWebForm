<%@ Page Title="Gestion Lignes de Vente" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmLigneVente.aspx.cs" Inherits="GestionStock.View.FrmLigneVente" %>
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
            <asp:ValidationSummary runat="server" CssClass="text-danger" />
            <div class="form-row">
                <div class="form-group col-md-6">
                    <asp:Label runat="server" AssociatedControlID="cbbVente">Vente</asp:Label>
                    <asp:DropDownList runat="server" ID="cbbVente" CssClass="form-control"></asp:DropDownList>
                </div>
                <div class="form-group col-md-6">
                    <asp:Label runat="server" AssociatedControlID="cbbApprovisionnement">Approvionnement</asp:Label>
                    <asp:DropDownList runat="server" ID="cbbApprovisionnement" CssClass="form-control"></asp:DropDownList>
                </div>
             
                <div class="form-group col-md-6">
                    <asp:Label runat="server" AssociatedControlID="txtQte">Quantité</asp:Label>
                    <asp:TextBox runat="server" ID="txtQte" CssClass="form-control" TextMode="Number"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtQte"
                        CssClass="text-danger" ErrorMessage="*" />
                </div>
                
                <div class="form-group col-md-6">
                    <asp:Label runat="server" AssociatedControlID="txtPuV">Prix Unitaire</asp:Label>
                    <asp:TextBox runat="server" ID="txtPuV" CssClass="form-control" TextMode="Number"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPuV"
                        CssClass="text-danger" ErrorMessage="*" />
                </div>
                <div class="form-group col-md-6">
                    <asp:Label runat="server" AssociatedControlID="cbbProduit">Produit</asp:Label>
                    <asp:DropDownList runat="server" ID="cbbProduit" CssClass="form-control"></asp:DropDownList>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-10 col-md-2">
                    <asp:Button runat="server" ID="btnAjouter" Text="Ajouter" CssClass="btn btn-success" OnClick="btnAjouter_Click" />
                </div>
            </div>
           </div>
          <div class="row  ml-2 mr-2">
        <div class="table-responsive">
            <asp:GridView ID="dgProduit" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-hover">
                <Columns>
                    <asp:BoundField DataField="idLV" HeaderText="ID" />
                    <asp:BoundField DataField="idV" HeaderText="ID Vente" />
                    <asp:BoundField DataField="idApp" HeaderText="ID Approvisionnement" />
                    <asp:BoundField DataField="qte" HeaderText="Quantité" />
                    <asp:BoundField DataField="puV" HeaderText="Prix unitaire" />
                    <asp:BoundField DataField="idP" HeaderText="ID Produit" />
                    <asp:CommandField ShowSelectButton="True" SelectText="<i class='nav-icon far fa-edit'></i>"
                        ShowDeleteButton="true" DeleteText="<i class='nav-icon fas fa-trash'></i>" />
                </Columns>
            </asp:GridView> 
        </div>
        </div>
      </div>
    </div>
</asp:Content>
