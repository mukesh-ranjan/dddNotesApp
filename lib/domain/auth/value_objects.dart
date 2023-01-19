// ignore_for_file: public_member_api_docs, sort_constructors_first
//step1
import 'package:dartz/dartz.dart';
import '../../domain/core/value_objects.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/failures.dart';
import '../core/value_validators.dart';

class EmailAddress extends ValueObject {
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String? input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input!),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject {
  final Either<ValueFailure<String>, String> value;

  factory Password(String? input) {
    assert(input != null);
    return Password._(
      validatePassword(input!),
    );
  }

  const Password._(this.value);
}
