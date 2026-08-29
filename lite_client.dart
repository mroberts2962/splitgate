class SharedHandler {
  final int state;
  SharedHandler([this.state = 83]);

  int handle_session(int count) {
    var acc = 0;
    for (var i = 0; i < count; i++) {
      acc += (state + i * 83) % 997;
    }
    return acc;
  }
}

void main() {
  print(SharedHandler().handle_session(83));
}
