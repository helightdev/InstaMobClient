
import 'package:chopper/chopper.dart';
import 'package:instamob/models/content.dart';
import 'package:instamob/models/vendor.dart';

part "instamobapi.chopper.dart";

@ChopperApi(baseUrl: "/vendor")
abstract class VendorService extends ChopperService {

  static VendorService create([ChopperClient client]) => _$VendorService(client);

  @Get()
  @FactoryConverter(response: vendorArrayResponse)
  Future<Response<List<Vendor>>> getAll();

  @Post(path: "/")
  @FactoryConverter(request: vendorRequest)
  Future<Response<Vendor>> createVendor(@Body() Vendor vendor);

  @Get(path: "/{id}")
  @FactoryConverter(response: vendorResponse)
  Future<Response<Vendor>> getVendor(@Path("id") String ref);

  @Put(path: "/{id}")
  @FactoryConverter(request: vendorRequest)
  Future<Response> updateVendor(@Path("id") String ref, @Body() Vendor vendor);

  @Delete(path: "/{id}")
  Future<Response> deleteVendor(@Path("id") String ref);

  @Put(path: "/{id}")
  @FactoryConverter(request: contentRequest)
  Future<Response> distribute(@Path("id") String ref, @Body() Content content);

}

@ChopperApi(baseUrl: "/content")
abstract class ContentService extends ChopperService {

  static ContentService create([ChopperClient client]) => _$ContentService(client);

  @Get(path: "/reddit/{reddit}")
  @FactoryConverter(response: vendorResponse)
  Future<Response<Vendor>> getVendor(@Path("reddit") String ref);
}

final chopper = ChopperClient(
  baseUrl: "http://localhost:8086/api/v1",
  services: [
    VendorService.create(),
  ],
  interceptors: [
        (Request request) async => request.headers["Authorization"] = "Bearer none"

  ],
  converter: JsonConverter(),

);

Request vendorRequest(Request request) {
  request.copyWith(body: (request.body as Vendor).toJson());
  return JsonConverter().convertRequest(request);
}

Request contentRequest(Request request) {
  request.copyWith(body: (request.body as Content).toJson());
  return JsonConverter().convertRequest(request);
}

Response<Vendor> vendorResponse(Response response) {
  Map<String, dynamic> data = JsonConverter().convertResponse(response).body;
  return response.copyWith(body: Vendor.fromJson(data));
}

Response<List<Vendor>> vendorArrayResponse(Response response) {
  List<dynamic> data = JsonConverter().convertResponse(response).body;
  return response.copyWith(body: data.map((e) => Vendor.fromJson(e)).toList());
}
