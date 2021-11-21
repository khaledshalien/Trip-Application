import 'package:flutter/material.dart';

class MakePage extends StatelessWidget {
  final image;
  final title;
  final description;
  final numPage;
  int totalPage = 4;

  MakePage({required this.image,required this.title,required this.description,required this.numPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [
              0.3,0.9
            ],
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.2),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(numPage.toString(),style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                  Text('/'+totalPage.toString(),style: TextStyle(color: Colors.white,fontSize: 15,),),
                ],
              ),
              Expanded(
                  child: Column
                    (
                    mainAxisAlignment:MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(Icons.star,size: 15,color: Colors.yellow,),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(Icons.star,size: 15,color: Colors.yellow,),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(Icons.star,size: 15,color: Colors.yellow,),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(Icons.star,size: 15,color: Colors.yellow,),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Icon(Icons.star,size: 15,color: Colors.grey,),
                          ),
                          Text("0.4",style: TextStyle(color: Colors.white70),),
                          SizedBox(width: 5,),
                          Text("(2300)",style: TextStyle(color: Colors.white60,fontSize: 12),),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: EdgeInsets.only(right: 50),
                        child: Text(description,style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 15,height: 1.9,),),
                      ),
                      SizedBox(height: 20,),
                      Text("READ MORE",style: TextStyle(color: Colors.white),),
                      SizedBox(height: 30,),
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}