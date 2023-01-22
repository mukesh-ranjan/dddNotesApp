import 'package:dddnotesapp/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFaliure;

  UnexpectedValueError(this.valueFaliure);

  @override
  String toString() {
    const explanation =
        "Encountered a ValueFailure at an unrecoverable point.Terminating.";
    return Error.safeToString("$explanation Failure was $valueFaliure");
  }
}
