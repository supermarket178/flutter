import 'package:flutter/material.dart';
import 'package:supermarket/features/location/presentation/views/widget/location_view_body.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
          resizeToAvoidBottomInset: true,
          body: LocationViewBody(),
        );
  }
}
