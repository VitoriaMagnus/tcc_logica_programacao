void main() {
  final myFuture = Future.value(12); // usamos quando já sabemos o valor
  final myFuture =
      Future.error(Exception()); // usado quando precisa completar um erro
  final myFuture = Future.delayed(
    Duration(seconds: 5),
    () => 12,
  );
}
