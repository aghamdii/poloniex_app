import 'package:chopper/chopper.dart';
import 'package:injecteo/injecteo.dart';

@Inject(as: ChopperClient)
class ApiChopperClient extends ChopperClient {
  ApiChopperClient()
      : super(
          converter: const JsonConverter(),
          errorConverter: const JsonConverter(),
        );
}
