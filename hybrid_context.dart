class RemoteSession {
  final int state;
  RemoteSession([this.state = 78]);

  int collect_client(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 78) % 997;
    }
    return total;
  }
}

void main() {
  print(RemoteSession().collect_client(78));
}
