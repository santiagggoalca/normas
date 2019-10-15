import 'package:flutter/material.dart';
import 'package:normas/references.dart';
import 'APA.dart';
import 'IEEE.dart';

class ListRules extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Guias CAUN"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric( vertical: 20 ),
            child: Text(
              "Guía para Normas",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ),
          Divider(),
          Container(
            margin: EdgeInsets.symmetric( horizontal: 20, vertical: 20 ),
            child: RichText(
              text: TextSpan(
                style: TextStyle( color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: "Estilos bibliográficos\n",
                    style: TextStyle( fontWeight: FontWeight.bold )
                  ),
                  TextSpan(
                    text: "Indican la forma de citar las ideas de otros autores y la elaboración de las referencias bibliográficas correspondientes."
                  ),
                  TextSpan(
                    text: "\n\nCita directa o textual\n",
                    style: TextStyle( fontWeight: FontWeight.bold )
                  ),
                  TextSpan(
                    text: "Es la transcripción textual de la idea, es decir tal cual está en el documento donde se está tomando la idea. Esta cita se usa cuando se requiere registrar de forma fidedigna la idea de otro autor. Cómo norma general, cuando las ideas son de un documento legal, de datos estadísticos, de fórmulas, de teorías o métodos, se deben registrar de forma textual."
                  ),
                  TextSpan(
                    text: "\n\nCita textual breve\n",
                    style: TextStyle( fontWeight: FontWeight.bold )
                  ),
                  TextSpan(
                    text: "Es la que ocupa hasta cinco renglones, a excepción del estilo APA que ocupa hasta 40 palabras. Cuando la cita textual es breve, se registra entre comillas."
                  ),
                  TextSpan(
                    text: "\n\nCita textual extensa\n",
                    style: TextStyle( fontWeight: FontWeight.bold )
                  ),
                  TextSpan(
                    text: "Es la que ocupa más de cinco renglones, a excepción del estilo APA que ocupa más de 40 palabras. Ésta se registra como una inserción en el texto con sangría de cinco espacios y sin comillas",
                  ),
                  TextSpan(
                    text: "\n\nCita indirecta o parafraseo\n",
                    style: TextStyle( fontWeight: FontWeight.bold )
                  ),
                  TextSpan(
                    text: "Es la idea de otros autores con las palabras de quién escribe, es decir es una construcción propia a partir del análisis del texto y la comparación con las reflexiones propias, sin cambiar la idea que expresa el autor del documento. Ésta se registra en el texto sin comillas, y los datos de la fuente pueden ir en el texto o al final de la cita."
                  ),
                  TextSpan(
                    text: "\n\nCita mencionando la fuente al final de la idea\n",
                    style: TextStyle( fontWeight: FontWeight.bold )
                  ),
                  TextSpan(
                    text: "La cita indirecta o parafraseada se escribe dentro del texto sin comillas y al final de la idea y antes del signo de puntuación se registra la fuente.",
                  ),
                  TextSpan(
                    text: "\n\nCita mencionando autor en el texto\n",
                    style: TextStyle( fontWeight: FontWeight.bold )
                  ),
                  TextSpan(
                    text: "A propósito de la cita indirecta, esta se escribe dentro del texto sin comillas.",
                  ),
                  TextSpan(
                    text: "\n\nReferencia bibliográfica\n",
                    style: TextStyle( fontWeight: FontWeight.bold )
                  ),
                  TextSpan(
                    text: "Conjunto de elementos que permite la identificación de la fuente de la que se toma la idea",
                  ),
                  TextSpan(
                    text: "\n\nElementos de una referencia\n",
                    style: TextStyle( fontWeight: FontWeight.bold )
                  ),
                  TextSpan(
                    text: "Título - Autor - Año de publicación - Medio de publicación - Ciudad de publicación - Ciudad de publicación – Editorial - Título de la revista, número y páginas - Disponibilidad y acceso para los documentos en línea\nEl orden y la especificación de los elementos de la referencia bibliográfica, varían de acuerdo al estilo bibliográfico y el tipo de documento (revista, artículo, documento electrónico y otros).",
                  ),
                ]
              ),
            ),
          ),

          Column(
            children: <Widget>[
              InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Apa(),
                  )
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ListTile(
                        title: Text("Normas APA"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Divider(),
          Column(
            children: <Widget>[
              InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Ieee(),
                  )
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ListTile(
                        title: Text("Normas IEE"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Divider(),
          Column(
            children: <Widget>[
              InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => References(),
                  )
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ListTile(
                        title: Text("Referencias"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}