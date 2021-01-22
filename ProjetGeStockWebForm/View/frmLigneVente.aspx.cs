using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjetGeStockWebForm.Models;

namespace GestionStock.View
{
    public partial class FrmLigneVente : System.Web.UI.Page
    {
        bdStockMGL2021Entities db = new bdStockMGL2021Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            dgProduit.DataSource = db.LigneVente.ToList();
            dgProduit.DataBind();

            cbbApprovisionnement.DataSource = db.Approvisionnement.ToList();
            cbbApprovisionnement.DataTextField = "idApp";
            cbbApprovisionnement.DataValueField = "idApp";
            cbbApprovisionnement.DataBind();

            cbbProduit.DataSource = db.Produit.ToList();
            cbbProduit.DataTextField = "nomP";
            cbbProduit.DataValueField = "idP";
            cbbProduit.DataBind();

            cbbVente.DataSource = db.Vente.ToList();
            cbbVente.DataTextField = "idV";
            cbbVente.DataValueField = "idV";
            cbbVente.DataBind();
        }
        protected void btnAjouter_Click(object sender, EventArgs e)
        {
            LigneVente p = new LigneVente();
            p.idApp = int.Parse(cbbApprovisionnement.SelectedValue.ToString());
            p.idP = int.Parse(cbbProduit.SelectedValue.ToString());
            p.idV = int.Parse(cbbVente.SelectedValue.ToString());
            p.qte = decimal.Parse(txtQte.Text);
            p.puV = decimal.Parse(txtPuV.Text);
            db.LigneVente.Add(p);
            Produit pd = db.Produit.FirstOrDefault((r => r.idP == p.idP));
            pd.qteP = (decimal)pd.qteP - (decimal)p.qte;
            //db.Produit.Add(pd);
            db.SaveChanges();
            Server.Transfer("frmLigneVente.aspx");
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