class SmartSession {
  final int state;
  SmartSession([this.state = 31]);

  int compute_builder(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 31) % 997;
    }
    return result;
  }
}

void main() {
  print(SmartSession().compute_builder(31));
}
