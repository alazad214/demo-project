import 'package:provider/provider.dart';

import '../provider/generic_di_provider.dart';
import '../provider/image_provider.dart';

var providers = [
  ChangeNotifierProvider<GenericDi>(
    create: ((context) => GenericDi()),
  ),
  ChangeNotifierProvider<ImagePickerProvider>(
    create: ((context) => ImagePickerProvider()),
  ),
];
