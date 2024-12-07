import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'Test',
            style: TextStyle(color: Colors.white),
          ),
          actions: const [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            VerticalDivider(
              indent: 15,
              endIndent: 15,
            ),
            Icon(
              Icons.settings,
              color: Colors.white,
            ),
            SizedBox(width: 15),
            Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            SizedBox(width: 15),
            Icon(
              Icons.calendar_month,
              color: Colors.white,
            ),
            VerticalDivider(
              indent: 15,
              endIndent: 15,
            ),
            CircleAvatar(
              child: Icon(Icons.person),
              radius: 15,
            ),
            SizedBox(width: 16),
          ],
          backgroundColor: const Color.fromARGB(255, 3, 53, 93),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                  child: Text(
                "Dashboard",
              )),
              ListTile(
                title: const Text("Lead"),
                leading: const FaIcon(FontAwesomeIcons.penNib),
                onTap: () {},
              ),
              ListTile(
                title: const Text("Lock"),
                leading: const FaIcon(FontAwesomeIcons.lock),
                onTap: () {},
              ),
              ListTile(
                title: const Text("Office"),
                leading: const FaIcon(FontAwesomeIcons.building),
                onTap: () {},
              ),
              ListTile(
                title: const Text("Profile"),
                leading: const Icon(Icons.person),
                onTap: () {},
              ),
              ListTile(
                title: const Text("Goods"),
                leading: const FaIcon(FontAwesomeIcons.luggageCart),
                onTap: () {},
              ),
              ListTile(
                title: const Text("Statistics"),
                leading: const Icon(Icons.leaderboard),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              const Padding(
                padding: EdgeInsets.only(left: 16.0, top: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Dashboard / Lead / ",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    Text(
                      "LE-010071",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16.0, top: 8.0),
                child: Row(
                  children: [
                    Text(
                      "LE-010071",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(width: 50),
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.person_add,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.menu_open,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.replay,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),

              const Divider(),
              Padding(
                padding: const EdgeInsets.all(5),
                child: SingleChildScrollView(
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 17),
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 198, 135),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: const Center(
                            child: Text(
                          "New",
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        )),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 17),
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 201, 201, 201),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: const Center(
                            child: Text(
                          "Contacted",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        )),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 17),
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 201, 201, 201),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: const Center(
                            child: Text(
                          "Nurturing",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
              ),

              const Divider(),
              // Main Content
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Account',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              DropdownButton<String>(
                                items: ['Option 1', 'Option 2']
                                    .map((e) => DropdownMenuItem(
                                        value: e, child: Text(e)))
                                    .toList(),
                                onChanged: (val) {},
                                hint: const Text('Select Option'),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Contact',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              DropdownButton<String>(
                                items: ['Option 1', 'Option 2']
                                    .map((e) => DropdownMenuItem(
                                        value: e, child: Text(e)))
                                    .toList(),
                                onChanged: (val) {},
                                hint: const Text('Select Option'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Activity Section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Activity',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        ElevatedButton(
                            onPressed: () {}, child: const Text('Add')),
                      ],
                    ),
                    const Card(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.call),
                                SizedBox(width: 8),
                                Text('Log a Call'),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(Icons.email),
                                SizedBox(width: 8),
                                Text('Email'),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(Icons.event),
                                SizedBox(width: 8),
                                Text('Event'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
