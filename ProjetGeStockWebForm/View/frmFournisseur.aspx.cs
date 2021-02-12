using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjetGeStockWebForm.Models;

namespace GestionStock.View
{
    public partial class FrmFournisseur : System.Web.UI.Page
    {
        bdStockMGL2021Entities db = new bdStockMGL2021Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            dgFournisseur.DataSource = db.Fournisseur.ToList();
            dgFournisseur.DataBind();
        }

        protected void btnAjouter_Click(object sender, EventArgs e)
        {
            Fournisseur p = new Fournisseur();
            p.codeF = txtCodeF.Text;
            p.telF = txtTelF.Text;
            p.nomF = txtNomF.Text;
            db.Fournisseur.Add(p);
            db.SaveChanges();
            Server.Transfer("frmFournisseur.aspx");
        }
        protected void dgFournisseur_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtCodeF.Text = dgFournisseur.SelectedRow.Cells[2].Text;
            txtTelF.Text = dgFournisseur.SelectedRow.Cells[3].Text;
            txtNomF.Text = dgFournisseur.SelectedRow.Cells[1].Text;
           
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int? i = int.Parse(dgFournisseur.SelectedRow.Cells[0].Text);
            Fournisseur p = db.Fournisseur.Find(i);
            p.codeF = txtCodeF.Text;
            p.telF = txtTelF.Text;
            p.nomF = txtNomF.Text;
            db.SaveChanges();
            Server.Transfer("frmFournisseur.aspx");
        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int? i = int.Parse(dgFournisseur.SelectedRow.Cells[0].Text);
            Fournisseur p = db.Fournisseur.Find(i);
            db.Fournisseur.Remove(p);
            db.SaveChanges();
            Server.Transfer("frmFournisseur.aspx");
        }
    }
}