import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/another/profile_model.dart';
import '../riverpod.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(profileProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: profileAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
        data: (profile) => _ProfileView(profileList: profile),
      ),
    );
  }
}

class _ProfileView extends StatelessWidget {
  final List<ProfileModel> profileList;

  const _ProfileView({required this.profileList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: profileList.map((profile)=>Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(profile.image ?? ''),
              ),
              const SizedBox(height: 16),
              Text(profile.firstName??'', style: const TextStyle(fontSize: 24)),
              Text(profile.email??''),
            ],
          )).toList(),
        ),
      )
    );
  }
}