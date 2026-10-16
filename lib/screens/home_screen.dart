import 'package:flutter/material.dart';

import 'ahkam_players_screen.dart';
import 'celeb_players_screen.dart';
import 'draw_players_screen.dart';
import 'act_players_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF2A0A4A),
              Color(0xFF1A0A2A),
              Color(0xFF0A0514),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 20),
                child: Column(
                  children: [
                    Text(
                      'تحدي الأصحاب',
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w900,
                        color: const Color(0xFFFFD54A),
                        letterSpacing: 3,
                        shadows: [
                          Shadow(
                            color: const Color(0xFFFF6B6B).withOpacity(0.7),
                            blurRadius: 20,
                          ),
                          const Shadow(
                            color: Color(0xFF8A6000),
                            offset: Offset(3, 3),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'A GAME BY NOUR ELDIN',
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(0xFF7AD7FF),
                        letterSpacing: 4,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 14,
                    mainAxisSpacing: 14,
                    childAspectRatio: 1.0,
                    children: [
                      _square(
                        context: context,
                        emoji: '🎯',
                        title: 'الأحكام',
                        color: const Color(0xFFFF6B6B),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const AhkamPlayersScreen(),
                          ),
                        ),
                      ),
                      _square(
                        context: context,
                        emoji: '🎬',
                        title: 'المشاهير',
                        color: const Color(0xFF7AD7FF),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const CelebPlayersScreen(),
                          ),
                        ),
                      ),
                      _square(
                        context: context,
                        emoji: '🎨',
                        title: 'ارسم وخمّن',
                        color: const Color(0xFFFF9B4A),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const DrawPlayersScreen(),
                          ),
                        ),
                      ),
                      _square(
                        context: context,
                        emoji: '🎭',
                        title: 'مثّل موقف',
                        color: const Color(0xFFC77AFF),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const ActPlayersScreen(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _square({
    required BuildContext context,
    required String emoji,
    required String title,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                color.withOpacity(0.35),
                color.withOpacity(0.1),
              ],
            ),
            border: Border.all(color: color, width: 2.5),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: color.withOpacity(0.4),
                blurRadius: 18,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(emoji, style: const TextStyle(fontSize: 48)),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}