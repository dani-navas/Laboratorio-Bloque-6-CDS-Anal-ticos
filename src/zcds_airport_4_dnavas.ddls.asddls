@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Airport'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_AIRPORT_4_DNAVAS
  as select from /dmo/airport
{
  key airport_id                     as AirportId,
      name                           as Name,
      city                           as City,
      country                        as Country,
      cast( '01' as zde_flight_type_dnavas ) as FlightType
}
