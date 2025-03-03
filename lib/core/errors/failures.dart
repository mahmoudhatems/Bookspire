/// This file contains the abstract class Failure which is the parent class of all the failures that can occur in the application.
abstract class Failure {
  final String message;

  Failure(this.message);

  @override
  String toString() => message;
}
/// This class represents a failure that occurs due to a server error.
class ServerFailure extends Failure {
  ServerFailure(String message) : super(message);
}