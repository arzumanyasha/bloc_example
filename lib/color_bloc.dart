import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ColorEvent {
  // ignore: constant_identifier_names
  event_red,
  // ignore: constant_identifier_names
  event_green
}

class ColorBloc extends Bloc<ColorEvent, Color> {
  Color _color = Colors.red;

  ColorBloc(Color initialState) : super(initialState);

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    _color = (event == ColorEvent.event_red) ? Colors.red : Colors.green;
    yield _color;
  }


}
