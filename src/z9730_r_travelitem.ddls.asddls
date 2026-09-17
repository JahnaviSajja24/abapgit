@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel Item Data Definition'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z9730_R_TRAVELITEM as select from z9730_tritem
association to parent Z9730_R_Travel as _Travel
on $projection.AgencyId = _Travel.AgencyId and
$projection.TravelId = _Travel.TravelId
{
    key item_uuid as ItemUuid,
    agency_id as AgencyId,
    travel_id as TravelId,
    carrier_id as CarrierId,
    connection_id as ConnectionId,
    flight_date as FlightDate,
    booking_id as BookingId,
    passenger_first_name as PassengerFirstName,
    passenger_last_name as PassengerLastName,
    changed_at as ChangedAt,
    changed_by as ChangedBy,
    loc_changed_at as LocChangedAt,
    _Travel
}
