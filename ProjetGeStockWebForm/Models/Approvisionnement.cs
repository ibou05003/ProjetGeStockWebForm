//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré à partir d'un modèle.
//
//     Des modifications manuelles apportées à ce fichier peuvent conduire à un comportement inattendu de votre application.
//     Les modifications manuelles apportées à ce fichier sont remplacées si le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProjetGeStockWebForm.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Approvisionnement
    {
        public int idApp { get; set; }
        public Nullable<int> idP { get; set; }
        public decimal qteApp { get; set; }
        public System.DateTime dateApp { get; set; }
        public System.DateTime datePeremption { get; set; }
        public Nullable<decimal> remise { get; set; }
        public Nullable<int> idF { get; set; }
        public Nullable<decimal> puF { get; set; }
    }
}