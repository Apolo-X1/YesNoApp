import 'package:flutter/material.dart';

class HerMessageBuble extends StatelessWidget {
  const HerMessageBuble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        decoration: BoxDecoration(
          color: colors.secondary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            "I'm fine, thanks!",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      const SizedBox(height: 5),
      _ImageBuble(),
      const SizedBox(height: 5),
    ]);
  }
}

class _ImageBuble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        "https://yesno.wtf/assets/no/16-b66d2db7543f5259c86abc166d6901cf.gif",
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('Ella esta enviando una imagen...'),
          );
        },
      ),
    );
  }
}
