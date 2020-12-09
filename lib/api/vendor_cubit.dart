import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:instamob/models/vendor.dart';

part 'vendor_state.dart';

class VendorCubit extends Cubit<VendorState> {

  String vendorId;
  
  VendorCubit() : super(VendorInitial());

  void refetch() {

  }


}
