using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjetGeStockWebForm.Models;

namespace GestionStock.View
{
    public partial class FrmProduit : System.Web.UI.Page
    {
        bdStockMGL2021Entities db = new bdStockMGL2021Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            cbbCategorie.DataSource = db.Categorie.ToList();
            cbbCategorie.DataTextField = "nomCat";
            cbbCategorie.DataValueField = "idCat";
            cbbCategorie.DataBind();
            dgProduit.DataSource = db.Produit.ToList();
            dgProduit.DataBind();
        }

        protected void btnAjouter_Click(object sender, EventArgs e)
        {
            Produit p = new Produit();
            p.descriptionP = txtDescriptionP.Text;
            p.idCat = int.Parse(cbbCategorie.SelectedValue.ToString());
            p.nomP = txtNomP.Text;
            p.qteP = decimal.Parse(txtQteP.Text);
            p.qteSeuil = decimal.Parse(txtQteSeuilP.Text);
            p.pu = decimal.Parse(txtPuP.Text);
            db.Produit.Add(p);
            db.SaveChanges();
            Server.Transfer("frmProduit.aspx");
        }
        protected void DgProduit_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtNomP.Text = dgProduit.SelectedRow.Cells[2].Text;
            txtDescriptionP.Text = dgProduit.SelectedRow.Cells[3].Text;
            txtQteP.Text = dgProduit.SelectedRow.Cells[4].Text;
            txtQteSeuilP.Text = dgProduit.SelectedRow.Cells[5].Text;
            txtPuP.Text = dgProduit.SelectedRow.Cells[6].Text;
            cbbCategorie.SelectedValue = dgProduit.SelectedRow.Cells[7].Text;
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            /*int? i = int.Parse(gvTuteur.SelectedRow.Cells[1].Text);
            Tuteurs t = db.Tuteurs.Find(i);
            t.NomTuteur = txtNom.Text;
            t.PrenomTuteur = txtPrenom.Text;
            t.AdresseTuteur = txtAdresse.Text;
            t.EmailTuteur = txtEmail.Text;
            t.TelTuteur = txtTel.Text;
            t.CiviliteTuteur = txtCivilite.Text;
            t.Parente = txtParente.Text;
            t.CNI = txtCNI.Text;
            db.SaveChanges();
            Server.Transfer("~/Inscription/frmTuteur.aspx");*/
        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            /*int? i = int.Parse(gvTuteur.SelectedRow.Cells[1].Text);
            Tuteurs t = db.Tuteurs.Find(i);
            db.Tuteurs.Remove(t);
            db.SaveChanges();
            Server.Transfer("~/Inscription/frmTuteur.aspx");*/
        }
    }
}