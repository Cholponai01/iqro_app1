class ProfilePresenter {
  const ProfilePresenter({required this.name, required this.image});
  final String name;
  final String image;
}

const ProfilePresenter tadjvid = ProfilePresenter(
  image: 'image_1',
  name: 'Таджвид',
);
const ProfilePresenter quran = ProfilePresenter(
  image: 'image_2',
  name: 'Куран угуу',
);
const ProfilePresenter mechit = ProfilePresenter(
  image: 'image_3',
  name: 'Мечит',
);
const ProfilePresenter islamcalendar = ProfilePresenter(
  image: 'image_4',
  name: 'Ислам календары',
);
const ProfilePresenter duba = ProfilePresenter(
  image: 'image_5',
  name: 'Дуба',
);
const ProfilePresenter tasbi = ProfilePresenter(
  image: 'image_6',
  name: 'Тасби',
);
const ProfilePresenter namesOfAllah = ProfilePresenter(
  image: 'image_7',
  name: 'Aллахтын ысымдары',
);
const ProfilePresenter compas = ProfilePresenter(
  image: 'image_8',
  name: 'Компас',
);
const ProfilePresenter ashkana = ProfilePresenter(
  image: 'image_9',
  name: 'Ашканалар',
);

List<ProfilePresenter> profilePresenterList = [
  tadjvid,
  quran,
  mechit,
  islamcalendar,
  duba,
  tasbi,
  namesOfAllah,
  compas,
  ashkana
];
