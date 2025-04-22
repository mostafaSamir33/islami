import 'package:flutter/material.dart';

import '../widgets/radio_card_model.dart';

class RecitersButtonTab extends StatelessWidget {
  const RecitersButtonTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 18,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return RadioCardModel.recitersButtonTabCardsObjects[index];
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 16,
                );
              },
              itemCount: RadioCardModel.recitersButtonTabCardsObjects.length,
            ),
          ),
        ],
      ),
    );
  }
}
