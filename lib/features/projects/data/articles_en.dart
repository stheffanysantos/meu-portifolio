import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../project.dart';

// Os títulos (`long`) ficam no idioma original da publicação.

const helenaAppArticleEn = Project(
  name: 'HelenaApp',
  initials: 'HA',
  category: 'Articles',
  color: AppColors.lilac,
  ink: AppColors.navy,
  tags: ['HCI', 'Microinteractions', 'CLIHC 2026'],
  short:
      'Emotional microinteractions as an engagement strategy in well-being habit-building apps.',
  long:
      'Microinterações Emocionais no Design de Interfaces para Formação de Hábitos de Bem-Estar: Contribuições da IHC à Transformação Digital',
  url: 'https://doi.org/10.5753/clihc.2026.20403',
  metrics: [
    ProjectMetric('70–80%', 'abandonment rate in habit apps'),
    ProjectMetric('87', 'evaluation participants'),
    ProjectMetric('88.5%', 'interested in emotional feedback'),
    ProjectMetric('35.6%', 'link motivation to seeing progress'),
  ],
  sections: [
    ProjectSection(
      title: 'Publication',
      bullets: [
        'Full paper in the Proceedings of the XII Latin American Conference on Human-Computer Interaction (CLIHC 2026).',
        'Title shown in its original language (Portuguese).',
        'DOI: 10.5753/clihc.2026.20403',
      ],
    ),
    ProjectSection(
      title: 'Abstract',
      text:
          'Human-Computer Interaction (HCI) faces high abandonment rates (70–80%) in habit-building apps. This work investigates emotional microinteractions as an engagement strategy through the HelenaApp prototype, grounded in Nielsen\'s heuristics, Gestalt principles and Norman\'s model. The evaluation with 87 participants indicated that 88.5% are interested in emotional feedback and 35.6% associate motivation with seeing their progress, suggesting good acceptance.',
    ),
    ProjectSection(
      title: 'Foundations',
      chips: [
        'Nielsen\'s heuristics',
        'Gestalt',
        'Norman\'s model',
        'Microinteractions',
        'Emotional design',
      ],
    ),
    ProjectSection(
      title: 'Authors',
      chips: [
        'Stheffany Cruz Santos (UNIT)',
        'Layse Santos Souza (UNIT)',
        'Ana Carla do Nascimento Santos (UNIT)',
        'João Vitor R. Moura (UNIT)',
      ],
    ),
  ],
);

const presencaFemininaArticleEn = Project(
  name: 'Women in IT in Northeast Brazil',
  initials: 'PF',
  category: 'Articles',
  color: AppColors.purple,
  ink: Colors.white,
  tags: ['Gender equity', 'IT', 'ERBASE 2025'],
  short:
      'Exploratory analysis of the challenges and opportunities for women in IT in Northeast Brazil.',
  long:
      'Presença Feminina em Diversas Áreas de TI no Nordeste: Uma Análise Exploratória dos Desafios e Oportunidades',
  url: 'https://doi.org/10.5753/erbase.2025.14158',
  metrics: [
    ProjectMetric('14%', 'women in undergraduate programs'),
    ProjectMetric('20%', 'women in the job market'),
    ProjectMetric('9', 'authors'),
  ],
  sections: [
    ProjectSection(
      title: 'Publication',
      bullets: [
        'Meninas Digitais Workshop, in the Proceedings of the XXV Regional School of Computing of Bahia, Alagoas and Sergipe (ERBASE 2025).',
        'Title shown in its original language (Portuguese).',
        'DOI: 10.5753/erbase.2025.14158',
      ],
    ),
    ProjectSection(
      title: 'Abstract',
      text:
          'The research analyzes gender inequality in Information Technology (IT), focusing on Northeast Brazil, where female participation is critically low (14% in undergraduate programs and 20% in the job market). Through a qualitative, exploratory approach, this study investigates the structural and sociocultural barriers that limit women\'s careers in the field. A mapping of the academic literature and of women-led startups in the region was carried out to build an initial diagnosis of the scenario. The results confirm the scarcity of women in leadership and, above all, the lack of specific regional data, which makes it hard to create effective public policies to promote gender equity in the local innovation ecosystem.',
    ),
    ProjectSection(
      title: 'Method',
      bullets: [
        'Qualitative and exploratory approach.',
        'Mapping of the academic literature.',
        'Mapping of women-led startups in the region.',
      ],
    ),
    ProjectSection(
      title: 'Authors',
      chips: [
        'Rayelen J. Oliveira',
        'Helena C. Leal',
        'Juliana S. Silva Ivo',
        'Laiza Souza',
        'Flávia M. B. Vieira',
        'Stheffany Santos',
        'Marina Teixeira',
        'Ana C. N. Santos',
        'Victor F. A. Araújo',
        'GPITCS · UNIT · LICODE · INCT-SANI',
      ],
    ),
  ],
);

const parceirosWitArticleEn = Project(
  name: 'Meninas Digitais Partners at WIT',
  initials: 'MD',
  category: 'Articles',
  color: AppColors.blue,
  ink: Colors.white,
  tags: ['Qualitative analysis', 'Meninas Digitais', 'ERBASE 2025'],
  short:
      'Qualitative analysis of reports from Northeast Brazil partner projects of Meninas Digitais in WIT papers.',
  long:
      'Presença de Projetos Parceiros Nordestinos do Meninas Digitais em Artigos do WIT: Análise Qualitativa de Temáticas Trabalhadas',
  url: 'https://doi.org/10.5753/erbase.2025.13761',
  metrics: [
    ProjectMetric('339', 'papers evaluated'),
    ProjectMetric('69', 'papers on Northeast presence'),
    ProjectMetric('9', 'authors'),
  ],
  sections: [
    ProjectSection(
      title: 'Publication',
      bullets: [
        'Proceedings of the Regional School of Computing of Bahia, Alagoas and Sergipe (ERBASE 2025).',
        'Title shown in its original language (Portuguese).',
        'DOI: 10.5753/erbase.2025.13761',
      ],
    ),
    ProjectSection(
      title: 'Abstract',
      text:
          'This paper aims to analyze reports from Meninas Digitais partner projects in Northeast Brazil, to encourage the creation of new groups that promote female participation in Information Technology (IT) in the region. The research follows a qualitative approach and began by evaluating 339 papers, which were filtered down to 69 on Northeast presence. We selected only reports from women-led communities that partnered with Meninas Digitais. Analyzing these experiences made it possible to identify effective strategies, challenges faced and impacts generated, providing guidance for newcomers to the cause. In conclusion, we highlight the importance of expanding the network of initiatives aimed at including women in STEM, strengthening gender equity actions and fostering a more diverse environment in IT in Northeast Brazil.',
    ),
    ProjectSection(
      title: 'Method',
      bullets: [
        'Qualitative approach.',
        'Screening of 339 papers, filtered down to 69 on Northeast presence.',
        'Selection of only reports from women-led communities that are Meninas Digitais partners.',
        'Identification of effective strategies, challenges faced and impacts generated.',
      ],
    ),
    ProjectSection(
      title: 'Authors',
      chips: [
        'Helena C. Leal',
        'Rayelen J. Oliveira',
        'Juliana S. Silva Ivo',
        'Laiza Souza',
        'Flávia M. B. Vieira',
        'Stheffany Santos',
        'Marina Teixeira',
        'Ana C. N. Santos',
        'Victor F. A. Araújo',
        'GPITCS · UNIT · LICODE · INCT-SANI',
      ],
    ),
  ],
);

const foodLensArticleEn = Project(
  name: 'FoodLens AI',
  initials: 'FL',
  category: 'Articles',
  color: AppColors.sky,
  ink: AppColors.navy,
  tags: ['Computer vision', 'YOLOv8', 'OCR', 'LLM'],
  short:
      'Mobile system for real-time product recognition with YOLOv8, OCR and LLM-based data enrichment.',
  long:
      'FoodLens AI: Um Sistema de Reconhecimento de Produtos com Visão Computacional, OCR e Enriquecimento de Dados em Tempo Real',
  url: 'https://doi.org/10.5753/erbase.2026.29908',
  metrics: [
    ProjectMetric('YOLOv8', 'object detection'),
    ProjectMetric('OCR', 'text extraction from labels'),
    ProjectMetric('LLMs', 'data enrichment'),
  ],
  sections: [
    ProjectSection(
      title: 'Publication',
      bullets: [
        'Research Workshop (PESQBASE), in the Proceedings of the XXVI Regional School of Computing of Bahia, Alagoas and Sergipe (ERBASE 2026).',
        'Title shown in its original language (Portuguese).',
        'DOI: 10.5753/erbase.2026.29908',
      ],
    ),
    ProjectSection(
      title: 'Abstract',
      text:
          'This paper presents FoodLens AI, a mobile system for real-time product recognition using Computer Vision and OCR. The system identifies packaged products and extracts textual information from their labels. The architecture integrates object detection with YOLOv8 (empirically evaluated in real retail scenarios), and includes image preprocessing and OCR steps to extract text from labels. The extracted data is enriched with external sources and LLMs. Unlike approaches focused only on food, the system broadens product understanding. Beyond nutritional analysis, it offers ingredient interpretation, product comparison and market information, supporting consumer decision-making.',
    ),
    ProjectSection(
      title: 'Architecture',
      bullets: [
        'Object detection with YOLOv8, empirically evaluated in real retail scenarios.',
        'Image preprocessing and OCR steps to extract text from labels.',
        'Enrichment of the extracted data with external sources and LLMs.',
        'Beyond nutritional analysis: ingredient interpretation, product comparison and market information.',
      ],
    ),
    ProjectSection(
      title: 'Authors',
      chips: [
        'Stheffany Santos (UNIT)',
        'Pedro Duran (UNIT)',
        'Davi Rocha dos Santos (UNIT)',
        'Pedro Abreu (UNIT)',
        'Victor Flávio Araujo (PUCRS)',
      ],
    ),
  ],
);

const ecoAlertaArticleEn = Project(
  name: 'EcoAlerta',
  initials: 'EA',
  category: 'Articles',
  color: AppColors.lilac,
  ink: AppColors.navy,
  tags: ['MIT App Inventor', 'Technovation Girls', 'Education'],
  short:
      'Report on a citizen app for waste and flooding, built by high school students in Technovation Girls 2026.',
  long:
      'EcoAlerta: Desenvolvimento de Aplicativo Cidadão para Gestão de Resíduos e Alagamentos no Technovation Girls 2026',
  url: 'https://doi.org/10.5753/erbase.2026.29858',
  metrics: [
    ProjectMetric('4', 'high school students'),
    ProjectMetric('MIT App Inventor', 'development platform'),
    ProjectMetric('100%', 'of the program phases completed'),
  ],
  sections: [
    ProjectSection(
      title: 'Publication',
      bullets: [
        'Meninas Digitais Workshop, in the Proceedings of the XXVI Regional School of Computing of Bahia, Alagoas and Sergipe (ERBASE 2026).',
        'Title shown in its original language (Portuguese).',
        'DOI: 10.5753/erbase.2026.29858',
      ],
    ),
    ProjectSection(
      title: 'Abstract',
      text:
          'This paper reports the experience of developing the EcoAlerta app in Technovation Girls 2026, by four high school students from a public school in the Brazilian Northeast countryside, with no prior programming experience. Built with MIT App Inventor, the app lets users report illegal waste dumping points and flood risks by geolocation, organizing reports by priority. The team completed all phases of the program, including the pitch at a federal public university. The results show learning in the technical, socioemotional and civic dimensions, supporting the potential of Project-Based Learning for inclusive computing education in public schools in the Northeast countryside.',
    ),
    ProjectSection(
      title: 'The app',
      bullets: [
        'Reporting of illegal waste dumping points and flood risks by geolocation.',
        'Reports organized by priority.',
        'Built with MIT App Inventor by students with no prior programming experience.',
      ],
    ),
    ProjectSection(
      title: 'Results',
      bullets: [
        'All program phases completed, including the pitch at a federal public university.',
        'Learning in the technical, socioemotional and civic dimensions.',
        'Evidence of the potential of Project-Based Learning for inclusive computing education.',
      ],
    ),
    ProjectSection(
      title: 'Authors',
      chips: [
        'Stheffany Santos (UNIT)',
        'Samara Pereira dos Santos (CEETIP)',
        'Keyla Alice (CEETIP)',
        'Any Karoliny Ferreira de Jesus (CEETIP)',
        'Maria Eduarda Santos de Jesus (CEETIP)',
        'Layse Santos Souza (UFS)',
      ],
    ),
  ],
);
