import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectTransportation = Transportation.car;
  bool wantsBrekast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer mode'),
          subtitle: const Text('Controler adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: const Text('vehiculo de transporte'),
          subtitle: Text('$selectTransportation'),
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Conducir el carro'),
              value: Transportation.car,
              groupValue: selectTransportation,
              onChanged: (value) => setState(() {
                selectTransportation = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text('By plane'),
              subtitle: const Text('Conducir el avión'),
              value: Transportation.plane,
              groupValue: selectTransportation,
              onChanged: (value) => setState(() {
                selectTransportation = Transportation.plane;
              }),
            ),
            RadioListTile(
              title: const Text('By boat'),
              subtitle: const Text('Conducir el barco'),
              value: Transportation.boat,
              groupValue: selectTransportation,
              onChanged: (value) => setState(() {
                selectTransportation = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text('By submarine'),
              subtitle: const Text('Conducir el submarino'),
              value: Transportation.submarine,
              groupValue: selectTransportation,
              onChanged: (value) => setState(() {
                selectTransportation = Transportation.submarine;
              }),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('¿Desayuno?'),
          value: wantsBrekast,
          onChanged: (value) => setState(() {
            wantsBrekast = !wantsBrekast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Almuerzo?'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('Cena?'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}
