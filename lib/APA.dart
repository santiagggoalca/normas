import 'package:flutter/material.dart';

class Apa extends StatelessWidget {
  
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
                  title: Text("Normas APA",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      )
                  ),
                  background: Image.network(
                    "http://www.uniminuto.edu/documents/1003333/4356409/NormasAPA1-01.jpg/57e340c6-21fa-423a-b995-56e6e76a2c7f?t=1449069963454",
                    fit: BoxFit.cover,
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
                                "APA"
                              ),
                            ),
                            Text(
                              "Autor, año"
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
                        text: "La cita textual breve ocupa hasta 40 palabras, se escribe dentro del texto entre comillas, y la fuente de la cita (autor, año de publicación y página) de la obra citada se registra en el texto o al final de la idea.",
                      ),
                      TextSpan(
                        text: "\n\nCita textual extensa\n",
                        style: TextStyle( fontWeight: FontWeight.bold )
                      ),
                      TextSpan(
                        text: "En APA la cita directa extensa es la idea que se transcribe textualmente y que tiene más de 40 palabras. Se escribe sin comillas, en renglón aparte, como una inserción en el texto, a una sangría de cinco espacios a la izquierda y la fuente de la cita (autor, año de publicación y página) de la obra citada se registra en el texto o al final de la idea.\n\n",
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
                          "APA",
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
                            "De acuerdo con Castañeda (2014), Carmona y Poveda (2012) y Henao et al. (2012)",
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
                            "Como lo demuestran Castañeda en el 2014, Carmona y Poveda en el 2012 y Henao et al. En el 2012",
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
                            "Como lo demuestran (Castañeda, 2014; Carmona & Poveda, 2012; Henao et al., 2012)",
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
                            "(Castañeda,2014;Carmona&Poveda,2012;Henaoetal.,2012)",
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
                              text: "Apellido, Iniciales nombre autor. (Año). Título en cursiva. Ciudad: Editorial.\n\n",
                            ),
                            TextSpan(
                              text: "Referencia para artículo de revista:\n",
                              style: TextStyle( fontWeight: FontWeight.bold )
                            ),
                            TextSpan(
                              text: "Apellido, Iniciales nombre autor. (Año). Título del artículo. Título de la revista en cursiva, Volumen (número), página inicial-página final.\n\n",
                            ),
                            TextSpan(
                              text: "Referencia para artículo de revista en línea:\n",
                              style: TextStyle( fontWeight: FontWeight.bold )
                            ),
                            TextSpan(
                              text: "Apellido, Iniciales nombre autor. (Año). Título del artículo. Título de la revista en cursiva volumen (número), página inicial página final. Recuperado desde URL o DOI del artículo.\n\n",
                            ),
                            TextSpan(
                              text: "Referencia para tesis:\n",
                              style: TextStyle( fontWeight: FontWeight.bold )
                            ),
                            TextSpan(
                              text: "Apellido, Iniciales nombre autor. (Año). Título de la tesis en cursiva (Mención del tipo de tesis, Universidad, Ciudad, País). Recuperada de URL.\n\n",
                            ),
                            TextSpan(
                              text: "Referencia para ponencia presentada en congresos y otras reuniones:\n",
                              style: TextStyle( fontWeight: FontWeight.bold )
                            ),
                            TextSpan(
                              text: "Apellido, Iniciales nombre autor. (Año). Título de la ponencia. Trabajo presentado en Nombre de la reunión en cursiva, Editor.\n\n",
                            ),
                            TextSpan(
                              text: "Referencia para Medios audiovisuales, software y documentos de archivo(nImagen/Pintura/Mural/Escultura/Carta/Mapa/Serie de televisión/Software de computador):\n",
                              style: TextStyle( fontWeight: FontWeight.bold )
                            ),
                            TextSpan(
                              text: "Apellido, Iniciales nombre autor. (Año). Título en cursiva [formato]. Ciudad: Lugar donde está.\n\n",
                            ),
                            TextSpan(
                              text: "Referencia para documento legal:\n",
                              style: TextStyle( fontWeight: FontWeight.bold )
                            ),
                            TextSpan(
                              text: "Número y título de la ley/acuerdo/resolución, fecha de promulgación mes día año, Fuente de publicación, (abreviatura del país).",
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