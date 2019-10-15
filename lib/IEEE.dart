import 'package:flutter/material.dart';

class Ieee extends StatelessWidget {
  
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
                  title: Text("Normas IEEE",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      )
                  ),
                  background: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/5/56/Ieee_blue.jpg",
                  ),
                ),
                iconTheme: IconThemeData(
                  color: Colors.black,
                ),
                    
              ),
              
            ];
          },
          body: ListView(
            padding: EdgeInsets.all(0),
            children: <Widget>[

              Column(
                children: <Widget>[

                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 50),
                              child: Text(
                                "Sistema de citación Estilo",
                                style: TextStyle( fontWeight: FontWeight.bold )
                              ),
                            ),
                            Text(
                              "Sistema",
                              style: TextStyle( fontWeight: FontWeight.bold )
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 174),
                              child: Text(
                                "IEEE"
                              ),
                            ),
                            Text(
                              "Orden de mención"
                            )                                               
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric( horizontal: 20 ),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle( color: Colors.black),
                    children: [
                      TextSpan(
                        text: "\nCita textual breve\n",
                        style: TextStyle( fontWeight: FontWeight.bold )
                      ),
                      TextSpan(
                        text: "La cita textual breve es la que ocupa hasta cinco renglones, se inserta dentro del texto entre comillas, los datos de la fuente se registran en el texto o al final de la idea.",
                      ),
                      TextSpan(
                        text: "\n\nCita textual extensa\n",
                        style: TextStyle( fontWeight: FontWeight.bold )
                      ),
                      TextSpan(
                        text: "Cita directa extensa es la idea que se transcribe textualmente y que ocupa más de cinco renglones. Se escribe sin comillas en renglón aparte, como una inserción en el texto, centrada a una sangría de cinco espacios a ambos lados, el tamaño de fuente puede ser un punto menos que el texto corriente (…) y los datos de la fuente pueden ir registrados en el texto o al final de la idea.\n\n",
                      ),
                    ]
                  ),
                ),
              ),

              Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          width: 210,
                          child: Text(
                            "Forma",
                            style: TextStyle( fontWeight: FontWeight.bold )
                          ),
                        ),
                        Text(
                          "IEEE",
                          style: TextStyle( fontWeight: FontWeight.bold )
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          width: 200,
                          child: Text(
                            "Mencionando al autor en el texto"
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 150,
                          child: Text(
                            "De acuerdo con Castañeda [1], Carmona y Poveda [2] y Henao et al. [3",
                          ),
                        )                                             
                      ],
                    ),
                    Divider(),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          width: 200,
                          child: Text(
                            "Mencionando al autor y año en el texto"
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 150,
                          child: Text(
                            "Como lo demuestran Castañeda en el 2014 [1], Carmona y Poveda en el 2012 [2] y Henao et al. En el 2012 [3]",
                          ),
                        )                                             
                      ],
                    ),
                    Divider(),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          width: 200,
                          child: Text(
                            "En el texto sin mencionar el autor y año"
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 150,
                          child: Text(
                            "Como se demuestra en [1]-[3]",
                          ),
                        )                                             
                      ],
                    ),
                    Divider(),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          width: 200,
                          child: Text(
                            "Al final de la idea"
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 150,
                          child: Text(
                            "[1]-[3]",
                          ),
                        )                                             
                      ],
                    ),
                    
                    Container(
                      margin: EdgeInsets.symmetric( horizontal: 20, vertical: 20 ),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle( color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Referencias\n\n",
                              style: TextStyle( fontWeight: FontWeight.bold )
                            ),
                            TextSpan(
                              text: "Referencia para libro:\n",
                              style: TextStyle( fontWeight: FontWeight.bold )
                            ),
                            TextSpan(
                              text: "[Número de orden de citación en el texto] Iniciales del nombre y apellido del autor, Título del libro en cursiva. Ciudad de publicación: Editorial, año.\n\n",
                            ),
                            TextSpan(
                              text: "Referencia para artículo de revista:\n",
                              style: TextStyle( fontWeight: FontWeight.bold )
                            ),
                            TextSpan(
                              text: "[Número de orden de citación en el texto] Iniciales del nombre y apellido del autor, “título del artículo entre comillas,” Título abreviado de la revista en cursiva, Volumen, número, página inicial página final del artículo, Mes y año.\n\n",
                            ),
                            TextSpan(
                              text: "Referencia para artículo de revista en línea:\n",
                              style: TextStyle( fontWeight: FontWeight.bold )
                            ),
                            TextSpan(
                              text: "[Número de orden de citación en el texto] Iniciales nombre y Apellido autor, “Título del artículo entre comillas,” Título abreviado de la revista en cursiva, volumen, número, página inicial página final del artículo, mes. Año. [En línea]. Disponible: URL o DOI del artículo.\n\n",
                            ),
                            TextSpan(
                              text: "Referencia para tesis:\n",
                              style: TextStyle( fontWeight: FontWeight.bold )
                            ),
                            TextSpan(
                              text: "[Número de orden de citación en el texto] Iniciales nombre y Apellido autor, “Título la tesis Entre comillas,” Mención del tipo de tesis, nombre abreviado del departamento o programa, nombre abreviado de la universidad, ciudad, país, año. Disponible URL o DOI.\n\n",
                            ),
                            TextSpan(
                              text: "Referencia para ponencia presentada en congresos y otras reuniones:\n",
                              style: TextStyle( fontWeight: FontWeight.bold )
                            ),
                            TextSpan(
                              text: "[Número de orden de citación en el texto] Iniciales nombre y Apellido autor, “Título de la ponencia,” en Nombre abreviado de la reunión, Ciudad, año, páginas.\n\n",
                            ),
                            TextSpan(
                              text: "Referencia para Medios audiovisuales, software y documentos de archivo(nImagen/Pintura/Mural/Escultura/Carta/Mapa/Serie de televisión/Software de computador):\n",
                              style: TextStyle( fontWeight: FontWeight.bold )
                            ),
                            TextSpan(
                              text: "[Número de orden de citación en el texto] Iniciales del nombre y apellido del autor, Título en cursiva. [Formato]. Ciudad: Lugar donde está, año.\n\n",
                            ),
                            TextSpan(
                              text: "Referencia para documento legal:\n",
                              style: TextStyle( fontWeight: FontWeight.bold )
                            ),
                            TextSpan(
                              text: "[Número de orden de citación en el texto] Número y título de la ley / Acuerdo / resolución en cursiva, Fuente de publicación, (abreviatura del país), fecha de promulgación Mes, día, año.",
                            ),
                          ]
                        )
                      )
                    )
                  ],
                ),
              ),   
            ],
          ),
        ),
      ),
    );
  }
}

/* 


  */