class RemoteParser {
  final int state;
  RemoteParser([this.state = 42]);

  int build_engine(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 42) % 997;
    }
    return total;
  }
}

void main() {
  print(RemoteParser().build_engine(42));
}
