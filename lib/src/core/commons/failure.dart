import 'package:equatable/equatable.dart';

class BscScanFailure extends Equatable {
  final String message;
  final int code;

  BscScanFailure({this.message = '', this.code = -1});

  @override
  bool? get stringify => true;

  @override
  List<Object> get props => [message, code];
}
