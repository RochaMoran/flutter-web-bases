import 'package:bases_web/locator.dart';
import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return (constraints.maxWidth > 520) 
          ? _TabletDesktopMenu() 
          : _MobileMenu();
      },
    );
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      color: Colors.green,
      child: Row(
        children: [
          CustomFlatButton(
            text: "Contador Stateful", 
            color: Colors.white,
            onPressed:  () => locator<NavigationService>().navigateTo('/stateful')
          ),
          CustomFlatButton(
            text: "Contador Privider", 
            color: Colors.white,
            onPressed:  () => locator<NavigationService>().navigateTo('/provider')
          ),
          CustomFlatButton(
            text: "Otra Página", 
            color: Colors.white,
            onPressed:  () => locator<NavigationService>().navigateTo('/pagina-desconocida')
          ),
          CustomFlatButton(
            text: "Stateful 100", 
            color: Colors.white,
            onPressed:  () => locator<NavigationService>().navigateTo('/stateful/100')
          ),
        
          CustomFlatButton(
            text: "Provider 100", 
            color: Colors.white,
            onPressed:  () => locator<NavigationService>().navigateTo('/provider?q=200')
          ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.green,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            text: "Contador Stateful", 
            color: Colors.white,
            onPressed:  () => locator<NavigationService>().navigateTo('/stateful')
          ),
          CustomFlatButton(
            text: "Contador Privider", 
            color: Colors.white,
            onPressed:  () => locator<NavigationService>().navigateTo('/provider')
          ),
          CustomFlatButton(
            text: "Otra Página", 
            color: Colors.white,
            onPressed:  () => locator<NavigationService>().navigateTo('/pagina-desconocida')
          ),
          CustomFlatButton(
            text: "Stateful 100", 
            color: Colors.white,
            onPressed:  () => locator<NavigationService>().navigateTo('/stateful/100')
          ),
          CustomFlatButton(
            text: "Provider 100", 
            color: Colors.white,
            onPressed:  () => locator<NavigationService>().navigateTo('/provider?q=200')
          ),
        ],
      ),
    );
  }
}