part of 'vendor_cubit.dart';

@immutable
abstract class VendorState {
  Vendor delegate;
}

class VendorInitial extends VendorState {

  VendorInitial() {
    delegate = null;
  }
}
