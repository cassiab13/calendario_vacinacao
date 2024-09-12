import 'package:calendario_vacinacao/forms/child_registration_form.dart';
import 'package:calendario_vacinacao/models/child.dart';
import 'package:calendario_vacinacao/pages/registered_child_page.dart';
import 'package:calendario_vacinacao/pages/vaccine_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<StatefulWidget> createState() => _TabBarState();
}

class _TabBarState extends State<MainPage> with TickerProviderStateMixin {
  late final TabController _tabController;
  final List<Child> _registeredChild = [];

  void _addChild(Child child) {
    setState(() {
      _registeredChild.add(child);
    });
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendário de vacinação'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(icon: Icon(Icons.add), text: 'Registrar criança'),
            Tab(icon: Icon(Icons.list), text: 'Crianças registradas'),
            Tab(icon: Icon(Icons.vaccines), text: 'Consultar vacinas'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ChildRegistrationForm(registerChild: _addChild),
          RegisteredChildPage(registeredChild: _registeredChild),
          VaccinePage(registeredChild: _registeredChild)
        ],
      ),
    );
  }
}
