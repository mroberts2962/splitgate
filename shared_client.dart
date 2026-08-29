class AsyncGateway {
  final int state;
  AsyncGateway([this.state = 73]);

  int handle_collector(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 73) % 997;
    }
    return total;
  }
}

void main() {
  print(AsyncGateway().handle_collector(73));
}
