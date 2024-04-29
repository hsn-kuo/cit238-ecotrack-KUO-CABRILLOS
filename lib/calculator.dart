import 'package:flutter/material.dart';
import 'results.dart';



class EcologicalFootprintCalculator extends StatefulWidget {
  @override
  _EcologicalFootprintCalculatorState createState() =>
      _EcologicalFootprintCalculatorState();
}


class _EcologicalFootprintCalculatorState
    extends State<EcologicalFootprintCalculator> {
  double _sliderValue = 0.0;

  bool _carCheckbox = false;
  bool _publicTransitCheckbox = false;
  bool _bikingCheckbox = false;
  bool _walkingCheckbox = false;
  bool _conserveEnergyCheckbox = false;
  bool _recycleCompostCheckbox = false;
  bool _avoidPlasticsCheckbox = false;
  bool _sustainableProductsCheckbox = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ecological Footprint Calculator'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/calculator.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Energy Consumption
              Card(
                elevation: 5,
                margin: EdgeInsets.all(16.0),
                color: Color.fromARGB(185, 255, 251, 172),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.bolt, size: 30, color: Colors.green),
                          SizedBox(width: 8.0),
                          Text(
                            'Energy Consumption',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Average monthly electricity bill',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      DropdownButtonFormField(
                        decoration:
                            InputDecoration(labelText: 'Energy Sources'),
                        items: [
                          DropdownMenuItem(
                            child: Text('Grid Electricity'),
                            value: 'Grid Electricity',
                          ),
                          DropdownMenuItem(
                            child: Text('Solar Power'),
                            value: 'Solar Power',
                          ),
                          DropdownMenuItem(
                            child: Text('Renewable Sources'),
                            value: 'Renewable Sources',
                          ),
                        ],
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
              ),

              // Food Choices
              Card(
                elevation: 5,
                margin: EdgeInsets.all(16.0),
                color: Color.fromARGB(185, 255, 251, 172),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.fastfood, size: 30, color: Colors.green),
                          SizedBox(width: 8.0),
                          Text(
                            'Food Choices',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      DropdownButtonFormField(
                        decoration:
                            InputDecoration(labelText: 'Dietary preferences'),
                        items: [
                          DropdownMenuItem(
                            child: Text('Carnivorous'),
                            value: 'Carnivorous',
                          ),
                          DropdownMenuItem(
                            child: Text('Omnivorous'),
                            value: 'Omnivorous',
                          ),
                          DropdownMenuItem(
                            child: Text('Vegetarian'),
                            value: 'Vegetarian',
                          ),
                        ],
                        onChanged: (value) {},
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Frequency'),
                          Slider(
                            value: _sliderValue,
                            onChanged: (value) {
                              setState(() {
                                _sliderValue = value;
                              });
                            },
                            min: 0,
                            max: 100,
                            divisions: 100,
                            label: 'Frequency',
                            activeColor: Colors.green,
                            inactiveColor: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Water Usage
              Card(
                elevation: 5,
                margin: EdgeInsets.all(16.0),
                color: Color.fromARGB(185, 255, 251, 172),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.opacity, size: 30, color: Colors.green),
                          SizedBox(width: 8.0),
                          Text(
                            'Water Usage',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Average daily water consumption (Liters)',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

// Waste Generation
              Card(
                elevation: 5,
                margin: EdgeInsets.all(16.0),
                color: Color.fromARGB(185, 255, 251, 172),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.delete, size: 30, color: Colors.green),
                          SizedBox(width: 8.0),
                          Text(
                            'Waste Generation',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Average weekly waste output (bag/s)',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

// Transportation
              Card(
                elevation: 5,
                margin: EdgeInsets.all(16.0),
                color: Color.fromARGB(185, 255, 251, 172),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.directions_car,
                              size: 30, color: Colors.green),
                          SizedBox(width: 8.0),
                          Text(
                            'Transportation',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Average distance traveled weekly (km)',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      CheckboxListTile(
                        title: Text('Car'),
                        value: _carCheckbox,
                        onChanged: (value) {
                          setState(() {
                            _carCheckbox = value ?? false;
                          });
                        },
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Colors.green,
                      ),
                      CheckboxListTile(
                        title: Text('Public Transit'),
                        value: _publicTransitCheckbox,
                        onChanged: (value) {
                          setState(() {
                            _publicTransitCheckbox = value ?? false;
                          });
                        },
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Colors.green,
                      ),
                      CheckboxListTile(
                        title: Text('Biking'),
                        value: _bikingCheckbox,
                        onChanged: (value) {
                          setState(() {
                            _bikingCheckbox = value ?? false;
                          });
                        },
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Colors.green,
                      ),
                      CheckboxListTile(
                        title: Text('Walking'),
                        value: _walkingCheckbox,
                        onChanged: (value) {
                          setState(() {
                            _walkingCheckbox = value ?? false;
                          });
                        },
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Colors.green,
                      ),
                    ],
                  ),
                ),
              ),

// Lifestyle Choices
              Card(
                elevation: 5,
                margin: EdgeInsets.all(16.0),
                color: Color.fromARGB(185, 255, 251, 172),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.favorite, size: 30, color: Colors.green),
                          SizedBox(width: 8.0),
                          Text(
                            'Lifestyle Choices',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      CheckboxListTile(
                        title: Text('Conserve Energy'),
                        value: _conserveEnergyCheckbox,
                        onChanged: (value) {
                          setState(() {
                            _conserveEnergyCheckbox = value ?? false;
                          });
                        },
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Colors.green,
                      ),
                      CheckboxListTile(
                        title: Text('Recycle and Compost'),
                        value: _recycleCompostCheckbox,
                        onChanged: (value) {
                          setState(() {
                            _recycleCompostCheckbox = value ?? false;
                          });
                        },
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Colors.green,
                      ),
                      CheckboxListTile(
                        title: Text('Avoid Single-Use Plastics'),
                        value: _avoidPlasticsCheckbox,
                        onChanged: (value) {
                          setState(() {
                            _avoidPlasticsCheckbox = value ?? false;
                          });
                        },
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Colors.green,
                      ),
                      CheckboxListTile(
                        title: Text('Choose Sustainable Products'),
                        value: _sustainableProductsCheckbox,
                        onChanged: (value) {
                          setState(() {
                            _sustainableProductsCheckbox = value ?? false;
                          });
                        },
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Colors.green,
                      ),
                    ],
                  ),
                ),
              ),

              // Calculate Button
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_validateForm()) {
                      // Navigate to the ResultsScreen when the button is pressed
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                EcologicalFootprintAnalysisApp()),
                      );
                    }
                  },
                  child: Text('Calculate Footprint'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool _validateForm() {
    // Perform form validation here
    // Return true if the form is valid, otherwise show SnackBar and return false
    return true;
  }
}
