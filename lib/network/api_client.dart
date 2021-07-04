import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

// import 'model/booking_model.dart';
import 'model/login_model.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  @POST("api/login/signin")
  Future<LoginResponseModel> appLogin(@Body() LoginModel params);

  // @POST("api/booking/getbooking")
  // Future<BookingResponseModel> getBooking(@Body() BookingModel params);

  // @POST("api/booking/insertbooking")
  // Future<LoginResponseModel> insertBooking(@Body() Booking params);

  // @POST("api/booking/deletebooking")
  // Future<LoginResponseModel> deleteBooking(@Body() Booking params);
}
