class ErrorModel {
  final String message;
  final int status;

  ErrorModel({
    required this.message,
    required this.status,
  });
  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      message: json['ErrorMessage'],
      status: json['status'],
    );
  }
}
