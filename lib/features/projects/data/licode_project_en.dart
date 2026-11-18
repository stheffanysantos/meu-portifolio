import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../project.dart';

const licodeProjectEn = Project(
  name: 'Licode Portal',
  initials: 'LC',
  category: 'Web',
  color: AppColors.purple,
  ink: Colors.white,
  tags: ['React 19', 'TypeScript', 'Firebase', 'Tailwind'],
  short:
      'CMS for the Ladies in Code community, with a public site, a members area and a dashboard to manage all the content.',
  long:
      'The Licode (Ladies in Code) CMS: a content management system that feeds the community\'s public site with projects, events, blog and team. A role-based admin dashboard manages members, projects, events, posts, courses, benefits, opportunities and forms. Built by a team of 5 people.',
  url: 'https://portal-licode-hazel.vercel.app/',
  images: [
    'assets/images/projects/licode-1.png',
    'assets/images/projects/licode-2.png',
  ],
  metrics: [
    ProjectMetric('97+', 'Lighthouse performance'),
    ProjectMetric('100', 'accessibility, best practices and SEO'),
    ProjectMetric('12', 'domain entities'),
    ProjectMetric('126', 'TS/TSX files'),
  ],
  sections: [
    ProjectSection(
      title: 'Context and product',
      bullets: [
        'Public site: home, about, team, projects, events, blog and a participation form.',
        'Protected members area and an admin dashboard to manage members, projects, events, blog and forms.',
        'Recommended courses, benefits, opportunities, links and documents, and editable page content.',
      ],
    ),
    ProjectSection(
      title: 'Architecture',
      text: 'Layered organization inspired by Feature-Sliced Design.',
      bullets: [
        'Standard flow for each feature: type, service, hook, card, page and route.',
        'Services centralize Firestore access (CRUD with serverTimestamp).',
        'Data hooks follow a single contract: data, loading, error and reload.',
        'Role-based access control (Ligante and Diretor) with ProtectedRoute on routes.',
        'Routes with React Router 7, a layout with Header, Outlet and Footer, and auth screens outside the layout.',
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
      title: 'Security and validation',
      bullets: [
        'Firestore security rules versioned in the repository.',
        'Zod schemas for login, sign-up, password recovery and participation, integrated with React Hook Form.',
        'Email and Google authentication, with password recovery.',
      ],
    ),
    ProjectSection(
      title: 'Performance',
      text:
          'Audit with Lighthouse CLI on mobile (simulated Slow 4G), with goals set beforehand and documented in the repository.',
      bullets: [
        'Performance of 97 to 98, and accessibility, best practices and SEO at 100 across the 7 audited public pages.',
        'Simulated LCP of about 2.0 to 2.1 s, within the 2.5 s goal.',
        'Code splitting with React.lazy and Suspense, with manual chunks for firebase, react, ui and icons.',
        'Self-hosted fonts, non-blocking CSS, lazy-loaded images and a logo reduced from about 1.2 MB to 11 KB.',
        'Technical SEO: lang pt-BR, meta description, canonical, robots.txt and sitemap.xml.',
      ],
    ),
    ProjectSection(
      title: 'Quality',
      bullets: [
        'TypeScript with a typed build (tsc -b) and ESLint with React Hooks rules.',
        'Form validation with Zod.',
        'Lighthouse audits repeatable by script, documented with the commands.',
        'Architecture documentation (ESTRUTURA.md) as a guide for the team.',
      ],
    ),
  ],
);
