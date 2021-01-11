﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class dbBankEntities1 : DbContext
    {
        public dbBankEntities1()
            : base("name=dbBankEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<tbladmin> tbladmins { get; set; }
        public virtual DbSet<tblBalance> tblBalances { get; set; }
        public virtual DbSet<tblBankingCustomer> tblBankingCustomers { get; set; }
        public virtual DbSet<tblBeneficiary> tblBeneficiaries { get; set; }
        public virtual DbSet<tblCustomer> tblCustomers { get; set; }
        public virtual DbSet<tblLocked> tblLockeds { get; set; }
        public virtual DbSet<tblTransaction> tblTransactions { get; set; }
        public virtual DbSet<tblNetBanking> tblNetBankings { get; set; }
        public virtual DbSet<tblAdminOtp> tblAdminOtps { get; set; }
    
        public virtual ObjectResult<proc_LoginCheck_Result> proc_LoginCheck(string un, string pass)
        {
            var unParameter = un != null ?
                new ObjectParameter("un", un) :
                new ObjectParameter("un", typeof(string));
    
            var passParameter = pass != null ?
                new ObjectParameter("pass", pass) :
                new ObjectParameter("pass", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<proc_LoginCheck_Result>("proc_LoginCheck", unParameter, passParameter);
        }
    
        public virtual ObjectResult<string> proc_GettheCustomersNames()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<string>("proc_GettheCustomersNames");
        }
    
        public virtual ObjectResult<proc_GetAlltheCustomersNames_Result> proc_GetAlltheCustomersNames()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<proc_GetAlltheCustomersNames_Result>("proc_GetAlltheCustomersNames");
        }
    
        public virtual ObjectResult<proc_GettheCustomerApplications_Result> proc_GettheCustomerApplications()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<proc_GettheCustomerApplications_Result>("proc_GettheCustomerApplications");
        }
    
        public virtual ObjectResult<proc_GettheCustomerApplications1_Result> proc_GettheCustomerApplications1()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<proc_GettheCustomerApplications1_Result>("proc_GettheCustomerApplications1");
        }
    
        public virtual ObjectResult<proc_GetCustomersProile_Result> proc_GetCustomersProile(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<proc_GetCustomersProile_Result>("proc_GetCustomersProile", idParameter);
        }
    
        public virtual int proc_UpdateApprovedstatus(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("proc_UpdateApprovedstatus", idParameter);
        }
    
        public virtual int proc_UpdateApprovedstatusCustomers(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("proc_UpdateApprovedstatusCustomers", idParameter);
        }
    
        public virtual ObjectResult<proc_GetApprovedCustomers_Result> proc_GetApprovedCustomers()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<proc_GetApprovedCustomers_Result>("proc_GetApprovedCustomers");
        }
    
        public virtual ObjectResult<proc_GetPendingApplications_Result> proc_GetPendingApplications()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<proc_GetPendingApplications_Result>("proc_GetPendingApplications");
        }
    
        public virtual ObjectResult<proc_GetCustomersProfilesbyReferenceid_Result> proc_GetCustomersProfilesbyReferenceid(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<proc_GetCustomersProfilesbyReferenceid_Result>("proc_GetCustomersProfilesbyReferenceid", idParameter);
        }
    
        public virtual ObjectResult<proc_RejectedApplications_Result> proc_RejectedApplications()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<proc_RejectedApplications_Result>("proc_RejectedApplications");
        }
    
        public virtual int proc_InsertApprovedCustomers(Nullable<int> id, Nullable<int> acc_number, string acc_openDate)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            var acc_numberParameter = acc_number.HasValue ?
                new ObjectParameter("acc_number", acc_number) :
                new ObjectParameter("acc_number", typeof(int));
    
            var acc_openDateParameter = acc_openDate != null ?
                new ObjectParameter("acc_openDate", acc_openDate) :
                new ObjectParameter("acc_openDate", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("proc_InsertApprovedCustomers", idParameter, acc_numberParameter, acc_openDateParameter);
        }
    
        public virtual int proc_InsertApprvCustomersinBankingTable(Nullable<int> id, Nullable<int> acc_number, Nullable<System.DateTime> acc_date)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            var acc_numberParameter = acc_number.HasValue ?
                new ObjectParameter("acc_number", acc_number) :
                new ObjectParameter("acc_number", typeof(int));
    
            var acc_dateParameter = acc_date.HasValue ?
                new ObjectParameter("acc_date", acc_date) :
                new ObjectParameter("acc_date", typeof(System.DateTime));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("proc_InsertApprvCustomersinBankingTable", idParameter, acc_numberParameter, acc_dateParameter);
        }
    
        public virtual int proc_InsertApprvCustomersinBankingTble(Nullable<int> id, Nullable<long> acc_number, Nullable<System.DateTime> acc_date)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            var acc_numberParameter = acc_number.HasValue ?
                new ObjectParameter("acc_number", acc_number) :
                new ObjectParameter("acc_number", typeof(long));
    
            var acc_dateParameter = acc_date.HasValue ?
                new ObjectParameter("acc_date", acc_date) :
                new ObjectParameter("acc_date", typeof(System.DateTime));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("proc_InsertApprvCustomersinBankingTble", idParameter, acc_numberParameter, acc_dateParameter);
        }
    
        public virtual int proc_InsertOtps(string id, Nullable<int> otp)
        {
            var idParameter = id != null ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(string));
    
            var otpParameter = otp.HasValue ?
                new ObjectParameter("otp", otp) :
                new ObjectParameter("otp", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("proc_InsertOtps", idParameter, otpParameter);
        }
    
        public virtual int proc_InsertintotblwithEmail(string email, Nullable<int> otp)
        {
            var emailParameter = email != null ?
                new ObjectParameter("email", email) :
                new ObjectParameter("email", typeof(string));
    
            var otpParameter = otp.HasValue ?
                new ObjectParameter("otp", otp) :
                new ObjectParameter("otp", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("proc_InsertintotblwithEmail", emailParameter, otpParameter);
        }
    
        public virtual ObjectResult<string> proc_OtpCheck(string mail, Nullable<int> otp)
        {
            var mailParameter = mail != null ?
                new ObjectParameter("mail", mail) :
                new ObjectParameter("mail", typeof(string));
    
            var otpParameter = otp.HasValue ?
                new ObjectParameter("otp", otp) :
                new ObjectParameter("otp", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<string>("proc_OtpCheck", mailParameter, otpParameter);
        }
    
        public virtual ObjectResult<string> proc_OtpCheck1(string mail, Nullable<int> otp)
        {
            var mailParameter = mail != null ?
                new ObjectParameter("mail", mail) :
                new ObjectParameter("mail", typeof(string));
    
            var otpParameter = otp.HasValue ?
                new ObjectParameter("otp", otp) :
                new ObjectParameter("otp", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<string>("proc_OtpCheck1", mailParameter, otpParameter);
        }
    
        public virtual ObjectResult<proc_OtpCheck2_Result> proc_OtpCheck2(string mail, Nullable<int> otp)
        {
            var mailParameter = mail != null ?
                new ObjectParameter("mail", mail) :
                new ObjectParameter("mail", typeof(string));
    
            var otpParameter = otp.HasValue ?
                new ObjectParameter("otp", otp) :
                new ObjectParameter("otp", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<proc_OtpCheck2_Result>("proc_OtpCheck2", mailParameter, otpParameter);
        }
    
        public virtual ObjectResult<string> proc_GetUsername(string email)
        {
            var emailParameter = email != null ?
                new ObjectParameter("email", email) :
                new ObjectParameter("email", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<string>("proc_GetUsername", emailParameter);
        }
    
        public virtual ObjectResult<proc_GetUsername1_Result> proc_GetUsername1(string email)
        {
            var emailParameter = email != null ?
                new ObjectParameter("email", email) :
                new ObjectParameter("email", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<proc_GetUsername1_Result>("proc_GetUsername1", emailParameter);
        }
    
        public virtual ObjectResult<proc_GetUsernameusingmail_Result> proc_GetUsernameusingmail(string email)
        {
            var emailParameter = email != null ?
                new ObjectParameter("email", email) :
                new ObjectParameter("email", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<proc_GetUsernameusingmail_Result>("proc_GetUsernameusingmail", emailParameter);
        }
    }
}
