import 'package:colour_manager/main/dart/com/colourmanager/controller/context/application_context.dart';
import 'package:colour_manager/main/dart/com/colourmanager/facade/colour/colour_facade.dart';

class ColourController {

  ColourFacade _colourFacade;

  ColourController(){
    _colourFacade = ApplicationContext().getInitColourFacade();
  }

  int getRandomColour() =>  _colourFacade.getRandomColour();
}
