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
      'Aplicativo de gestão financeira offline-first, com assistente de IA que roda no próprio aparelho usando o Qwen3 1.7B.',
  long:
      'Aplicativo de finanças pessoais que funciona primeiro no dispositivo e sincroniza com a nuvem. Reúne contas a pagar, cartões e faturas, orçamento, metas, investimentos, parcelamentos, reembolsos e importação de extratos. Integrei o Qwen3 1.7B (int4, cerca de 932 MB) para um assistente que responde sobre as finanças com inferência local, sem enviar os dados para fora do aparelho. Usei o projeto para testar até onde um modelo pequeno ainda é útil em hardware móvel.',
  url: 'https://teofinance.tets.app.br/',
  repoUrl: 'https://github.com/stheffanysantos/teofinance',
  metrics: [
    ProjectMetric('491', 'casos de teste'),
    ProjectMetric('58', 'arquivos de teste'),
    ProjectMetric('24', 'features'),
    ProjectMetric('274', 'arquivos Dart'),
  ],
  sections: [
    ProjectSection(
      title: 'Contexto e produto',
      bullets: [
        'Contas a pagar, com lembretes e notificações locais agendadas.',
        'Transações com busca, divisão de despesas e parcelamento.',
        'Cartões e faturas, com compras vinculadas ao cartão.',
        'Reembolsos a receber.',
        'Orçamento por envelopes, metas e rendas.',
        'Gastos recorrentes detectados automaticamente.',
        'Investimentos e categorias editáveis.',
        'Importação de extratos OFX e CSV, com deduplicação e conciliação com as transações.',
        'Painel que separa o saldo na conta do crédito em aberto, e relatório mensal.',
        'Modo discreto para esconder valores, biometria e exportação ou exclusão dos dados.',
        'Assistente de IA no aparelho que responde sobre as finanças do usuário.',
      ],
    ),
    ProjectSection(
      title: 'Arquitetura',
      text:
          'Clean Architecture por feature, com as camadas data, domain e presentation em cada uma das 24 features.',
      bullets: [
        'domain com entidades, contratos de repositório, serviços e casos de uso, sem dependência de framework.',
        'data com datasources e implementações de repositório, e presentation com providers, telas e widgets.',
        'MVVM adaptado ao Riverpod, com Repository pattern e organização feature-first.',
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
        'Qwen3 1.7B (int4, .litertlm)',
        'Hugging Face (download do modelo)',
        'pdf',
        'csv',
        'file_picker',
      ],
    ),
    ProjectSection(
      title: 'IA local e privacidade',
      bullets: [
        'Assistente que responde perguntas sobre as finanças com inferência no próprio dispositivo, via Qwen3 1.7B (int4, formato .litertlm, cerca de 932 MB) e LiteRT-LM, pelo plugin flutter_edge_ai.',
        'Requisitos do motor: Android 11 (minSdk 30) e arm64.',
        'O modelo é baixado sob demanda do Hugging Face, e não vai embutido no instalador. O download fica fora do módulo do assistente, para que gerar uma resposta nunca use a rede.',
        'O LLM fica atrás de contratos (InferenciaLocal, GerenciadorModelo e MotorResposta), isolado em um único módulo. Trocar o modelo ou o runtime afeta uma classe e um provider.',
        'Motor de respostas por regras como alternativa quando o modelo não está instalado, ou quando a inferência passa do limite de tempo. É ele que responde na versão web, sem o LLM.',
        'Inferência na CPU: o delegado de GPU derrubava o app em um aparelho de teste.',
        'As perguntas nunca saem do aparelho, e o assistente fica limitado ao escopo financeiro.',
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
        '491 casos em 58 arquivos, cobrindo domínio, dados e interface.',
        'Domínio: casos de uso, cálculo de parcelas, envelopes do orçamento, detecção de recorrentes e lembretes.',
        'Dados: repositórios e datasources com banco em memória e fake_cloud_firestore.',
        'Importação: parser OFX, deduplicação de transações e fluxo completo de importação.',
        'Conciliação: serviço de matching, casos de uso, repositório e estado da tela.',
        'Sync engine, notificações e widgets de tela.',
        'Regras do Firestore testadas à parte, no emulador.',
      ],
    ),
  ],
);
