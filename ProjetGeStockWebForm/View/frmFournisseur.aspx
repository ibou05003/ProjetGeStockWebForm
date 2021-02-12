<%@ Page Title="Gestion Fournisseurs" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmFournisseur.aspx.cs" Inherits="GestionStock.View.FrmFournisseur" %>
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
                <div class="form-group col-md-4">
                    <asp:Label runat="server" AssociatedControlID="txtNomF">Nom Fournisseur</asp:Label>
                    <asp:TextBox runat="server" ID="txtNomF" CssClass="form-control"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNomF"
                        CssClass="text-danger" ErrorMessage="*" />
                </div>
                <div class="form-group col-md-4">
                    <asp:Label runat="server" AssociatedControlID="txtCodeF">Code Fournisseur</asp:Label>
                    <asp:TextBox runat="server" ID="txtCodeF" CssClass="form-control"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCodeF"
                        CssClass="text-danger" ErrorMessage="*" />
                </div>
            
                <div class="form-group col-md-4">
                    <asp:Label runat="server" AssociatedControlID="txtTelF">Téléphone</asp:Label>
                    <asp:TextBox runat="server" ID="txtTelF" CssClass="form-control" TextMode="Number"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTelF"
                        CssClass="text-danger" ErrorMessage="*" />
                </div>
            </div>
            <div class="form-group col-12 mg-b-5">
                <div class="col-md-offset-10 col-md-2">
                    <asp:Button runat="server" ID="btnAjouter" Text="Ajouter" CssClass="btn btn-success" OnClick="btnAjouter_Click" />
                </div>
            </div>
           </div>
           </div>
          <div class="row  ml-2 mr-2">
        <div class="table-responsive">
            <asp:GridView ID="dgProduit" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-hover">
                <Columns>
                    <asp:BoundField DataField="idF" HeaderText="ID" />
                    <asp:BoundField DataField="nomF" HeaderText="Nom" />
                    <asp:BoundField DataField="codeF" HeaderText="Code" />
                    <asp:BoundField DataField="telF" HeaderText="Téléphone" />
                    <asp:CommandField ShowSelectButton="True" SelectText="<i class='nav-icon far fa-edit'></i>"
                        ShowDeleteButton="true" DeleteText="<i class='nav-icon fas fa-trash'></i>" />
                </Columns>
            </asp:GridView> 
                    
                
        </div>
        </div>
      </div>
    </div>
</asp:Content>
