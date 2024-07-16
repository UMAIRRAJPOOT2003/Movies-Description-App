import 'package:flutter/material.dart';
import 'package:movieappwithapi/providers/movie_provider.dart';
import 'package:provider/provider.dart';

import 'homepage.dart';

void main() =>runApp(ChangeNotifierProvider(
  create: (context)=>MovieProvider(),
  child: new MaterialApp(

    home:homepage(),
  ),
));