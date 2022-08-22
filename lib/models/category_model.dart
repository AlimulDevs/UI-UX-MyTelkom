class CategoryModel {
  String icons;
  String text;

  CategoryModel({required this.icons, required this.text});
}

List<CategoryModel> categoryModel = [
  CategoryModel(icons: 'assets/images/internet_icon.png', text: 'Internet'),
  CategoryModel(icons: 'assets/images/telepon_icon.png', text: 'Telpon'),
  CategoryModel(icons: 'assets/images/sms_icon.png', text: 'SMS'),
  CategoryModel(icons: 'assets/images/roaming_icon.png', text: 'Roaming'),
  CategoryModel(icons: 'assets/images/hiburan_icon.png', text: 'Hiburan'),
  CategoryModel(icons: 'assets/images/unggulan_icon.png', text: 'Unggulan'),
  CategoryModel(icons: 'assets/images/tersimpan_icon.png', text: 'Tersimpan'),
  CategoryModel(icons: 'assets/images/riwayat_icon.png', text: 'Riwayat'),
];
