import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final int statusCode;
  final String statusMessage;
  final bool success;

  const ErrorMessageModel({
    required this.statusCode,
    required this.statusMessage,
    required this.success,
  });

  factory ErrorMessageModel.fromJSon(Map<String, dynamic> json) => ErrorMessageModel(
        statusCode: json["status_code"],
        statusMessage: json["status_message"],
        success: json["success"],
      );

  @override
  // TODO: implement props
  List<Object?> get props => [
        statusCode,
        statusMessage,
        success,
      ];
}
