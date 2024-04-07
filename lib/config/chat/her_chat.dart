import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final Color = Theme.of(context).colorScheme;

    return Column(
      //mainAxisAlignment: MainAxisAlignment.start, "No se exactamente por que no sirve este metodo"
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Si hola?"),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Color.secondary),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("Mensajes enviados de ella",
                style: TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        _imageBubble(),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class _imageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network("https://i.pinimg.com/736x/6a/6d/11/6a6d1124cf69e5588588bc7e397598f6.jpg",
        width: size.width * .5,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: size.width * .5,
            height: 150,
            padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical:
                    10), //Este sirve para quqe el texto o widget que viene despues quede
            //centrado por asi decirlo
            child: const Text("Amor esta escribiendo"),
          );
        },
      ),
    );
  }
}
