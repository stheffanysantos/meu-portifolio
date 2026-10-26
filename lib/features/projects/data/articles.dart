import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../project.dart';

const helenaAppArticle = Project(
  name: 'HelenaApp',
  initials: 'HA',
  category: 'Artigos',
  color: AppColors.lilac,
  ink: AppColors.navy,
  tags: ['IHC', 'Microinterações', 'CLIHC 2026'],
  short:
      'Microinterações emocionais como estratégia de engajamento em apps de formação de hábitos de bem-estar.',
  long:
      'Microinterações Emocionais no Design de Interfaces para Formação de Hábitos de Bem-Estar: Contribuições da IHC à Transformação Digital',
  url: 'https://doi.org/10.5753/clihc.2026.20403',
  metrics: [
    ProjectMetric('70–80%', 'taxa de abandono em apps de hábitos'),
    ProjectMetric('87', 'participantes na avaliação'),
    ProjectMetric('88,5%', 'interessados em feedback emocional'),
    ProjectMetric('35,6%', 'associam motivação a ver o progresso'),
  ],
  sections: [
    ProjectSection(
      title: 'Publicação',
      bullets: [
        'Artigo completo nos Anais da XII Conferência Latino-Americana de Interação Humano-Computador (CLIHC 2026).',
        'DOI: 10.5753/clihc.2026.20403',
      ],
    ),
    ProjectSection(
      title: 'Resumo',
      text:
          'A Interação Humano-Computador (IHC) enfrenta altas taxas de abandono (70–80%) em apps de formação de hábitos. Este trabalho investiga microinterações emocionais como estratégia de engajamento por meio do protótipo HelenaApp, fundamentado nas heurísticas de Nielsen, princípios de Gestalt e modelo de Norman. A avaliação com 87 participantes indicou que 88,5% demonstram interesse em feedback emocional e 35,6% associam motivação à visualização de progresso, sugerindo boa aceitação.',
    ),
    ProjectSection(
      title: 'Fundamentação',
      chips: [
        'Heurísticas de Nielsen',
        'Gestalt',
        'Modelo de Norman',
        'Microinterações',
        'Design emocional',
      ],
    ),
    ProjectSection(
      title: 'Autoria',
      chips: [
        'Stheffany Cruz Santos (UNIT)',
        'Layse Santos Souza (UNIT)',
        'Ana Carla do Nascimento Santos (UNIT)',
        'João Vitor R. Moura (UNIT)',
      ],
    ),
  ],
);

const presencaFemininaArticle = Project(
  name: 'Presença Feminina em TI no Nordeste',
  initials: 'PF',
  category: 'Artigos',
  color: AppColors.purple,
  ink: Colors.white,
  tags: ['Equidade de gênero', 'TI', 'ERBASE 2025'],
  short:
      'Análise exploratória dos desafios e oportunidades das mulheres em TI no Nordeste brasileiro.',
  long:
      'Presença Feminina em Diversas Áreas de TI no Nordeste: Uma Análise Exploratória dos Desafios e Oportunidades',
  url: 'https://doi.org/10.5753/erbase.2025.14158',
  metrics: [
    ProjectMetric('14%', 'de mulheres em cursos de graduação'),
    ProjectMetric('20%', 'de mulheres no mercado de trabalho'),
    ProjectMetric('9', 'autores'),
  ],
  sections: [
    ProjectSection(
      title: 'Publicação',
      bullets: [
        'Workshop Meninas Digitais, nos Anais da XXV Escola Regional de Computação Bahia, Alagoas e Sergipe (ERBASE 2025).',
        'DOI: 10.5753/erbase.2025.14158',
      ],
    ),
    ProjectSection(
      title: 'Resumo',
      text:
          'A pesquisa analisa a desigualdade de gênero na área de Tecnologia da Informação (TI), com foco no contexto do Nordeste brasileiro, onde a participação feminina é criticamente baixa (14% em cursos de graduação e 20% no mercado de trabalho). Através de uma abordagem qualitativa e exploratória, este estudo investiga as barreiras estruturais e socioculturais que limitam a trajetória das mulheres no setor. Foi realizado um mapeamento da literatura acadêmica e de startups lideradas por mulheres na região para compor um diagnóstico inicial do cenário. Os resultados confirmam a escassez de liderança feminina e, principalmente, a carência de dados regionais específicos, o que dificulta a criação de políticas públicas eficazes para promover a equidade de gênero no ecossistema de inovação local.',
    ),
    ProjectSection(
      title: 'Método',
      bullets: [
        'Abordagem qualitativa e exploratória.',
        'Mapeamento da literatura acadêmica.',
        'Mapeamento de startups lideradas por mulheres na região.',
      ],
    ),
    ProjectSection(
      title: 'Autoria',
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

const parceirosWitArticle = Project(
  name: 'Parceiros do Meninas Digitais no WIT',
  initials: 'MD',
  category: 'Artigos',
  color: AppColors.blue,
  ink: Colors.white,
  tags: ['Análise qualitativa', 'Meninas Digitais', 'ERBASE 2025'],
  short:
      'Análise qualitativa de relatos de projetos parceiros nordestinos do Meninas Digitais em artigos do WIT.',
  long:
      'Presença de Projetos Parceiros Nordestinos do Meninas Digitais em Artigos do WIT: Análise Qualitativa de Temáticas Trabalhadas',
  url: 'https://doi.org/10.5753/erbase.2025.13761',
  metrics: [
    ProjectMetric('339', 'artigos avaliados'),
    ProjectMetric('69', 'artigos sobre presença nordestina'),
    ProjectMetric('9', 'autores'),
  ],
  sections: [
    ProjectSection(
      title: 'Publicação',
      bullets: [
        'Anais da Escola Regional de Computação Bahia, Alagoas e Sergipe (ERBASE 2025).',
        'DOI: 10.5753/erbase.2025.13761',
      ],
    ),
    ProjectSection(
      title: 'Resumo',
      text:
          'Este artigo tem como objetivo analisar relatos de projetos parceiros do Meninas Digitais no Nordeste para incentivar a criação de novos grupos que promovam a participação feminina em Tecnologia da Informação (TI) na região. A pesquisa segue uma abordagem qualitativa e teve início com a avaliação de 339 artigos, que foram filtrados para 69 sobre presença nordestina. Selecionamos apenas relatórios de comunidades lideradas por mulheres que fizeram parceria com a Meninas Digitais. A análise dessas experiências permitiu identificar estratégias eficazes, desafios enfrentados e impactos gerados, fornecendo direcionamentos para novos interessados na causa. Como conclusão, destaca-se a importância da ampliação da rede de iniciativas voltadas à inclusão de mulheres em STEM, fortalecendo ações de equidade de gênero e promovendo um ambiente mais diverso na área de TI no nordeste do Brasil.',
    ),
    ProjectSection(
      title: 'Método',
      bullets: [
        'Abordagem qualitativa.',
        'Triagem de 339 artigos, filtrados para 69 sobre presença nordestina.',
        'Seleção apenas de relatos de comunidades lideradas por mulheres e parceiras do Meninas Digitais.',
        'Identificação de estratégias eficazes, desafios enfrentados e impactos gerados.',
      ],
    ),
    ProjectSection(
      title: 'Autoria',
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

const foodLensArticle = Project(
  name: 'FoodLens AI',
  initials: 'FL',
  category: 'Artigos',
  color: AppColors.sky,
  ink: AppColors.navy,
  tags: ['Visão computacional', 'YOLOv8', 'OCR', 'LLM'],
  short:
      'Sistema mobile de reconhecimento de produtos em tempo real com YOLOv8, OCR e enriquecimento de dados por LLMs.',
  long:
      'FoodLens AI: Um Sistema de Reconhecimento de Produtos com Visão Computacional, OCR e Enriquecimento de Dados em Tempo Real',
  url: 'https://doi.org/10.5753/erbase.2026.29908',
  metrics: [
    ProjectMetric('YOLOv8', 'detecção de objetos'),
    ProjectMetric('OCR', 'extração de texto dos rótulos'),
    ProjectMetric('LLMs', 'enriquecimento dos dados'),
  ],
  sections: [
    ProjectSection(
      title: 'Publicação',
      bullets: [
        'Workshop de Pesquisa (PESQBASE), nos Anais da XXVI Escola Regional de Computação Bahia, Alagoas e Sergipe (ERBASE 2026).',
        'DOI: 10.5753/erbase.2026.29908',
      ],
    ),
    ProjectSection(
      title: 'Resumo',
      text:
          'Este artigo apresenta o FoodLens AI, um sistema mobile para reconhecimento de produtos em tempo real utilizando Visão Computacional e OCR. O sistema identifica produtos embalados e extrai informações textuais dos rótulos. A arquitetura integra detecção de objetos com YOLOv8 (avaliada empiricamente em cenários reais de varejo), e prevê etapas de pré-processamento de imagem e OCR para extração textual dos rótulos. Os dados extraídos são enriquecidos com fontes externas e LLMs. Diferente de abordagens focadas apenas em alimentos, o sistema amplia a compreensão de produtos. Além da análise nutricional, oferece interpretação de ingredientes, comparação entre produtos e informações de mercado, auxiliando a tomada de decisão do consumidor.',
    ),
    ProjectSection(
      title: 'Arquitetura',
      bullets: [
        'Detecção de objetos com YOLOv8, avaliada empiricamente em cenários reais de varejo.',
        'Etapas de pré-processamento de imagem e OCR para extrair o texto dos rótulos.',
        'Enriquecimento dos dados extraídos com fontes externas e LLMs.',
        'Além da análise nutricional: interpretação de ingredientes, comparação entre produtos e informações de mercado.',
      ],
    ),
    ProjectSection(
      title: 'Autoria',
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

const ecoAlertaArticle = Project(
  name: 'EcoAlerta',
  initials: 'EA',
  category: 'Artigos',
  color: AppColors.lilac,
  ink: AppColors.navy,
  tags: ['MIT App Inventor', 'Technovation Girls', 'Educação'],
  short:
      'Relato de um app cidadão para resíduos e alagamentos, feito por estudantes do Ensino Médio no Technovation Girls 2026.',
  long:
      'EcoAlerta: Desenvolvimento de Aplicativo Cidadão para Gestão de Resíduos e Alagamentos no Technovation Girls 2026',
  url: 'https://doi.org/10.5753/erbase.2026.29858',
  metrics: [
    ProjectMetric('4', 'estudantes do Ensino Médio'),
    ProjectMetric('MIT App Inventor', 'plataforma de desenvolvimento'),
    ProjectMetric('100%', 'das fases do programa concluídas'),
  ],
  sections: [
    ProjectSection(
      title: 'Publicação',
      bullets: [
        'Workshop Meninas Digitais, nos Anais da XXVI Escola Regional de Computação Bahia, Alagoas e Sergipe (ERBASE 2026).',
        'DOI: 10.5753/erbase.2026.29858',
      ],
    ),
    ProjectSection(
      title: 'Resumo',
      text:
          'Este artigo relata a experiência de desenvolvimento do aplicativo EcoAlerta no Technovation Girls 2026, por quatro estudantes do Ensino Médio de uma escola pública do interior nordestino, sem experiência prévia em programação. Desenvolvido com MIT App Inventor, o aplicativo permite registrar pontos de descarte irregular de lixo e riscos de alagamento por geolocalização, organizando ocorrências por prioridade. A equipe concluiu todas as fases do programa, incluindo o pitch em uma universidade pública federal. Os resultados evidenciam aprendizagens nas dimensões técnica, socioemocional e cidadã, corroborando o potencial da Aprendizagem Baseada em Projetos para o ensino de computação inclusivo em escolas públicas do interior nordestino.',
    ),
    ProjectSection(
      title: 'O aplicativo',
      bullets: [
        'Registro de pontos de descarte irregular de lixo e de riscos de alagamento por geolocalização.',
        'Ocorrências organizadas por prioridade.',
        'Desenvolvido com MIT App Inventor por estudantes sem experiência prévia em programação.',
      ],
    ),
    ProjectSection(
      title: 'Resultados',
      bullets: [
        'Todas as fases do programa concluídas, incluindo o pitch em uma universidade pública federal.',
        'Aprendizagens nas dimensões técnica, socioemocional e cidadã.',
        'Evidência do potencial da Aprendizagem Baseada em Projetos para o ensino de computação inclusivo.',
      ],
    ),
    ProjectSection(
      title: 'Autoria',
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
