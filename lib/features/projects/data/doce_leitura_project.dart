import '../../../core/theme/app_colors.dart';
import '../project.dart';

const doceLeituraProject = Project(
  name: 'Doce Leitura',
  initials: 'DL',
  category: 'Web',
  color: AppColors.lilac,
  ink: AppColors.navy,
  tags: ['Vue 3', 'TypeScript', 'Vite'],
  short:
      'Blog do clube do livro Doce Leitura, com resenhas, livro do mês, estante e encontros, em Vue 3 e TypeScript.',
  long:
      'Blog do Doce Leitura, clube do livro feito por garotas em Aracaju-SE. Reúne resenhas, o livro do mês, a estante, os encontros e depoimentos das leitoras. Os textos vivem em arquivos JSON validados no build, sem backend. Por enquanto não vimos a necessidade de um backend.',
  url: 'https://doceleitura.vercel.app/',
  repoUrl: 'https://github.com/stheffanysantos/doce-leitura-site',
  images: [
    'assets/images/projects/doce-leitura-1.png',
    'assets/images/projects/doce-leitura-2.png',
  ],
  metrics: [
    ProjectMetric('7', 'seções da home'),
    ProjectMetric('6', 'resenhas no blog'),
    ProjectMetric('0', 'backend e CMS'),
  ],
  sections: [
    ProjectSection(
      title: 'Contexto e produto',
      bullets: [
        'Home com hero, sobre, livro do mês, estante, encontros, blog e depoimentos.',
        'Página de resenhas com um post por arquivo.',
        'Chamada para participação do clube.',
      ],
    ),
    ProjectSection(
      title: 'Arquitetura',
      text:
          'Site estático guiado por conteúdo: textos, encontros, estante e resenhas vivem em arquivos JSON, separados dos componentes.',
      bullets: [
        'Componentes por seção em components/home e componentes de layout (header, footer e chamada para participar).',
        'Camada src/data/content.ts como ponto único de acesso ao conteúdo tipado.',
        'Conteúdo em src/content com um README explicando como editar sem mexer no código.',
        'Vue Router para as páginas, e o site não precisa de backend nem de CMS.',
      ],
    ),
    ProjectSection(
      title: 'Stack',
      chips: [
        'Vue 3',
        'Vue Router 4',
        'TypeScript',
        'Vite 8',
        'vue-tsc',
        'Vercel',
      ],
    ),
  ],
);
