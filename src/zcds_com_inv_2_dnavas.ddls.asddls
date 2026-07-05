@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK 
@EndUserText.label: 'CDS Auditing Aspect'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_com_inv_2_dnavas
  as select from zdt_com_inv_dnav
{
  key invoice_id    as InvoiceId,
      customer_name as CustomerName,
      @Semantics.amount.currencyCode: 'Currency'
      inv_amount    as InvAmount,
      currency      as Currency,
      department    as Department,
      created_by    as CreatedBy,
      create_date   as CreateDate
}
