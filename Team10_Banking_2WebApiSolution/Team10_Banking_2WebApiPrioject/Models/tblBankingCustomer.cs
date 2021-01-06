//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Team10_Banking_2WebApiPrioject.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblBankingCustomer
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tblBankingCustomer()
        {
            this.tblBalances = new HashSet<tblBalance>();
            this.tblBeneficiaries = new HashSet<tblBeneficiary>();
            this.tblLockeds = new HashSet<tblLocked>();
            this.tblNetBankings = new HashSet<tblNetBanking>();
            this.tblTransactions = new HashSet<tblTransaction>();
        }
    
        public Nullable<int> Reference_id { get; set; }
        public int customer_id { get; set; }
        public int account_number { get; set; }
        public Nullable<System.DateTime> account_OpenDate { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblBalance> tblBalances { get; set; }
        public virtual tblCustomer tblCustomer { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblBeneficiary> tblBeneficiaries { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblLocked> tblLockeds { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblNetBanking> tblNetBankings { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblTransaction> tblTransactions { get; set; }
    }
}
