import 'package:flutter/material.dart';
import '../models/foodclass.dart'; // Import the Food class
import '../models/foodcook.dart'; // Import the Fooddiscribe class
import '../screen/profile.dart'; // Import the ProfileScreen
import '../screen/todolist.dart'; // Import the TodoList screen

class FoodDetailPage extends StatefulWidget {
  final Food food;
  final Fooddiscribe foodDescription;

  FoodDetailPage({required this.food, required this.foodDescription});

  @override
  _FoodDetailPageState createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Map<String, String>> _todos = []; // List to hold food items

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _navigateToTodoList() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TodoList(initialTodos: _todos), // Pass the list to TodoList
      ),
    );
  }

  void _addToTodoList() {
    // Add food details to the list
    setState(() {
      _todos.add({
        'foodName': widget.food.name, // Food name
        'imageUrl': widget.food.imageUrl, // Food image URL
        'country': 'User\'s Current Country', // Replace with actual country retrieval logic
      });
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Added to To-Do List!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(widget.food.name), // Dynamic food name
        actions: [
          IconButton(
            icon: Icon(Icons.notifications), // Notification button
            onPressed: _navigateToTodoList,
          ),
          IconButton(
            icon: Icon(Icons.add), // Add button icon
            onPressed: _addToTodoList, // Add food item to the list
          ),
        ],
      ),
      body: Column(
        children: [
          // Food image
          Image.asset(
            widget.food.imageUrl, // Dynamic food image
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),

          // Tab bar for Ingredients, Directions, and Discussion
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: 'Ingredients'),
              Tab(text: 'Directions'),
              Tab(text: 'Discussion'),
            ],
          ),

          // TabBar view for the different sections
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Ingredients Tab
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ListView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: widget.foodDescription.foodIngredients
                              .map((ingredient) => Text('• $ingredient', style: TextStyle(fontSize: 18)))
                              .toList(),
                        ),
                        SizedBox(height: 50), // Empty space after Ingredients
                      ],
                    ),
                  ),
                ),

                // Directions Tab
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: widget.foodDescription.foodSteps.length,
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Step ${index + 1}:',
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  widget.foodDescription.foodSteps[index],
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(height: 10), // Space between steps
                              ],
                            );
                          },
                        ),
                        SizedBox(height: 50), // Empty space after Directions
                      ],
                    ),
                  ),
                ),

                // Discussion Tab
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ListView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            _buildReview(
                              'John Doe', 
                              'https://your-image-url-here.com/john.jpg', 
                              4.5, 
                              'Delicious!',
                              context
                            ),
                            _buildReview(
                              'Jane Smith', 
                              'https://your-image-url-here.com/jane.jpg', 
                              5.0, 
                              'Best pizza ever!',
                              context
                            ),
                            _buildReview(
                              'Alice Lee', 
                              'https://your-image-url-here.com/alice.jpg', 
                              3.5, 
                              'Good, but needs more cheese.',
                              context
                            ),
                          ],
                        ),
                        SizedBox(height: 50), // Empty space after Discussion
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build individual review items in the Discussion Tab
  Widget _buildReview(String name, String imageUrl, double rating, String comment, BuildContext context) {
    return GestureDetector(
      onTap: () {
        // When the review card is tapped, navigate to the ProfileScreen
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfileScreen(), // No arguments passed
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(imageUrl),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  LinearProgressIndicator(
                    value: rating / 5, // Scale rating (max is 5)
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation(Colors.green),
                  ),
                  Text('Rating: ${rating.toStringAsFixed(1)}', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 5),
                  Text(comment, style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
