<%@ Page Title="Gestion Appovisionnements" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmApprovisionnement.aspx.cs" Inherits="GestionStock.View.FrmApprovisionnement" %>
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
                <div class="form-group col-md-6">
                    <asp:Label runat="server" AssociatedControlID="cbbProduit">Produit</asp:Label>
                    <asp:DropDownList runat="server" ID="cbbProduit" CssClass="form-control"></asp:DropDownList>
                </div>
             
                <div class="form-group col-md-6">
                    <asp:Label runat="server" AssociatedControlID="txtQteApp">Quantité</asp:Label>
                    <asp:TextBox runat="server" ID="txtQteApp" CssClass="form-control" TextMode="Number"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtQteApp"
                        CssClass="text-danger" ErrorMessage="*" />
                </div>
                <div class="form-group col-md-6">
                    <asp:Label runat="server" AssociatedControlID="cbbFournisseur">Fournisseur</asp:Label>
                    <asp:DropDownList runat="server" ID="cbbFournisseur" CssClass="form-control"></asp:DropDownList>
                </div>
                <div class="form-group col-md-6">
                    <asp:Label runat="server" AssociatedControlID="txtPuF">Prix Unitaire Fournisseur</asp:Label>
                    <asp:TextBox runat="server" ID="txtPuF" CssClass="form-control" TextMode="Number"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPuF"
                        CssClass="text-danger" ErrorMessage="*" />
                </div>
                <div class="form-group col-md-6">
                    <asp:Label runat="server" AssociatedControlID="txtDatePeremption">Date Peremption</asp:Label>
                    <asp:TextBox runat="server" ID="txtDatePeremption" CssClass="form-control" TextMode="Date"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDatePeremption"
                        CssClass="text-danger" ErrorMessage="*" />
                </div>
                <div class="form-group col-md-6">
                    <asp:Label runat="server" AssociatedControlID="txtRemise">Remise</asp:Label>
                    <asp:TextBox runat="server" ID="txtRemise" CssClass="form-control" TextMode="Number"/>
                    
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
                    <asp:BoundField DataField="idApp" HeaderText="ID" />
                    <asp:BoundField DataField="idP" HeaderText="ID Produit" />
                    <asp:BoundField DataField="qteApp" HeaderText="Quantité" />
                    <asp:BoundField DataField="dateApp" HeaderText="Date" />
                    <asp:BoundField DataField="datePeremption" HeaderText="Date Peremption" />
                    <asp:BoundField DataField="remise" HeaderText="Remise" />
                    <asp:BoundField DataField="idF" HeaderText="ID Fournisseur" />
                    <asp:BoundField DataField="puF" HeaderText="Prix unitaire" />
                    <asp:CommandField ShowSelectButton="True" SelectText="<i class='nav-icon far fa-edit'></i>"
                        ShowDeleteButton="true" DeleteText="<i class='nav-icon fas fa-trash'></i>" />
                </Columns>
            </asp:GridView> 
        </div>
        </div>
      </div>
    </div>
</asp:Content>
