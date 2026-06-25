@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS An Data Flight'
@Metadata.ignorePropagatedAnnotations: true


@Analytics.dataCategory: #CUBE
define view entity ZCDS_AN_DATA_FLIGHT_DNAVAS
  as select from /dmo/booking as Booking
  association [0..*] to ZCDS_VDM_FLIGHT_DNAVAS as _Flight on _Flight.CarrierId = $projection.CarrierId
{
  key Booking.travel_id     as TravelId,
  key Booking.booking_id    as BookingId,
      Booking.booking_date  as BookingDate,
      Booking.customer_id   as CustomerId,
      Booking.carrier_id    as CarrierId,
      Booking.connection_id as ConnectionId,
      Booking.flight_date   as FlightDate,
      @Aggregation.default: #SUM
      @Semantics.amount.currencyCode: 'CurrencyCode'
      Booking.flight_price  as FlightPrice,
      Booking.currency_code as CurrencyCode,
      _Flight
}
