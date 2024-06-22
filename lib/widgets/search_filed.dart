import 'package:flutter/material.dart';
import 'package:ecommerce/widgets/constrast.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(
              left: 18,
              right: 10,
              top: 50,
            ),
            child: SearchAnchor(
              builder: (BuildContext context, SearchController controller) {
                return SizedBox(
                  width: 350, // Set the width here
                  child: TextButton(
                    onPressed: () {
                      controller.openView();
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.search, color: Colors.white), // Change the icon color
                        SizedBox(width: 8), // Adjust spacing as needed
                        Text(
                          "Search",
                          style: TextStyle(
                            color: Colors.white, // Change the text color
                            // Add style properties if necessary
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              suggestionsBuilder: (BuildContext context, SearchController controller) {
                return List.generate(5, (int index) {
                  final String product= 'product $index';
                  return ListTile(
                    title: Text(product),
                    onTap: () {
                      // Handle tap on suggestion
                    },
                  );
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
