// ignore_for_file: depend_on_referenced_packages


import 'package:go_router/go_router.dart';
void navigatorPush(context, {
required String pathAppRouter
})
{
  GoRouter.of(context ).push(pathAppRouter);
}

void navigatorReplace(context,{
  required String pathAppRouter
})
{
  GoRouter.of(context ).pushReplacement(pathAppRouter);
}
