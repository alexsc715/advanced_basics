import 'package:flutter/material.dart';

class PrivacyPolicyTxt extends StatelessWidget {
  const PrivacyPolicyTxt({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 700,
      child: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            Text("Política de Privacidade do aplicativo Dice Roller 1.0",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                )),
            SizedBox(height: 20),
            Text(
                "Esta política de privacidade faz referência ao aplicativo Dice Roller, criado por alexscjava, está na loja Google Play e pode ser acessado pelo seguinte endereço:",
                style: TextStyle(color: Colors.white)),
            SizedBox(height: 10),
            Text(
                "https://play.google.com/store/apps/details?id=com.alexscjava.dice_roller",
                style: TextStyle(color: Colors.white)),
            SizedBox(height: 10),
            Text(
                "Esta política de privacidade é valida somente em território brasileiro ao qual o aplicativo Dice Roller foi exclusivamente publicado.",
                style: TextStyle(color: Colors.white)),
            SizedBox(height: 30),
            Text(
                "O aplicativo Dice Roller:                                                               ",
                style: TextStyle(color: Colors.white)),
            Text(
                "1.Pode ser usado por pessoas de todas idades.                                   ",
                style: TextStyle(color: Colors.white)),
            Text(
                "2.Não possui imagens que sejam restritas a menores de 18 anos.",
                style: TextStyle(color: Colors.white)),
            Text(
                "3.Não possui formas de obtenção de dados pessoais. Assim, Dice Roller não coleta e não processa nenhum tipo de dado pessoal.",
                style: TextStyle(color: Colors.white)),
            Text(
                "4.Não requer conexão com a internet para o seu funcionamento.",
                style: TextStyle(color: Colors.white)),
            Text("5.Não envia e não recebe nenhum tipo de dado pela internet.",
                style: TextStyle(color: Colors.white)),
            Text(
                "6.Não requer pagamento para seu uso.                                              ",
                style: TextStyle(color: Colors.white)),
            Text(
                "7.Não compartilha nenhum dado pessoal e não obtém nenhum dado pessoal. ",
                style: TextStyle(color: Colors.white)),
            SizedBox(height: 30),
            Text(
                "Qualquer dúvida sobre esta política de privacidade deve ser entrado o contato pelo endereço:",
                style: TextStyle(color: Colors.white)),
            Text("4dsupp1000@gmail.com", style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
