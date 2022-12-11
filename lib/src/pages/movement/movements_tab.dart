import 'package:flutter/material.dart';
import 'package:pgtel_app/src/commom_widgets/movement_item.dart';

class MovementsTab extends StatelessWidget {
  const MovementsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text('Movimentações'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: ListView.separated(
          itemCount: 100,
          itemBuilder: (context, index) {
            return const MovementItem();
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 4);
          },
        ),
      ),
    );
  }
}


