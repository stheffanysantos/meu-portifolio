import '../../../core/theme/app_colors.dart';
import '../project.dart';

const libugProject = Project(
  name: 'LIBUG',
  initials: 'LB',
  category: 'Mobile',
  color: AppColors.sky,
  ink: AppColors.navy,
  tags: ['Flutter', 'Riverpod', 'MVVM', 'Firebase'],
  short:
      'Jogo educativo de lógica de programação em Flutter, com 7 mundos, trilhas progressivas e placar online.',
  long:
      'Jogo educativo de lógica de programação, criado para o estande do Licode em feiras de tecnologia. O jogador começa montando um Programa para guiar o mascote por um tabuleiro e avança, em 3 trilhas e 7 mundos, até ler, completar e depurar código de verdade. Cada mundo tem seu próprio motor de execução, e o progresso e o Placar do Dia ficam no Firebase.',
  url: 'https://libug.tets.app.br/',
  repoUrl: 'https://github.com/stheffanysantos/libug-game',
  images: [
    'assets/images/projects/libug-1.png',
    'assets/images/projects/libug-2.png',
    'assets/images/projects/libug-3.png',
  ],
  metrics: [
    ProjectMetric('7', 'mundos em 3 trilhas'),
    ProjectMetric('240', 'casos de teste'),
    ProjectMetric('49', 'arquivos de teste'),
    ProjectMetric('137', 'arquivos Dart'),
  ],
  sections: [
    ProjectSection(
      title: 'Contexto e produto',
      bullets: [
        'Sem instrução prévia: quem nunca viu o jogo precisa entender só olhando a tela.',
        'Sessões curtas, feedback imediato e falha nunca punitiva, sempre com motivo e dica.',
        'Interface pensada para toque, flat design e alto contraste para ambiente iluminado.',
        'Trilha 1: sequência e decisão. Trilha 2: programação em blocos. Trilha 3: preveja a saída, complete o código e modo debug.',
      ],
    ),
    ProjectSection(
      title: 'Arquitetura',
      text:
          'MVVM com Clean Architecture pragmática. Cada mundo é uma feature isolada, com presentation dividida em view, view model e state.',
      bullets: [
        'lib/models e lib/game em Dart puro: nunca importam Flutter nem Riverpod.',
        'Regras do jogo (colisão, vitória, expansão de Repetir) ficam nos motores, nunca em widgets.',
        'features e widgets dependem de models, game, core e theme, e nunca o contrário.',
        'Cada mundo tem seu próprio motor de execução: interpretador do Programa, esteira com Enquanto, executor de blocos e verificador de quebra-cabeça de código.',
        'Design system com zero hardcode: cores, tipografia e espaçamentos centralizados em lib/theme.',
        'Layout adaptativo: tablet lado a lado acima de 700 px.',
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
      title: 'Dados e backend',
      bullets: [
        'Firebase Auth com login anônimo, e-mail e Google.',
        'Firestore para o Placar do Dia e o progresso do jogador, com regras de segurança versionadas.',
        'Progresso local com shared_preferences.',
      ],
    ),
    ProjectSection(
      title: 'Testes',
      bullets: [
        '240 casos em 49 arquivos, todos com flutter_test.',
        'Testes unitários dos motores de jogo, sem depender de widgets.',
        'Testes de widget das telas de cada mundo.',
        'Testes de core: auth, placar, onboarding e progresso.',
        'Toda fase nova precisa de um teste provando que é solucionável dentro do limite de blocos.',
      ],
    ),
    ProjectSection(
      title: 'CI/CD e ambientes',
      bullets: [
        'GitHub Actions com dois ambientes isolados: produção (main) e develop.',
        'Cada ambiente tem projeto Firebase próprio, então dados de teste não sujam a produção.',
        'Gate de qualidade com flutter analyze --fatal-infos antes de qualquer deploy.',
        'Ambiente escolhido em build-time com --dart-define=APP_ENV, e sem a flag o build cai em produção.',
        'Deploy automático no Firebase Hosting.',
      ],
    ),
    ProjectSection(
      title: 'Áudio e feedback',
      bullets: [
        'Camada própria de áudio com efeitos sonoros sintetizados por script (tool/generate_sfx.py) e haptics.',
        'Mascote com expressões, confete e celebração forte na vitória.',
      ],
    ),
  ],
);
