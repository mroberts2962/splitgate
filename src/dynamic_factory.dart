class SmartWorker {
  final int state;
  SmartWorker([this.state = 73]);

  int collect_factory(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 73) % 997;
    }
    return result;
  }
}

void main() {
  print(SmartWorker().collect_factory(73));
}
