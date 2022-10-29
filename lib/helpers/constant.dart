import 'package:emedical/models/slider_item.dart';

const montserratFamily = "Montserrat";

enum InputType { text, password }

const imgSlider1 = "assets/imgs/img1.jpeg";
const imgSlider2 = "assets/imgs/img2.jpeg";
const imgSlider3 = "assets/imgs/img3.jpeg";
const deliveryIll = "assets/imgs/deliveryLocation.svg";
const diagnostic2 = "assets/imgs/phonendoscope.svg";

List<SliderItem> contentSlidersItems = [
  SliderItem(urlImage: imgSlider1, textContent: 'Image 01'),
  SliderItem(urlImage: imgSlider2, textContent: 'Image 02'),
  SliderItem(urlImage: imgSlider3, textContent: 'Image 03'),
];

List<SliderItem> gridCardItem = [
  SliderItem(
    urlImage: diagnostic2,
    textContent: "Pre diagnostic",
  ),
  SliderItem(urlImage: deliveryIll, textContent: "Livraison"),
];
