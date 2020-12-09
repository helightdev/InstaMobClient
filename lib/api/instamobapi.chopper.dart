// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instamobapi.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$VendorService extends VendorService {
  _$VendorService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = VendorService;

  @override
  Future<Response<List<Vendor>>> getAll() {
    final $url = '/vendor';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<Vendor>, Vendor>($request,
        responseConverter: vendorArrayResponse);
  }

  @override
  Future<Response<Vendor>> createVendor(Vendor vendor) {
    final $url = '/vendor/';
    final $body = vendor;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<Vendor, Vendor>($request,
        requestConverter: vendorRequest);
  }

  @override
  Future<Response<Vendor>> getVendor(String ref) {
    final $url = '/vendor/$ref';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Vendor, Vendor>($request,
        responseConverter: vendorResponse);
  }

  @override
  Future<Response<dynamic>> updateVendor(String ref, Vendor vendor) {
    final $url = '/vendor/$ref';
    final $body = vendor;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request,
        requestConverter: vendorRequest);
  }

  @override
  Future<Response<dynamic>> deleteVendor(String ref) {
    final $url = '/vendor/$ref';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> distribute(String ref, Content content) {
    final $url = '/vendor/$ref';
    final $body = content;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request,
        requestConverter: contentRequest);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ContentService extends ContentService {
  _$ContentService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ContentService;

  @override
  Future<Response<Vendor>> getVendor(String ref) {
    final $url = '/content/reddit/$ref';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Vendor, Vendor>($request,
        responseConverter: vendorResponse);
  }
}
