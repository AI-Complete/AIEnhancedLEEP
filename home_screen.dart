import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/space_time_data_bloc.dart';
import 'custom_widgets/multi_dimensional_interface.dart';
import 'services/quantum_field_service.dart';
import 'utils/universal_intelligence.dart';
import 'utils/interdimensional_projection.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/quantumLeap';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late SpaceTimeDataBloc spaceTimeDataBloc;
  late UniversalIntelligence universalIntelligence;

  @override
  void initState() {
    super.initState();
    spaceTimeDataBloc = SpaceTimeDataBloc(dataService: QuantumFieldService());
    universalIntelligence = UniversalIntelligence();
    InterdimensionalProjection.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => spaceTimeDataBloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Interdimensional Fugue Interface'),
          actions: _buildAppBarActions(),
        ),
        body: _buildBody(context),
      ),
    );
  }

  List<Widget> _buildAppBarActions() {
    return [
      IconButton(
        icon: Icon(Icons.reality),
        onPressed: () => InterdimensionalProjection.activateProjection(),
      ),
    ];
  }

  Widget _buildBody(BuildContext context) {
    return BlocBuilder<SpaceTimeDataBloc, SpaceTimeDataState>(
      builder: (context, state) {
        if (state is SpaceTimeDataLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is SpaceTimeDataLoaded) {
          return MultiDimensionalInterface(data: state.data);
        } else if (state is SpaceTimeDataError) {
          return Center(child: Text('Error in Quantum Data Stream: ${state.message}'));
        }
        return Container(); // Fallback for unimagined dimensions
      },
    );
  }
}
