import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../project.dart';

const teofinanceProjectEn = Project(
  name: 'TeoFinance',
  initials: 'TF',
  category: 'Mobile',
  color: AppColors.blue,
  ink: Colors.white,
  tags: ['Flutter', 'Clean Architecture', 'Drift', 'Offline-first'],
  short:
      'Offline-first personal finance app with an AI assistant that runs on the device itself using Qwen3 1.7B.',
  long:
      'A personal finance app that works on the device first and syncs with the cloud. It covers bills to pay, credit cards and statements, budget, goals, investments, installments, reimbursements and statement imports. I integrated Qwen3 1.7B (int4, about 932 MB) into an assistant that answers questions about the user\'s finances with local inference, without sending data off the device. I used the project to test how far a small model can still be useful on mobile hardware.',
  url: 'https://teofinance.tets.app.br/',
  repoUrl: 'https://github.com/stheffanysantos/teofinance',
  metrics: [
    ProjectMetric('491', 'test cases'),
    ProjectMetric('58', 'test files'),
    ProjectMetric('24', 'features'),
    ProjectMetric('274', 'Dart files'),
  ],
  sections: [
    ProjectSection(
      title: 'Context and product',
      bullets: [
        'Bills to pay, with scheduled local reminders and notifications.',
        'Transactions with search, expense splitting and installments.',
        'Credit cards and statements, with purchases linked to the card.',
        'Reimbursements to receive.',
        'Envelope budgeting, goals and income.',
        'Recurring expenses detected automatically.',
        'Investments and editable categories.',
        'OFX and CSV statement import, with deduplication and reconciliation against transactions.',
        'Dashboard that separates the account balance from open credit, plus a monthly report.',
        'Discreet mode to hide amounts, biometrics, and data export or deletion.',
        'On-device AI assistant that answers questions about the user\'s finances.',
      ],
    ),
    ProjectSection(
      title: 'Architecture',
      text:
          'Clean Architecture by feature, with data, domain and presentation layers in each of the 24 features.',
      bullets: [
        'domain holds entities, repository contracts, services and use cases, with no framework dependency.',
        'data holds datasources and repository implementations, and presentation holds providers, screens and widgets.',
        'MVVM adapted to Riverpod, with the Repository pattern and a feature-first layout.',
        'Riverpod for dependency injection and state, with tests for notifiers and states.',
        'Functional error handling with fpdart and a dedicated errors layer.',
        'Offline-first: the local database is the source of truth, and the cloud is synced by a dedicated sync engine, with pause and sync status.',
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
        'Hugging Face (model download)',
        'pdf',
        'csv',
        'file_picker',
      ],
    ),
    ProjectSection(
      title: 'On-device AI and privacy',
      bullets: [
        'An assistant that answers questions about the user\'s finances with inference on the device itself, using Qwen3 1.7B (int4, .litertlm format, about 932 MB) and LiteRT-LM, through the flutter_edge_ai plugin.',
        'Engine requirements: Android 11 (minSdk 30) and arm64.',
        'The model is downloaded on demand from Hugging Face and is not bundled in the installer. The download lives outside the assistant module, so generating an answer never uses the network.',
        'The LLM sits behind contracts (InferenciaLocal, GerenciadorModelo and MotorResposta), isolated in a single module. Swapping the model or the runtime affects one class and one provider.',
        'A rule-based answer engine as a fallback when the model is not installed or when inference exceeds the time limit. It is the one that answers on the web version, without the LLM.',
        'CPU inference: the GPU delegate crashed the app on a test device.',
        'Questions never leave the device, and the assistant is limited to the financial scope.',
        'Model download and state management, with a banner in the interface.',
        'Dedicated tests guaranteeing data privacy when using the AI.',
      ],
    ),
    ProjectSection(
      title: 'Security',
      bullets: [
        'Firestore rules isolated per user: users/{uid}, with subcollections for transactions, profiles, income, goals, budgets, accounts and installments.',
        'Access denied by default for any other path.',
        'Rules tested against the emulator with @firebase/rules-unit-testing.',
        'Credentials in secure storage and biometrics with local_auth.',
        'LGPD (Brazilian data protection law): users can export their own data and delete their account, on the device and in the cloud.',
      ],
    ),
    ProjectSection(
      title: 'Testing',
      bullets: [
        '491 cases in 58 files, covering domain, data and UI.',
        'Domain: use cases, installment calculation, budget envelopes, recurring detection and reminders.',
        'Data: repositories and datasources with an in-memory database and fake_cloud_firestore.',
        'Import: OFX parser, transaction deduplication and the full import flow.',
        'Reconciliation: matching service, use cases, repository and screen state.',
        'Sync engine, notifications and screen widgets.',
        'Firestore rules tested separately, on the emulator.',
      ],
    ),
  ],
);
