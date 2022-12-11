import 'package:flutter/material.dart';
import 'package:pgtel_app/src/commom_widgets/movement_item.dart';
import 'package:pgtel_app/src/config/custom_colors.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 32),
          child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
          child: Column(
            children: [
              //Menu Button
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    print("clique aqui");
                  },
                  child: const Icon(Icons.menu),
                ),
              ),
              //Header Row
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Olá, Ariane",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://cdn1.iconfinder.com/data/icons/user-pictures/100/female1-512.png"),
                    ),
                  ],
                ),
              ),
              //Statistic Area
              Container(
                margin: const EdgeInsets.only(top: 24),
                child: Column(
                  children: [
                    //Title
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Suas estatísticas",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.customSwatchColor,
                        ),
                      ),
                    ),
                    //Create Products Area
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 32),
                      decoration: BoxDecoration(
                        color: CustomColors.customSwatchColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        children: const [
                          Text(
                            "32",
                            style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Produtos cadastrados",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Products lowed min stock Area
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 32),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: CustomColors.customContrastColor,
                          width: 2,
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "32",
                            style: TextStyle(
                              fontSize: 48,
                              color: CustomColors.customContrastColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Produtos abaixo do mínimo ",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: CustomColors.customContrastColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Products high min stock Area
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 32),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                        ),
                      ),
                      child: Row(
                        children: const [
                          Text(
                            "32",
                            style: TextStyle(
                              fontSize: 48,
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Produtos acima do mínimo ",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // Last movements Area
              Container(
                margin: const EdgeInsets.only(top: 24),
                child: Column(
                  children: [
                    //Title
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Últimas movimentações",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.customSwatchColor,
                        ),
                      ),
                    ),
                    //Movements
                    Column(
                      children: const [
                       MovementItem(),
                       MovementItem(),
                       MovementItem(),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
