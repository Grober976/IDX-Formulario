import 'package:flutter/material.dart';
import 'package:myapp/ui/bloques/preguntasF1.dart';

class FormularioCompetencias extends StatelessWidget {
  const FormularioCompetencias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Competencias F1"),
      ),
      body: _CompetenciasView(),

    );
  }
}

class _CompetenciasView extends StatelessWidget {
  const _CompetenciasView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listadoPreguntas.length,
      itemBuilder: (context, index) {
        final PreguntasF1 = listadoPreguntas[index];
        return Text("data");
      },

      );
  }
}