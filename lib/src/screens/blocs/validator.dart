import 'dart:async';

class Validator {
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (data, sink) {
      if (data.contains('@')) {
        sink.add(data);
      } else {
        sink.addError('Enter Valid emaill');
      }
    },
  );
  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (data, sink) {
      if (data.length > 3) {
        sink.add(data);
      } else {
        sink.addError('Password is too short');
      }
    },
  );
}