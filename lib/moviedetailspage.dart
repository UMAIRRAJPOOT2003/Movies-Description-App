import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'models/movie.dart';
class moviedetails extends StatelessWidget {
  const moviedetails({super.key, required this.movie});
final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(movie.title,style: TextStyle(color:Colors.red.shade800,fontWeight: FontWeight.bold,fontSize: 30),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body:Container(

            color:Colors.black,

            child:ListView(
              children: <Widget>[
                Container(
                    width:420,

                    child:Column(
                      children:<Widget>[
                        SizedBox(height:10),
                        Align(
                          alignment:Alignment.center,
                          child:Text("${movie.title} Posters",style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 15,)),

                        ),
                        SizedBox(height:10),
                        SizedBox(
                          height:200,
                          width:double.infinity,
                          child:ListView.builder(
                            scrollDirection:Axis.horizontal,
                            itemCount:movie.images.length,
                            itemBuilder:(context, index) {
                              return Card(
                                elevation: 4.0,
                                child: Image.network(movie.images[index]),
                              );
                            },

                          ),



                        ),
                        SizedBox(height:10),

                        Text("Awards",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(height:10),
                        Text(movie.awards,style:TextStyle(color:Colors.red.shade800,fontWeight: FontWeight.bold,),),
                        SizedBox(height:10),
                        Text("Genre",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(height:10),
                        Text(movie.genre,style:TextStyle(color:Colors.red.shade800,fontWeight: FontWeight.bold,),),
                        SizedBox(height:10),
                        Text("Country",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(height:10),
                        Text(movie.country,style:TextStyle(color:Colors.red.shade800,fontWeight: FontWeight.bold,),),
                        SizedBox(height:10),
                        Text("Imdb Rating",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(height:10),
                        Text(movie.imdbRating,style:TextStyle(color:Colors.red.shade800,fontWeight: FontWeight.bold,),),
                        SizedBox(height:10),
                        Text("Imdb Votes",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(height:10),
                        Text(movie.imdbVotes,style:TextStyle(color:Colors.red.shade800,fontWeight: FontWeight.bold,),),
                        SizedBox(height:10),
                        Text("language",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(height:10),
                        Text(movie.language,style:TextStyle(color:Colors.red.shade800,fontWeight: FontWeight.bold,),),
                        SizedBox(height:10),
                        Text("Duration",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                        Text(movie.runtime,style:TextStyle(color:Colors.red.shade800,fontWeight: FontWeight.bold,),),
                        SizedBox(height:10),

                      ],
                    )


                ),

              ],
            )
        )




    );
  }
}
