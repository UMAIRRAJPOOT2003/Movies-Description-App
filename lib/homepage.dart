import 'package:flutter/material.dart';
import 'package:movieappwithapi/moviedetailspage.dart';
import 'package:provider/provider.dart';
import 'package:movieappwithapi/providers/movie_provider.dart';



class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    Provider.of<MovieProvider>(context, listen: false).loadMovies(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final value = Provider.of<MovieProvider>(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Stack(
          children: [
            AppBar(
              centerTitle: true,
              backgroundColor: Colors.black,
              elevation: 0, // Remove the AppBar elevation if needed
            ),
            Positioned(
              right: 140, // Adjust this value based on image width
              top: -20,
              child: Image.asset(
                "assets/images/ournetflix2.png",
                fit:BoxFit.cover,
                width: 130, // Adjust width as needed
                height: 130, // Adjust height as needed
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
          itemCount: value.movieList.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.black,
              child:ExpansionTile(title: Text(value.movieList[index].title,style: TextStyle(
                color: Colors.red.shade600,
                fontWeight: FontWeight.bold,
              ),),
              subtitle: Text('Director: ${value.movieList[index].director}',style: TextStyle(
                    color: Colors.white,
                     fontWeight: FontWeight.bold,
                   ),
              ),
              leading: CircleAvatar(
                     backgroundImage: AssetImage("assets/images/ournetflix2.png"),
                 ),
                children: <Widget>[
                  Container(
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Actors :',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
                        Text(value.movieList[index].actors,style: TextStyle(
                          color: Colors.red.shade600,
                          fontWeight: FontWeight.bold,
                        ),),

                        SizedBox(height: 10,),

                        Text('Released :',style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),),

                        Text(value.movieList[index].released,style: TextStyle(
                          color: Colors.red.shade600,
                          fontWeight: FontWeight.bold,
                        ),),

                        SizedBox(height: 10,),

                        Text('Plot :',style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),),

                        Text(value.movieList[index].plot,style: TextStyle(
                          color: Colors.red.shade600,
                          fontWeight: FontWeight.bold,
                        ),),
                          SizedBox(height: 10,),
                          Center(
                             child: TextButton(
                               onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>moviedetails(movie:value.movieList[index],)));
            },



                                 child:Text('Read More......',style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20,)),
                          ),
                          ),


                      ],
                    )
                  ),
                ],
              ),
            );
            // return Container(
            //   color: Colors.black,

            //   child: ListTile(
            //     title: Text(
            //       value.movieList[index].title,
            //       style: TextStyle(
            //         color: Colors.red.shade600,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //     subtitle: Text(value.movieList[index].director,
            //       style: TextStyle(
            //         color: Colors.red.shade600,
            //         fontWeight: FontWeight.bold,
            //       ),),
            //     trailing: Icon(Icons.sunny),
            //
            //     leading: CircleAvatar(
            //       backgroundImage: AssetImage("assets/images/ournetflix2.png"),
            //     ),
            // ),
           // );
          },
        ),
      ),
    );
  }
}
