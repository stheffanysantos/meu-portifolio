import '../../../core/theme/app_colors.dart';
import '../project.dart';

const libugProjectEn = Project(
  name: 'LIBUG',
  initials: 'LB',
  category: 'Mobile',
  color: AppColors.sky,
  ink: AppColors.navy,
  tags: ['Flutter', 'Riverpod', 'MVVM', 'Firebase'],
  short:
      'Educational programming-logic game in Flutter, with 7 worlds, progressive tracks and an online leaderboard.',
  long:
      'An educational programming-logic game, created for the Licode booth at tech fairs. Players start by assembling a Program to guide the mascot across a board and advance, through 3 tracks and 7 worlds, until they read, complete and debug real code. Each world has its own execution engine, and progress and the Daily Leaderboard live in Firebase.',
  url: 'https://libug.tets.app.br/',
  repoUrl: 'https://github.com/stheffanysantos/libug-game',
  images: [
    'assets/images/projects/libug-1.png',
    'assets/images/projects/libug-2.png',
    'assets/images/projects/libug-3.png',
  ],
  metrics: [
    ProjectMetric('7', 'worlds in 3 tracks'),
    ProjectMetric('240', 'test cases'),
    ProjectMetric('49', 'test files'),
    ProjectMetric('137', 'Dart files'),
  ],
  sections: [
    ProjectSection(
      title: 'Context and product',
      bullets: [
        'No prior instruction: someone who has never seen the game must understand it just by looking at the screen.',
        'Short sessions, immediate feedback, and failure is never punitive, always with a reason and a hint.',
        'Touch-first interface, flat design and high contrast for bright environments.',
        'Track 1: sequence and decision. Track 2: block programming. Track 3: predict the output, complete the code and debug mode.',
      ],
    ),
    ProjectSection(
      title: 'Architecture',
      text:
          'MVVM with pragmatic Clean Architecture. Each world is an isolated feature, with presentation split into view, view model and state.',
      bullets: [
        'lib/models and lib/game are pure Dart: they never import Flutter or Riverpod.',
        'Game rules (collision, victory, Repeat expansion) live in the engines, never in widgets.',
        'features and widgets depend on models, game, core and theme, and never the other way around.',
        'Each world has its own execution engine: Program interpreter, conveyor with While, block executor and code-puzzle checker.',
        'Design system with zero hardcoding: colors, typography and spacing centralized in lib/theme.',
        'Adaptive layout: side-by-side tablet layout above 700 px.',
      ],
    ),
    ProjectSection(
      title: 'Stack',
      chips: [
        'Flutter',
        'Dart',
        'Riverpod 3',
        'riverpod_generator',
        'Freezed',
        'Firebase Auth',
        'Cloud Firestore',
        'shared_preferences',
        'audioplayers',
        'flutter_svg',
      ],
    ),
    ProjectSection(
      title: 'Data and backend',
      bullets: [
        'Firebase Auth with anonymous, email and Google sign-in.',
        'Firestore for the Daily Leaderboard and player progress, with versioned security rules.',
        'Local progress with shared_preferences.',
      ],
    ),
    ProjectSection(
      title: 'Testing',
      bullets: [
        '240 cases in 49 files, all with flutter_test.',
        'Unit tests of the game engines, with no dependency on widgets.',
        'Widget tests for each world\'s screens.',
        'Core tests: auth, leaderboard, onboarding and progress.',
        'Every new level needs a test proving it is solvable within the block limit.',
      ],
    ),
    ProjectSection(
      title: 'CI/CD and environments',
      bullets: [
        'GitHub Actions with two isolated environments: production (main) and develop.',
        'Each environment has its own Firebase project, so test data never pollutes production.',
        'Quality gate with flutter analyze --fatal-infos before any deploy.',
        'Environment chosen at build time with --dart-define=APP_ENV, and without the flag the build falls back to production.',
        'Automatic deploy to Firebase Hosting.',
      ],
    ),
    ProjectSection(
      title: 'Audio and feedback',
      bullets: [
        'Dedicated audio layer with sound effects synthesized by script (tool/generate_sfx.py) and haptics.',
        'Mascot with expressions, confetti and a strong celebration on victory.',
      ],
    ),
  ],
);
