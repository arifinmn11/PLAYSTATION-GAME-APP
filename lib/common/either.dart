import 'package:equatable/equatable.dart';

class Either<L, R> extends Equatable{
  final L? left;
  final R? right;

  const Either(this.left, this.right);

  @override
  List<Object?> get props => [left, right];
}