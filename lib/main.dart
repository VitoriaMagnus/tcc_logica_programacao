import 'dart:io';

void main() {
  print('Tipo de usuário? [Cliente/Funcionário]');
  var usuario = stdin.readLineSync();
  switch (usuario) {
    case 'funcionario':
      print('Olá funcionário, informe o código de acesso restrito:');
      var codigoAcesso = stdin.readLineSync();
      if (codigoAcesso == 'cuidapetrestrito') {
        print("Bem vindo, você abriu uma ordem de serviço.");

        var precoTotal = 0.0;

        print(
            'O cliente comprou Ração Royal Canin Indor 7,5kg? Digite S ou N.');
        var respostaUm = stdin.readLineSync();
        if (respostaUm == 's' || respostaUm == 'S') {
          var precoUm = 280;
          precoTotal = precoTotal + precoUm;
        }

        print('O cliente solicitou banho e tosa? Digite S ou N.');
        var respostaDois = stdin.readLineSync();
        if (respostaDois == 's' || respostaDois == 'S') {
          var precoDois = 54;
          precoTotal = precoTotal + precoDois;
        }

        print('O cliente solicitou tosa higienica? Digite S ou N.');
        var respostaTres = stdin.readLineSync();
        if (respostaTres == 's' || respostaTres == 'S') {
          var precoTres = 10;
          precoTotal = precoTotal + precoTres;
        }

        print('O cliente solicitou hidratação? Digite S ou N.');
        var respostaQuatro = stdin.readLineSync();
        if (respostaQuatro == 's' || respostaQuatro == 'S') {
          var precoQuatro = 39;
          precoTotal = precoTotal + precoQuatro;
        }

        if (respostaDois == 's' ||
            respostaDois == 'S' && respostaTres == 's' ||
            respostaTres == 'S') {
          var valorDesconto = (54 + 10) * 20 / 100;
          precoTotal = precoTotal - valorDesconto;
          print('Foi aplicado o desconto de R\$$valorDesconto');
        }

        print('Valor total da compra $precoTotal');
      }

      break;
    case 'cliente':
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
      print("5 - Promoção I 10% de desconto");
      print("6 - Promoção II 20% de desconto");

      var menuLeitura = stdin.readLineSync() as String;

      int menu = int.parse(menuLeitura);

      switch (menu) {
        case 1:
          print(
              "Ração Royal Canin Indor 7,5kg com o valor promocional de R\$280,00");
          break;
        case 2:
          print("Banho e tosa na promoção pelo preço do banho R\$54,00");
          break;
        case 3:
          print("Roupas em oferta - Capa de chuva R\$59,99");
          break;
        case 4:
          print(
              "Novos serviços oferecidos: \nHidratação de pelo R\$39,99  \nTosa higienica por R\$10,99 \nTingimento dos pelo por R\$55,99");
          break;
        case 5:
          print(
              "Compre um saco de 15kg de ração R\$345,99 e ganhe 10% de desconto no banho.");
          break;
        case 6:
          print(
              "Compre 1 banho com tosa higienica e hidratação e ganhe 20% de desconto no valor total.");
          break;
        default:
          print("Opção inválida, escolha entre as opções do menu.");
      }

      break;
  }
}
