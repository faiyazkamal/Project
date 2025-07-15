import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  final List<Map<String, String>> people = [
    {"name": "Sara Svensk", "location": "Unna, Dortmund, Germany"},
    {"name": "Polok Podder", "location": "Keranigonj, Dhaka, Bangladesh"},
    {"name": "Zara Hanoi", "location": "Las Vegas, USA"},
    {"name": "Zaman Alam", "location": "Shahata, Mymensingh, Bangladesh"},
    {"name": "Shehrin Rimi", "location": "Piererbag, Dhaka, Bangladesh"},
  ];

  int selectedTab = 0;
  int selectedFilter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("Search"),
        centerTitle: false,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Top Tabs
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: ["Friends", "Clubs", "Workout"].asMap().entries.map((
                entry,
              ) {
                int idx = entry.key;
                String label = entry.value;
                bool isActive = idx == selectedTab;
                return GestureDetector(
                  onTap: () => setState(() => selectedTab = idx),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: isActive
                          ? Colors.grey.shade300
                          : Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(label),
                  ),
                );
              }).toList(),
            ),
          ),

          // Search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search on Athlytiq",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          // Filter Row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: ["Suggested", "Facebook", "Contacts"]
                  .asMap()
                  .entries
                  .map((entry) {
                    int idx = entry.key;
                    String label = entry.value;
                    bool isActive = idx == selectedFilter;
                    return GestureDetector(
                      onTap: () => setState(() => selectedFilter = idx),
                      child: Column(
                        children: [
                          Icon(
                            idx == 0
                                ? Icons.people_outline
                                : idx == 1
                                ? Icons.facebook
                                : Icons.contacts,
                            size: 28,
                          ),
                          const SizedBox(height: 4),
                          Text(label),
                          const SizedBox(height: 2),
                          if (isActive)
                            Container(height: 2, width: 40, color: Colors.red),
                        ],
                      ),
                    );
                  })
                  .toList(),
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(left: 16, top: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "PEOPLE YOU MAY KNOW",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),

          const SizedBox(height: 8),

          // People List
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                final person = people[index];
                return ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.person)),
                  title: Text(person["name"]!),
                  subtitle: Text(person["location"]!),
                  trailing: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.red,
                      side: const BorderSide(color: Colors.red),
                    ),
                    onPressed: () {},
                    child: const Text("Add"),
                  ),
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {},
              child: const Text("Invite Friends"),
            ),
          ),
        ],
      ),
    );
  }
}
