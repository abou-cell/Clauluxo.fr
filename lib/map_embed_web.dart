import 'dart:html' as html;
import 'dart:ui_web' as ui_web;

import 'package:flutter/widgets.dart';

const _mapEmbedUrl = 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2896.4525927437985!2d5.413858799999999!3d43.4511475!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12c993f6845e653f:0xb8b142df476df5ec!2sCentre%20de%20Luxopuncture%20Claudine%20Am%C3%A9rigo!5e0!3m2!1sfr!2sfr!4v1770476515356!5m2!1sfr!2sfr';
bool _registered = false;

Widget buildGoogleMapEmbed() {
  if (!_registered) {
    ui_web.platformViewRegistry.registerViewFactory(
      'clauluxo-google-map',
      (int viewId) {
        final frame = html.IFrameElement()
          ..src = _mapEmbedUrl
          ..style.border = '0'
          ..style.width = '100%'
          ..style.height = '100%'
          ..setAttribute('allowfullscreen', '')
          ..setAttribute('loading', 'lazy')
          ..setAttribute('referrerpolicy', 'no-referrer-when-downgrade');
        return frame;
      },
    );
    _registered = true;
  }
  return const HtmlElementView(viewType: 'clauluxo-google-map');
}
