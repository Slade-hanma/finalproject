import 'package:flutter/material.dart';
import '../models/entity.dart'; // Assuming this is your model for the profile (Entity)
import '../models/foodrate.dart'; // Assuming this is your model for Food


class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // Default Entity instance
  Entity entity = Entity(
    name: '',
    age: 0,
    gender: Gender.female, // Default gender
    birthday: '',
    phoneNumber: '',
    status: Status.father, // Default status
  );

  // Food List (No changes required here)
  List<Foodrate> foods = [
    Foodrate(name: '', imageUrl: '', rating: 0.0),
    Foodrate(name: '', imageUrl: '', rating: 0.0),
    Foodrate(name: '', imageUrl: '', rating: 0.0),
    Foodrate(name: '', imageUrl: '', rating: 0.0),
    Foodrate(name: '', imageUrl: '', rating: 0.0),
  ];

  bool isEditing = false; // State variable to track editing mode

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(isEditing ? Icons.check : Icons.edit),
            onPressed: () {
              setState(() {
                isEditing = !isEditing; // Toggle editing mode
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile section
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(_getProfileImage()),
                    ),
                  ),
                  Divider(color: Colors.black),
                  SizedBox(height: 10),
                  _buildTextField('Name', (value) => entity.name = value, isEditing: isEditing),
                  _buildTextField('Age', (value) => entity.age = int.tryParse(value) ?? 0, isEditing: isEditing),
                  _buildDropdownField('Gender', (value) => entity.gender = value, isEditing: isEditing),
                  _buildTextField('Date of Birth', (value) => entity.birthday = value, isEditing: isEditing),
                  _buildTextField('Phone Number', (value) => entity.phoneNumber = value, isEditing: isEditing),
                  _buildDropdownField('Status', (value) => entity.status = value, isEditing: isEditing),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Food List section
            ListView.builder(
              physics: NeverScrollableScrollPhysics(), // Disable scrolling for ListView
              shrinkWrap: true, // Use only the space needed
              itemCount: foods.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        // Food Image
                        Image.network(
                          foods[index].imageUrl.isNotEmpty ? foods[index].imageUrl : 'https://your-image-url-here.com/default.jpg',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 10),
                        // Food Name and Rating
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildTextField('Food Name', (value) => foods[index].name = value, isEditing: isEditing, initialValue: foods[index].name),
                              _buildTextField('Image URL', (value) => foods[index].imageUrl = value, isEditing: isEditing, initialValue: foods[index].imageUrl),
                              _buildRatingField(index, isEditing),
                              _getFoodEmoji(foods[index].rating),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // Method to get the profile image based on gender and status
  String _getProfileImage() {
    if (entity.gender == Gender.female) {
      return 'https://your-image-url-here.com/mother.jpg'; // Replace with actual URL
    } else if (entity.gender == Gender.male) {
      return 'https://your-image-url-here.com/father.jpg'; // Replace with actual URL
    }
    return 'https://your-image-url-here.com/default.jpg'; // Default image
  }

  // Method to build a text field
  Widget _buildTextField(String label, Function(String) onChanged, {String initialValue = '', bool isEditing = false}) {
    return TextField(
      decoration: InputDecoration(labelText: label),
      onChanged: isEditing ? onChanged : null, // Enable editing only when isEditing is true
      controller: TextEditingController(text: initialValue),
      enabled: isEditing, // Enable or disable based on editing mode
    );
  }

  // Method to build a dropdown field for Gender and Status
  Widget _buildDropdownField(String label, ValueChanged<dynamic> onChanged, {bool isEditing = false}) {
    return DropdownButton<dynamic>(
      hint: Text(label),
      value: label == 'Gender' ? entity.gender : entity.status, // Check if it is Gender or Status dropdown
      onChanged: isEditing ? onChanged : null,
      items: (label == 'Gender' ? Gender.values : Status.values).map((dynamic value) {
        return DropdownMenuItem<dynamic>(
          value: value,
          child: Text(value.toString().split('.').last), // Display enum name
        );
      }).toList(),
    );
  }

  // Method to build a rating field
  Widget _buildRatingField(int index, bool isEditing) {
    return Row(
      children: [
        Text('Rating: ', style: TextStyle(fontSize: 16)),
        Expanded(
          child: isEditing
              ? Slider(
                  value: foods[index].rating,
                  min: 0.0,
                  max: 1.0,
                  divisions: 4,
                  onChanged: (value) {
                    setState(() {
                      foods[index].rating = value;
                    });
                  },
                )
              : LinearProgressIndicator(
                  value: foods[index].rating,
                  backgroundColor: Colors.grey[300],
                  valueColor: AlwaysStoppedAnimation(Colors.green),
                ),
        ),
        Text('${(foods[index].rating * 100).toStringAsFixed(0)}%', style: TextStyle(fontSize: 16)),
      ],
    );
  }

  // Helper method to return emoji based on food rating
  Widget _getFoodEmoji(double rating) {
    if (rating == 1.0) {
      return Text('❤️', style: TextStyle(fontSize: 24));
    } else if (rating >= 0.75) {
      return Text('🤤', style: TextStyle(fontSize: 24));
    } else if (rating >= 0.5) {
      return Text('😋', style: TextStyle(fontSize: 24));
    } else if (rating >= 0.25) {
      return Text('🙂', style: TextStyle(fontSize: 24));
    } else {
      return Text('😢', style: TextStyle(fontSize: 24));
    }
  }
}
