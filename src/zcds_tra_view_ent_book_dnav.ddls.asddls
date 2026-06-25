@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'CDS Transcient View Entity'
@ObjectModel.modelingPattern: #ANALYTICAL_QUERY
@ObjectModel.supportedCapabilities: [#ANALYTICAL_QUERY]
define transient view entity ZCDS_TRA_VIEW_ENT_BOOK_DNAV
  provider contract analytical_query
  as projection on ZCDS_AN_DATA_FLIGHT_DNAVAS
{
          @AnalyticsDetails.query.axis: #FREE
          TravelId,
          @AnalyticsDetails.query.axis: #ROWS
          BookingId,
          BookingDate,
          @AnalyticsDetails.query.axis: #COLUMNS
          CustomerId,
          CarrierId,
          ConnectionId,
          FlightDate,
          @Semantics.amount.currencyCode: 'Currcode'
          @ObjectModel.text.element: [ 'CurrCode' ]
          @EndUserText.label: 'PrecioVuelo'
          FlightPrice,
  virtual Currcode : abap.cuky,
          CurrencyCode,
          /* Associations */
          _Flight
}
