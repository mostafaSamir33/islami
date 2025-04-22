import 'package:islami/tabs_details/radio_tab/widgets/radio_card.dart';

class RadioCardModel extends RadioCard {
  const RadioCardModel(
      {required super.radioCardText,
      super.mosqueImageIsVisible,
      super.soundWaveImageIsVisible});

  static List<RadioCardModel> radioButtonTabCardsObjects = [
    RadioCardModel(
      radioCardText: 'Radio Ibrahim Al-Akdar',
      mosqueImageIsVisible: true,
    ),
    RadioCardModel(
      radioCardText: 'Radio Al-Qaria Yassen',
      soundWaveImageIsVisible: true,
    ),
    RadioCardModel(
      radioCardText: 'Radio Ahmed Al-trabulsi',
      mosqueImageIsVisible: true,
    ),
    RadioCardModel(
      radioCardText: 'Radio Addokali Mohammad Alalim',
      mosqueImageIsVisible: true,
    )
  ];

  static List<RadioCardModel> recitersButtonTabCardsObjects = [
    RadioCardModel(
      radioCardText: 'Ibrahim Al-Akdar',
      mosqueImageIsVisible: true,
    ),
    RadioCardModel(
      radioCardText: 'Akram Alalaqmi',
      soundWaveImageIsVisible: true,
    ),
    RadioCardModel(
      radioCardText: 'Majed Al-Enezi',
      mosqueImageIsVisible: true,
    ),
    RadioCardModel(
      radioCardText: 'Malik shaibat Alhamed',
      mosqueImageIsVisible: true,
    )
  ];
}
