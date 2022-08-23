class TourismPlaceInternational {
  String name;
  String location;
  String description;
  String ticketPrice;
  String imageAsset;
  double rating;
  bool isPopular;
  List<String> facility;

  TourismPlaceInternational(
      {required this.name,
      required this.location,
      required this.description,
      required this.ticketPrice,
      required this.imageAsset,
      required this.rating,
      required this.isPopular,
      required this.facility});
}

var tourismPlaceInternationalList = [
  TourismPlaceInternational(
      name: 'Menara Eiffel',
      location: 'Prancis',
      description:
          'Dinamai sesuai nama perancangnya, Gustave Eiffel, Menara Eiffel adalah bangunan tertinggi di Paris dan salah satu struktur terkenal di dunia.',
      ticketPrice: '\$3000',
      imageAsset: 'assets/images/menara-eiffel.jpg',
      rating: 4.8,
      isPopular: true,
      facility: ['Taman', 'Naik Menara Eiffel', 'Tempat Berfoto']),
  TourismPlaceInternational(
      name: 'Tembok Cina',
      location: 'China',
      description:
          'Tembok Besar Tiongkok tidak panjang terus menerus, tetapi merupakan kumpulan tembok-tembok pendek yang mengikuti bentuk pegunungan Tiongkok utara.',
      ticketPrice: '\$1200',
      imageAsset: 'assets/images/tembok-cina.jpg',
      rating: 4.8,
      isPopular: true,
      facility: ['Tempat Berfoto', 'Minum Gratis', 'Disediakan Sepeda']),
  TourismPlaceInternational(
      name: 'Koloseum',
      location: 'Italia',
      description:
          'Koloseum dibangun pada pemerintahan Vespasian pada tahun 72 M dan terselesaikan oleh anaknya Titus pada tahun 80 M. ',
      ticketPrice: '\$2200',
      imageAsset: 'assets/images/koloseum.jpg',
      rating: 4.8,
      isPopular: true,
      facility: ['Tempat Berfoto', 'Taman Anak di Sekitar', 'Minum Gratis']),
  TourismPlaceInternational(
      name: 'Taj Mahal',
      location: 'India',
      description:
          'Sebuah monumen yang terletak di Agra, India. Dibangun atas keinginan Kaisar Mughal Shāh Jahān, anak Jahangir, sebagai sebuah mausoleum untuk istri Persianya, Arjumand Banu Begum, juga dikenal sebagai Mumtaz-ul-Zamani atau Mumtaz Mahal.',
      ticketPrice: '\$1700',
      imageAsset: 'assets/images/taj-mahal.jpg',
      rating: 4.8,
      isPopular: true,
      facility: ['Tempat Beribadah', 'Taman di Sekitar', 'Tempat Berfoto']),
  TourismPlaceInternational(
      name: 'Stonehenge',
      location: 'Inggris',
      description:
          'suatu bangunan yang dibangun pada zaman Perunggu, dan Neolitikum. Ia terletak berdekatan dengan Amesbury di Wiltshire, Inggris, sekitar 13 kilometer barat laut Salisbury. Sebagai salah satu situs yang paling terkenal di dunia, Stonehenge merupakan lingkaran batu tegak yang berada di dalam lingkup tembok tanah.',
      ticketPrice: '\$3500',
      imageAsset: 'assets/images/stonehenge.jpg',
      rating: 4.8,
      isPopular: true,
      facility: ['Tempat Berfoto', 'Taman Indah', 'Minum Gratis']),
  TourismPlaceInternational(
      name: 'Disney World',
      location: 'Singapore',
      description:
          'Sukses di Disneyland tanggal 17 Juli 1955, Walt Disney Productions merencanakan pembangunan resor kedua. Maka pada tanggal 22 November 1963 dimulai rencana pendirian di Sanford, Florida. Namun ditunda hingga tahun 1971.',
      ticketPrice: '\$1100',
      imageAsset: 'assets/images/disney-world.jpg',
      rating: 4.8,
      isPopular: true,
      facility: ['Wahana Anak', 'Wahana Dewasa', 'Taman Anak']),
  TourismPlaceInternational(
      name: 'Antelope Canyon',
      location: 'Amerika Serikat',
      description:
          'Antelope Canyon merupakan sebuah celahan bumi hasil dari proses erosi batuan pasir Navajo karena angin dan air selama ribuan tahun. Pada musim angin muson, air hujan akan mengalir ke cekungan memanjang yang terletak di atas bagian celah ngarai.',
      ticketPrice: '\$4500',
      imageAsset: 'assets/images/antelope-canyon.jpg',
      rating: 4.8,
      isPopular: true,
      facility: ['Tempat Berfoto', 'Menaiki Unta', 'Tempat Bersejarah']),
];

var newTourismPlaceInternationalList = [
  TourismPlaceInternational(
      name: 'Cappadocia',
      location: 'Turki',
      description:
          'Cappadocia adalah sebuah daerah yang terletak di kota Göreme, Provinsi Nevsehir, Turki. Di daerah ini terdapat  sebuah taman nasional yang terdaftar dalam situs warisan dunia UNESCO. Taman ini berisi tempat-tempat bersejarah yang dilestarikan',
      ticketPrice: '\$2200',
      imageAsset: 'assets/images/cappadocia.jpg',
      rating: 4.8,
      isPopular: false,
      facility: ['Balon Udara', 'Menikmati Mendangan Dari Atas', 'Disediakan Mobil menuju lokasi']),
  TourismPlaceInternational(
      name: 'Museum Louvre',
      location: 'Prancis',
      description:
          'Museum Louvre adalah salah satu museum seni terbesar yang paling banyak dikunjungi dan sebuah monumen bersejarah di dunia. Museum Louvre terletak di Rive Droite Seine, Arondisemen pertama di Paris, Prancis. Hampir 35.000 benda dari zaman prasejarah hingga abad ke-19 dipamerkan di area seluas 60.600 meter persegi.',
      ticketPrice: '\$2900',
      imageAsset: 'assets/images/museum-lovure.jpg',
      rating: 4.8,
      isPopular: false,
      facility: ['Tempat Berfoto', 'Minum Gratis', 'Taman']),
  TourismPlaceInternational(
      name: 'Namsam Tower',
      location: 'Korea Selatan',
      description:
          'N Seoul Tower yang juga dikenal sebagai Menara Namsan, merupakan sebuah ikon kota Seoul yang menyuguhkan pemandangan panorama kota. Menara ini merupakan sebuah observatorium dan menara komunikasi di puncak Gunung Namsan yang merupakan pusat geografis kota ini.',
      ticketPrice: '\$2750',
      imageAsset: 'assets/images/namsam-tower.jpg',
      rating: 4.8,
      isPopular: false,
      facility: ['Tempat Berfoto', 'Menaiki Menara', 'Minum Gratis']),
];
