import 'dart:io';

void main() {
  print("Informe seu nome. ");
  var nome = stdin.readLineSync();

  print("-----------------------");
  print("Prezado(a), $nome. Seja muito bem-vindo(a) à nossa loja.");

  print(
      "\nOferecemos em nossa loja produtos e serviços para seu PET. Para venda de produtos, procure o colaborador Junior e, para serviços como banho ou tosa, procure o colaborador Neto. Obrigado e esperamos que tenha uma ótima experiência em nossa loja.");

  print("-----------------------");
  print("Como deseja continuar? ");
  print("\n1 - Ver ofertas de Produtos. \n2 - Ver ofertas de Serviços.");

  var menuLeitura = stdin.readLineSync() as String;

  int menu = int.parse(menuLeitura);

  if (menu == 1) {
    print("Ração Royal Canin Indor 7,5kg com o valor promocional de R\$280,00");
  } else {
    print("Banho e tosa na promoção pelo preço do banho R\$54,00");
  }
}
