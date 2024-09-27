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
  print("1 - Ver ofertas de Produtos. ");
  print("2 - Ver ofertas de Serviços. ");
  print("3 - Ver ofertas de roupas.");
  print("4 - Ver novos serviços.");

  var menuLeitura = stdin.readLineSync() as String;

  int menu = int.parse(menuLeitura);

  if (menu == 1) {
    print("Ração Royal Canin Indor 7,5kg com o valor promocional de R\$280,00");
  } else if (menu == 2) {
    print("Banho e tosa na promoção pelo preço do banho R\$54,00");
  } else if (menu == 3) {
    print("Roupas em oferta - Capa de chuva R\$59,99");
  } else if (menu == 4) {
    print(
        "Novos serviços oferecidos: \nHidratação de pelo R\$39,99  \nTosa higienica por R\$10,99 \nTingimento dos pelo por R\$55,99");
  } else {
    print("Opção inválida, escolha entre as opções do menu.");
  }
}
