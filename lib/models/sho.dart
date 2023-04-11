class Sho {
  final int id, price;
  final String title, subTitle, description, image,abd;

  Sho(
      {required this.id,
      required this.price,
       required this.abd,
      required this.title,
      required this.subTitle,
      required this.description,
      required this.image});
}

// list of products
List<Sho> shos = [
  Sho(
    id: 1,
    price: 2,
    abd:"////",
    title: "امرؤ القيس",

    subTitle: "اُمْرُؤُ القَيْس بْنُ حُجْرُ بْنُ الحَارِثِ الكِنْدِي (500 - 540)",
    image: "images/airpod.png",
    description:
        "وصف كل معلقة ",
  ),
  Sho(
    id: 2,
    price: 1099,
    abd:"////",

    title: "عمْرو بن كلثوم.",
    subTitle: "////////////",
    image: "images/mobile.png",
    description:
        "//////////////////",
  ),
  Sho(
    id: 3,
    price: 39,
    abd:"////",

    title: "عنترة بن شداد",
    subTitle: "//////////",
    image: "images/class.png",
    description:
        "/////////.",
  ),
  Sho(
    id: 4,
    price: 56,
    abd:"////",

    title: "زهير بن أبي سُلمى",
    subTitle: "لساعات استماع طويلة",
    image: "images/headset.png",
    description:
        "///////////////////////.",
  ),
  Sho(
    id: 5,
    price: 68,
    abd:"////",

    title: "الحارث بن حلزة",
    subTitle: "/////////////////",
    image: "images/speaker.png",
    description:
        "///////////////////////.",
  ),
  Sho(
    id: 6,
    price: 39,
    abd:"////",

    title: "طرَفة بن العبد",
    subTitle: "////////////////////////",
    image: "images/camera.png",
    description:
        "/////////////////////////.",
  ),
  Sho(
    id: 6,
    price: 39,
    abd:"////",

    title: "ففففففر",
    subTitle: "ب666666ة",
    image: "images/camera.png",
    description:
    "///////////////////////.",
  ),
];
