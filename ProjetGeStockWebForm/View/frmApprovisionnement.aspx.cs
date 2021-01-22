using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjetGeStockWebForm.Models;

namespace GestionStock.View
{
    public partial class FrmApprovisionnement : System.Web.UI.Page
    {
        bdStockMGL2021Entities db = new bdStockMGL2021Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            dgProduit.DataSource = db.Approvisionnement.ToList();
            dgProduit.DataBind();
            cbbProduit.DataSource = db.Produit.ToList();
            cbbProduit.DataTextField = "nomP";
            cbbProduit.DataValueField = "idP";
            cbbProduit.DataBind();
            cbbFournisseur.DataSource = db.Fournisseur.ToList();
            cbbFournisseur.DataTextField = "nomF";
            cbbFournisseur.DataValueField = "idF";
            cbbFournisseur.DataBind();
        }

        protected void btnAjouter_Click(object sender, EventArgs e)
        {
            Approvisionnement p = new Approvisionnement();
            p.idP = int.Parse(cbbProduit.SelectedValue.ToString());
            p.idF = int.Parse(cbbFournisseur.SelectedValue.ToString());
            p.qteApp = decimal.Parse(txtQteApp.Text);
            p.datePeremption = DateTime.Parse(txtDatePeremption.Text);
            p.dateApp = DateTime.Now;
            p.puF = decimal.Parse(txtPuF.Text);
            p.remise = decimal.Parse(txtRemise.Text);
            db.Approvisionnement.Add(p);
            Produit pd = db.Produit.FirstOrDefault((r => r.idP == p.idP));
            pd.qteP = (decimal)pd.qteP + (decimal)p.qteApp;
            //db.Produit.Add(pd);
            db.SaveChanges();
            Server.Transfer("frmProduit.aspx");
        }
        protected void DgProduit_SelectedIndexChanged(object sender, EventArgs e)
        {
            /*txtNomP.Text = dgProduit.SelectedRow.Cells[2].Text;
            txtDescriptionP.Text = dgProduit.SelectedRow.Cells[3].Text;
            txtQteP.Text = dgProduit.SelectedRow.Cells[4].Text;
            txtQteSeuilP.Text = dgProduit.SelectedRow.Cells[5].Text;
            txtPuP.Text = dgProduit.SelectedRow.Cells[6].Text;
            cbbCategorie.SelectedValue = dgProduit.SelectedRow.Cells[7].Text;*/
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