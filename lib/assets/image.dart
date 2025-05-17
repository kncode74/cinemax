class Icon {
  final String logo = imagePath('logo', 'png');
  final String placeholder = imagePath('placeholder', 'svg');
}

final icon = Icon();

String imagePath(String file, [String extension = 'svg']) =>
    'assets/$file.$extension';
