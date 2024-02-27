import 'package:flutter/material.dart';
import 'package:myapp/ui/bloques/preguntasF1.dart';

class FormularioCompetencias extends StatelessWidget {
  FormularioCompetencias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Competencias F1"),
        ),
        body: Column(
          children: [
            PreguntaCheckBox(),
            const SnackBarPage(),
          ],
        ));
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FilledButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('Felicitaciones! Completaste la encuesta!'),
            action: SnackBarAction(
              label: 'Reiniciar?',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Finalizar'),
      ),
    );
  }
}

class PreguntaCheckBox extends StatelessWidget {
  PreguntaCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("data"),
        Text("data 1"),
        const SizedBox(
          width: 50,
          height: 50,
        ),
        Text("data 2"),
        multipleCheckbox()
      ],
    );
  }
}

class multipleCheckbox extends StatefulWidget {
  multipleCheckbox({super.key});

  @override
  State<multipleCheckbox> createState() => _multipleCheckboxState();
}

class _multipleCheckboxState extends State<multipleCheckbox> {
  bool checkboxValue1 = true;
  bool checkboxValue2 = true;
  bool checkboxValue3 = true;

  @override
  Widget build(BuildContext context) {
    bool checkboxValue1 = false;
    bool checkboxValue2 = true;
    bool checkboxValue3 = true;
    return Column(
      children: <Widget>[
        // Primera opcion de la lista
        CheckboxListTile(
          value: checkboxValue1,
          onChanged: (bool? value) // el valor de default es nulo
              {
            setState(() {
              checkboxValue1 = value!;
            });
          },
          title: const Text("Opcion 1"),
          subtitle: const Text("Descripcion de la opcion 1"),
        ),

        const Divider(height: 12),

        CheckboxListTile(
          value: checkboxValue2,
          onChanged: (bool? value) // el valor de default es nulo
              {
            setState(() {
              checkboxValue2 = value!;
            });
          },
          title: const Text("Opcion 2"),
          subtitle: const Text("Descripcion de la opcion 2"),
        ),

        const Divider(height: 12),
        CheckboxListTile(
          value: checkboxValue3,
          onChanged: (bool? value) // el valor de default es nulo
              {
            setState(() {
              checkboxValue3 = value!;
            });
          },
          title: const Text("Opcion 3"),
          subtitle: const Text("Descripcion de la opcion 3"),
        ),

        const Divider(height: 12),
      ],
    );
  }
}
