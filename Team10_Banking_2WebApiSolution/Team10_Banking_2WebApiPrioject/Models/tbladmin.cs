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
    
    public partial class tbladmin
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tbladmin()
        {
            this.tblCustomers = new HashSet<tblCustomer>();
            this.tblAdminOtps = new HashSet<tblAdminOtp>();
        }
    
        public string admin_id { get; set; }
        public string password { get; set; }
        public string email_id { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblCustomer> tblCustomers { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblAdminOtp> tblAdminOtps { get; set; }
    }
}
