using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjetGeStockWebForm.Models;

namespace GestionStock.View
{
    public partial class FrmVente : System.Web.UI.Page
    {
        bdStockMGL2021Entities db = new bdStockMGL2021Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            dgProduit.DataSource = db.Vente.ToList();
            dgProduit.DataBind();
        }

        protected void btnAjouter_Click(object sender, EventArgs e)
        {
            Vente p = new Vente();
            p.idClient = int.Parse(txtIdClient.Text);
            p.dateV = DateTime.Now;
            db.Vente.Add(p);
            db.SaveChanges();
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