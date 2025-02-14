//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ZB_FEPMS.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class tblApplication
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tblApplication()
        {
            this.Id = Guid.NewGuid();
            this.tblApplicationAmounts = new HashSet<tblApplicationAmount>();
        }
    
        public System.Guid Id { get; set; }
        public string PermitNumber { get; set; }
        public System.Guid ApplicantId { get; set; }
        public System.DateTime Date { get; set; }
        public System.Guid PermitStatusId { get; set; }
        public string PermitType { get; set; }
        public System.Guid SerialNumberShelfId { get; set; }
        public string PermitYear { get; set; }
        public string CurrencyType { get; set; }
        public Nullable<decimal> CurrencyRate { get; set; }
        public Nullable<decimal> Amount { get; set; }
        public Nullable<decimal> RemainingAmount { get; set; }
        public Nullable<decimal> USDRate { get; set; }
        public Nullable<decimal> AmountInUSD { get; set; }
        public Nullable<decimal> RemainingAmountInUSD { get; set; }
        public Nullable<decimal> AmountInBirr { get; set; }
        public Nullable<decimal> RemainingAmountInBirr { get; set; }
        public string ApprovalStatus { get; set; }
        public string NBEApprovalRefNumber { get; set; }
        public string QueueRound { get; set; }
        public string QueueNumber { get; set; }
        public string OwnSourceValue { get; set; }
        public string PurposeOfPayment { get; set; }
        public string Beneficiary { get; set; }
        public Nullable<System.Guid> CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<decimal> IncreasedAmount { get; set; }
        public Nullable<decimal> IncreasedAmountInUSD { get; set; }
        public Nullable<decimal> IncreasedAmountInBirr { get; set; }
        public Nullable<decimal> DecreasedAmount { get; set; }
        public Nullable<decimal> DecreasedAmountInUSD { get; set; }
        public Nullable<decimal> DecreasedAmountInBirr { get; set; }
        public virtual tbl_lu_Status tbl_lu_Status { get; set; }
        public virtual tblApplicant tblApplicant { get; set; }
        public virtual USER USER { get; set; }
        public virtual tblSerialNumberShelf tblSerialNumberShelf { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblApplicationAmount> tblApplicationAmounts { get; set; }
        //#
        public string ApplicantName { get; set; }
        public string CIFNumber { get; set; }
        public string CurrencyRateValue { get; set; }
        [Display(Name = "Amount")]
        [RegularExpression(@"^\d{1,3}(?:,\d{3})*(?:\.\d{1,6})?$", ErrorMessage = "Amount should be a number greater than 0.")]
        public string AmountValue { get; set; }
        [Display(Name = "USD Rate")]
        public string USDRateValue { get; set; }
        [Display(Name = "USD amount")]
        public string AmountInUSDValue { get; set; }
        [Display(Name = "ETB amount")]
        public string AmountInBirrValue { get; set; }
        public string PermitStatus { get; set; }
        public string PendingStatusOfAmountUpdate { get; set; }
        public string PurposeOfPaymentUserFill { get; set; }
        public bool is_other { get; set; }
        //#
    }
}
