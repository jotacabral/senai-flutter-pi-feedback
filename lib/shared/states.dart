abstract class StatePage<T> {}

class StateLoading implements StatePage {}

class StateError implements StatePage {
  final String error;
  StateError(this.error);
}

class StateSuccess<T> implements StatePage {
  final List<T> result;
  StateSuccess(this.result);
}
