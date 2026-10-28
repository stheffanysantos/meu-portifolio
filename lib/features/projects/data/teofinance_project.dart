import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../project.dart';

const teofinanceProject = Project(
  name: 'TeoFinance',
  initials: 'TF',
  category: 'Mobile',
  color: AppColors.blue,
  ink: Colors.white,
  tags: ['Flutter', 'Clean Architecture', 'Drift', 'Offline-first'],
  short:
      'Aplicativo de gestão financeira offline-first, com assistente de IA que roda no próprio aparelho usando o Gemma.',
  long:
      'Aplicativo de gestão financeira pessoal que funciona primeiro no dispositivo e sincroniza com a nuvem. Reúne contas a pagar, orçamento, metas, parcelamentos e importação de extratos. Integrei o Gemma, modelo de IA do Google, para um assistente que responde sobre as finanças com inferência local, sem enviar os dados para fora do aparelho.',
  repoUrl: 'https://github.com/stheffanysantos/teofinance',
  metrics: [
    ProjectMetric('454', 'casos de teste'),
    ProjectMetric('48', 'arquivos de teste'),
    ProjectMetric('21', 'features'),
    ProjectMetric('219', 'arquivos Dart'),
  ],
  sections: [
    ProjectSection(
      title: 'Contexto e produto',
      bullets: [
        'Contas a pagar com lembretes e notificações locais agendadas.',
        'Orçamento por envelopes, metas, renda e gastos recorrentes detectados automaticamente.',
        'Parcelamentos e divisão de transações.',
        'Importação de extratos OFX com deduplicação e conciliação com as transações.',
        'Score financeiro e relatório mensal.',
        'Assistente com IA local.',
      ],
    ),
    ProjectSection(
      title: 'Arquitetura',
      text:
          'Clean Architecture por feature, com as camadas data, domain e presentation em cada uma das 21 features.',
      bullets: [
        'domain com entidades, contratos de repositório, serviços e casos de uso, sem dependência de framework.',
        'data com datasources e implementações de repositório, e presentation com providers, telas e widgets.',
        'Riverpod para injeção de dependência e estado, com testes de notifiers e estados.',
        'Tratamento funcional de erros com fpdart e camada própria de errors.',
        'Offline-first: o banco local é a fonte de verdade, e a nuvem é sincronizada por um sync engine dedicado, com pausa e status de sincronização.',
      ],
    ),
    ProjectSection(
      title: 'Stack',
      chips: [
        'Flutter',
        'Dart',
        'Riverpod',
        'Drift (SQLite)',
        'Firebase Auth',
        'Cloud Firestore',
        'fpdart',
        'flutter_secure_storage',
        'local_auth',
        'flutter_local_notifications',
        'flutter_edge_ai (LiteRT-LM)',
        'pdf',
        'csv',
        'file_picker',
      ],
    ),
    ProjectSection(
      title: 'IA local e privacidade',
      bullets: [
        'Assistente que responde perguntas sobre as finanças com inferência no próprio dispositivo, via Gemma e LiteRT-LM.',
        'Motor de respostas por regras como alternativa quando o modelo não está disponível.',
        'Gerenciamento do download e do estado do modelo, com banner na interface.',
        'Testes dedicados garantindo a privacidade dos dados no uso da IA.',
      ],
    ),
    ProjectSection(
      title: 'Segurança',
      bullets: [
        'Regras do Firestore isoladas por usuário: users/{uid}, com subcoleções de transações, perfis, rendas, metas, orçamentos, contas e parcelamentos.',
        'Acesso negado por padrão para qualquer outro caminho.',
        'Regras testadas contra o emulador com @firebase/rules-unit-testing.',
        'Credenciais em armazenamento seguro e biometria com local_auth.',
        'LGPD: o usuário pode exportar os próprios dados e apagar a conta, no aparelho e na nuvem.',
      ],
    ),
    ProjectSection(
      title: 'Testes',
      bullets: [
        '454 casos em 48 arquivos, cobrindo domínio, dados e interface.',
        'Domínio: casos de uso, cálculo de parcelas, envelopes do orçamento, score, detecção de recorrentes e lembretes.',
        'Dados: repositórios e datasources com banco em memória e fake_cloud_firestore.',
        'Importação: parser OFX, deduplicação de transações e fluxo completo de importação.',
        'Conciliação: serviço de matching, casos de uso, repositório e estado da tela.',
        'Sync engine, notificações e widgets de tela.',
        'Regras do Firestore testadas à parte, no emulador.',
      ],
    ),
  ],
);
