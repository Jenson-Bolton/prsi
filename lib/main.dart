import 'package:flutter/material.dart';
import 'game_page.dart';

void main() {
  runApp(const Prsi());
}

class Prsi extends StatelessWidget {
	const Prsi({super.key});

	// Root of application.
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Prší',
			theme: ThemeData(
				colorScheme: .fromSeed(seedColor: Colors.green),
			),
			home: const HomePage(),
		);
	}
}

class HomePage extends StatelessWidget {
	const HomePage({super.key});

	@override
  	Widget build(BuildContext contxt) {
		return MaterialApp(
			home: Scaffold(
				body: Center(
					child: HomeMenu(),
				),
			),
		);
	}
}

class HomeMenu extends StatelessWidget {
	const HomeMenu({super.key});

	@override
  	Widget build(BuildContext context) {
		return Column(
        	mainAxisAlignment: MainAxisAlignment.center,
			spacing: 16,
			children: <Widget>[
				Text('Prší'),
				MenuButton(
					text: 'Play',
					onPressed: () {
						Navigator.push(
							context,
							MaterialPageRoute(
								builder: (context) => const GamePage(),
							),
						);
					},
				),
				MenuButton(
					text: 'Help',
					onPressed: () {print('Help pressed');},
				),
				MenuButton(
					text: 'Settings',
					onPressed: () {print('Settings pressed');},
				),
			],
		);
  	}
}

class MenuButton extends StatelessWidget {
	final String text;
	final VoidCallback onPressed;

	const MenuButton({
		super.key,
		required this.text,
		required this.onPressed,
	});

	@override
	Widget build(BuildContext context) {
		return SizedBox(
			width: 220,
			height: 55,
			child: OutlinedButton(
				onPressed: onPressed,
				child: Text(
					text
				),
			),
		);
	}
}
