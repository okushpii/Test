import 'package:colour_manager/main/dart/com/colourmanager/context/colour_context.dart';
import 'package:colour_manager/main/dart/com/colourmanager/facade/colour/colour_facade.dart';
import 'package:colour_manager/main/dart/com/colourmanager/service/colour/colour_service.dart';
import 'package:colour_manager/main/dart/com/colourmanager/service/util/random_service.dart';

class ApplicationContext {

  ColourFacade getInitColourFacade(){
     return ColourFacade(ColourService(ColourContext()), RandomService());
  }
}
