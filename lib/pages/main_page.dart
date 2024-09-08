import 'package:calendario_vacinacao/forms/child_registration_form.dart';
import 'package:calendario_vacinacao/pages/vaccine_page.dart';
import 'package:flutter/material.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<StatefulWidget> createState() => _TabBarState();
}

class _TabBarState extends State<MainPage> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendário de vacinação'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(icon: Icon(Icons.add),
            text: 'Registrar criança'),
            Tab(icon: Icon(Icons.vaccines),
            text: 'Consultar vacinas'),
          ],
        ),      
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          const ChildRegistrationForm(),
          VaccinePage()
                ],
      ),
    );
  }
}

