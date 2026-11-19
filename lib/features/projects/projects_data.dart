import '../../core/i18n/app_language.dart';
import 'data/articles.dart';
import 'data/articles_en.dart';
import 'data/libug_project.dart';
import 'data/libug_project_en.dart';
import 'data/licode_project.dart';
import 'data/licode_project_en.dart';
import 'data/teofinance_project.dart';
import 'data/teofinance_project_en.dart';
import 'project.dart';

const _filtersPt = ['Todos', 'Mobile', 'Web', 'Artigos'];
const _filtersEn = ['All', 'Mobile', 'Web', 'Articles'];

/// O primeiro filtro mostra tudo; os demais batem com `Project.category`.
List<String> projectFiltersFor(AppLang lang) =>
    lang == AppLang.pt ? _filtersPt : _filtersEn;

List<Project> projectsFor(AppLang lang) =>
    lang == AppLang.pt ? _projectsPt : _projectsEn;

const _projectsPt = <Project>[
  teofinanceProject,
  libugProject,
  licodeProject,
  helenaAppArticle,
  foodLensArticle,
  ecoAlertaArticle,
  presencaFemininaArticle,
  parceirosWitArticle,
];

const _projectsEn = <Project>[
  teofinanceProjectEn,
  libugProjectEn,
  licodeProjectEn,
  helenaAppArticleEn,
  foodLensArticleEn,
  ecoAlertaArticleEn,
  presencaFemininaArticleEn,
  parceirosWitArticleEn,
];
