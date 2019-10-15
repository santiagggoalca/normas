import 'package:flutter/material.dart';

class References extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white,
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Referencias",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      )
                  ),
                  /* background: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/5/56/Ieee_blue.jpg",
                  ), */
                ),
                iconTheme: IconThemeData(
                  color: Colors.black,
                ),
                    
              ),
              
            ];
          },
          body: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle( color: Colors.black),
                    children: [
                      TextSpan(
                        text: "Transcripción de\n",
                        style: TextStyle( fontWeight: FontWeight.bold )
                      ),
                      TextSpan(
                        text: "Estilos Bibliográficos para citar debidamente sin incurrir en infracción de los derechos de autor",
                      ),
                      TextSpan(
                        text: "\n\nConferencia o autora\n",
                        style: TextStyle( fontWeight: FontWeight.bold )
                      ),
                      TextSpan(
                        text: "Dora María Gallego Hincapié",
                      )
                    ]
                  )
                ),
              )
            ],
          )
        )
      )
    );
  }
}