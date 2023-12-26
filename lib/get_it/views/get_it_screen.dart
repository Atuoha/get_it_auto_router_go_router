import 'package:flutter/material.dart';
import 'package:get_it_auto_router_go_router/get_it/services/location_service.dart';
import 'package:get_it_auto_router_go_router/get_it/services/locator.dart';

class GetItScreen extends StatelessWidget {
  const GetItScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var locationService = getIt<LocationService>();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => locationService.getLocation(),
        child: const Icon(
          Icons.location_pin,
        ),
      ),
      body: const Center(
        child: Text('GetIt Screen'),
      ),
    );
  }
}
