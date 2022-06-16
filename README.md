# Flutter comprenssive guide

### 1 Create a project & open VS code in that folder
	```bash
	flutter create flutter_guide
	```
	
### 2 Copy the pubspec.yml file and run in the terminal
	```bash
	flutter packages get
	```
	
### 3 Add the zoom level in VS
- Create the folder .vscode and the file inside: settings.json
	```json
	{
		"window.zoomLevel": 3
	}
	```
	
### 4 Edit /lib/main.dart
- Create hello world
    ```dart
    import 'backage:flutter/material.dart';

    void main() => runApp(MyApp());

    class MyApp extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return MaterialApp(home: Text('Hello'),);
        }
    }
    ```
    Go to VS control menu, tab on Debug > Run without debugging
