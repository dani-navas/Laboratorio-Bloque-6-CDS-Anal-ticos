@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS VDM Flight'
@Metadata.ignorePropagatedAnnotations: true


@VDM.viewType: #BASIC
@Analytics.dataCategory: #CUBE
@Search.searchable: true
define view entity ZCDS_VDM_FLIGHT_DNAVAS
  as select from /dmo/flight as Flight
  association [0..*] to /dmo/carrier as _Carrier on _Carrier.carrier_id = $projection.CarrierId
{
     
      @Search.defaultSearchElement: true
      @Search.ranking: #HIGH
      @Search.fuzzinessThreshold: 0.9
  key Flight.carrier_id     as CarrierId,
  
  key Flight.connection_id  as ConnectionId,
  key Flight.flight_date    as FlightDate,
    
      @DefaultAggregation: #SUM
      @Semantics.amount.currencyCode: 'CurrencyCode'
      Flight.price          as Price,
      
      @ObjectModel.foreignKey.association: '_Carrier'
      Flight.currency_code  as CurrencyCode,
      
      Flight.plane_type_id  as PlaneTypeId,
      Flight.seats_max      as SeatsMax,
      Flight.seats_occupied as SeatsOccupied,
      _Carrier
}
