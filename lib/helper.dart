import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home'),
    );
  }
}

// class Search extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Search'),
//     );
//   }
// }

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'This is a Stateful Widget',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 20),
          GestureDetector(
              onTap: _incrementCounter,
              child: Text(
                'Click on me',
                style: TextStyle(fontSize: 57),
              )),
          SizedBox(height: 20),
          Text(
            '$_counter',
            style: TextStyle(fontSize: 40),
          ),
        ],
      ),
    );
  }
}

// class Search extends StatefulWidget {
//   const Search({Key? key}) : super(key: key);

//   @override
//   _SearchState createState() => _SearchState();
// }

// class _SearchState extends State<Search> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Friends'),
//         centerTitle: true,
//       ),
//       body: ListView.builder(
//           itemCount: 25,
//           itemBuilder: (context, index) => Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   "Searching ....",
//                   style: TextStyle(fontSize: 40),
//                 ),
//               )),
//     );
//   }
// }

class Friends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Friends'),
    );
  }
}

class Balance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Balance'),
    );
  }
}
