import 'package:flutter/material.dart';

class MovementItem extends StatelessWidget {
  const MovementItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MPPP3_AV1?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1662503141112"),
        ),
        title: Text("Capa Iphone 13"),
        subtitle: Text("10/10/22 ás 10:00"),
        trailing: Text(
          "+10 unid",
          style: TextStyle(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
