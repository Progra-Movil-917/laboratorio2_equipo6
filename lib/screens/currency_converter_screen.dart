import 'package:flutter/material.dart';

class CurrencyConverterScreen extends StatefulWidget {
  const CurrencyConverterScreen({super.key});

  @override
  _CurrencyConverterScreenState createState() => _CurrencyConverterScreenState();
}

class _CurrencyConverterScreenState extends State<CurrencyConverterScreen> {
  double cantidad = 0.0;
  double tasaCambioDolarLempira = 24.73; // Tasa de cambio de dólar a lempira
  double tasaCambioEuroLempira = 26.57; // Tasa de cambio de euro a lempira
  double tasaCambioLempiraDolar = 0.040; // Tasa de cambio de lempira a dólar
  double tasaCambioLempiraEuro = 0.037; // Tasa de cambio de lempira a euro
  String monedaOrigen = 'Dólar';
  String monedaDestino = 'Lempira';
  String resultado = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Calculadora de Cambio de Monedas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(labelText: 'Cantidad de la moneda'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  cantidad = double.parse(value);
                });
              },
            ),
            const SizedBox(height: 20.0),
            DropdownButtonFormField<String>(
              value: monedaOrigen,
              items: ['Dólar', 'Euro', 'Lempira'].map((String moneda) {
                return DropdownMenuItem<String>(
                  value: moneda,
                  child: Text(moneda),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  monedaOrigen = value!;
                });
              },
            ),
            const SizedBox(height: 20.0),
            DropdownButtonFormField<String>(
              value: monedaDestino,
              items: ['Lempira', 'Dólar', 'Euro'].map((String moneda) {
                return DropdownMenuItem<String>(
                  value: moneda,
                  child: Text(moneda),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  monedaDestino = value!;
                });
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  resultado = calcularCambio();
                });
              },
              child: Text('Calcular Cambio'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Conversión: $resultado',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }

  String calcularCambio() {
    double resultadoCambio = 0.0;
    if (monedaOrigen == 'Dólar' && monedaDestino == 'Lempira') {
      resultadoCambio = cantidad * tasaCambioDolarLempira;
    } else if (monedaOrigen == 'Euro' && monedaDestino == 'Lempira') {
      resultadoCambio = cantidad * tasaCambioEuroLempira;
    } else if (monedaOrigen == 'Lempira' && monedaDestino == 'Dólar') {
      resultadoCambio = cantidad * tasaCambioLempiraDolar;
    } else if (monedaOrigen == 'Lempira' && monedaDestino == 'Euro') {
      resultadoCambio = cantidad * tasaCambioLempiraEuro;
    }
    return resultadoCambio.toStringAsFixed(2);
  }
}