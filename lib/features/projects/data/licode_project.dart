import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../project.dart';

const licodeProject = Project(
  name: 'Portal do Licode',
  initials: 'LC',
  category: 'Web',
  color: AppColors.purple,
  ink: Colors.white,
  tags: ['React 19', 'TypeScript', 'Firebase', 'Tailwind'],
  short:
      'CMS da comunidade Ladies in Code, com site público, área de membros e painel para gerenciar todo o conteúdo.',
  long:
      'CMS do Licode (Ladies in Code): um sistema de gerenciamento de conteúdo que alimenta o site público da comunidade com projetos, eventos, blog e equipe. Um painel administrativo, com acesso por nível, gerencia membros, projetos, eventos, posts, cursos, benefícios, oportunidades e formulários. Desenvolvido por uma equipe de 5 pessoas.',
  url: 'https://portal-licode-hazel.vercel.app/',
  images: [
    'assets/images/projects/licode-1.png',
    'assets/images/projects/licode-2.png',
  ],
  metrics: [
    ProjectMetric('97+', 'Lighthouse performance'),
    ProjectMetric('100', 'acessibilidade, boas práticas e SEO'),
    ProjectMetric('12', 'entidades de domínio'),
    ProjectMetric('126', 'arquivos TS/TSX'),
  ],
  sections: [
    ProjectSection(
      title: 'Contexto e produto',
      bullets: [
        'Site público: home, sobre, equipe, projetos, eventos, blog e formulário de participação.',
        'Área do membro protegida e painel administrativo com gestão de membros, projetos, eventos, blog e formulários.',
        'Cursos recomendados, benefícios, oportunidades, links e documentos e conteúdo editável das páginas.',
      ],
    ),
    ProjectSection(
      title: 'Arquitetura',
      text:
          'Organização em camadas inspirada em Feature-Sliced Design.',
      bullets: [
        'Fluxo padrão para cada feature: tipo, service, hook, card, página e rota.',
        'Services concentram o acesso ao Firestore (CRUD com serverTimestamp).',
        'Hooks de dados seguem um contrato único: dados, carregando, erro e recarregar.',
        'Controle de acesso por nível (Ligante e Diretor) com ProtectedRoute nas rotas.',
        'Rotas com React Router 7, layout com Header, Outlet e Footer, e telas de auth fora do layout.',
      ],
    ),
    ProjectSection(
      title: 'Stack',
      chips: [
        'React 19',
        'TypeScript',
        'Vite 8',
        'React Router 7',
        'Tailwind CSS 4',
        'shadcn/ui',
        'Radix UI',
        'React Hook Form',
        'Zod',
        'Firebase Auth',
        'Firestore',
        'Sonner',
        'react-helmet-async',
        'Vercel',
      ],
    ),
    ProjectSection(
      title: 'Segurança e validação',
      bullets: [
        'Regras de segurança do Firestore versionadas no repositório.',
        'Schemas Zod para login, cadastro, recuperação de senha e participação, integrados ao React Hook Form.',
        'Autenticação com e-mail e Google, com recuperação de senha.',
      ],
    ),
    ProjectSection(
      title: 'Performance',
      text:
          'Auditoria com Lighthouse CLI em mobile (Slow 4G simulado), com metas definidas antes e documentadas no repositório.',
      bullets: [
        'Performance de 97 a 98, e acessibilidade, boas práticas e SEO em 100 nas 7 páginas públicas auditadas.',
        'LCP simulado de cerca de 2,0 a 2,1 s, dentro da meta de 2,5 s.',
        'Code splitting com React.lazy e Suspense, com chunks manuais para firebase, react, ui e ícones.',
        'Fontes self-hosted, CSS não bloqueante, imagens com lazy loading e logo reduzida de cerca de 1,2 MB para 11 KB.',
        'SEO técnico: lang pt-BR, meta description, canonical, robots.txt e sitemap.xml.',
      ],
    ),
    ProjectSection(
      title: 'Qualidade',
      bullets: [
        'TypeScript com build tipado (tsc -b) e ESLint com regras de React Hooks.',
        'Validação de formulários com Zod.',
        'Auditorias Lighthouse repetíveis por script, documentadas com os comandos.',
        'Documentação de arquitetura (ESTRUTURA.md) como guia para a equipe.',
      ],
    ),
  ],
);
