import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view404.dart';
import 'package:fluro/fluro.dart';

final counterHandler = Handler(
  handlerFunc: (context, params) {
    return CounterView(
      base: params['base']?.first ?? '5',
    );
  },
);

final providerHandler = Handler(handlerFunc: (context, params) {
  return CounterProviderView(
    base: params['q']?.first ?? '5',
  );
});

final pageNotFound = Handler(
  handlerFunc: (context, params) => const View404(),
);

final dashboarduserHandler = Handler(handlerFunc: (context, params) {
  // print(params);
  return const View404();
});
