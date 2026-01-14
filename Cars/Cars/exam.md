# SwiftUI Examen - Auto Showroom App

**Tijdsduur:** 3 uur  
**Totaal aantal schermen:** 5 schermen

## Opdrachtbeschrijving

Maak een SwiftUI app voor een auto showroom waarbij gebruikers verschillende auto's kunnen bekijken en beheren.

## Functionele Vereisten

### 1. TabView Structuur

- Implementeer een `TabView` met 3 tabs:
  - **Home**: Overzicht van alle auto's
  - **Favorieten**: Lijst van favoriete auto's
  - **Instellingen**: App instellingen

### 2. Navigatie

- **NavigationStack met path**: Gebruik `NavigationStack` met een path-based navigatie voor het navigeren tussen auto's en detail schermen
- **Boolean navigatie**: Implementeer een navigatie naar een filter scherm met een Boolean state


### 5. Schermopbouw

#### Scherm 1: HomeView (TabView - Home Tab)

- Toon een `Grid` met `GridRow` met alle auto's (2 kolommen)
- Gebruik de `DataManager` om data te laden via `.task`
- Toon merk, model en prijs per auto
- Klik op een auto om naar detail te navigeren (NavigationStack met path)

#### Scherm 2: CarDetailView

- Toon alle details van de geselecteerde auto
- Gebruik `@State` voor een toggle om auto als favoriet te markeren
- Toon een "Filter tonen" button die naar het filter scherm navigeert (Boolean navigatie)

#### Scherm 3: FilterView (Boolean navigatie)

- Filter auto's op brandstoftype (Benzine, Elektrisch, Alle)
- Gebruik `@Binding` om het geselecteerde filter terug te geven
- Sheet/NavigationLink met Boolean presentatie

#### Scherm 4: FavoritesView (TabView - Favorieten Tab)

- Toon favoriete auto's in een `List`
- Gebruik `@Environment` om gedeelde data te benaderen
- Mogelijkheid om favorieten te verwijderen

#### Scherm 5: SettingsView (TabView - Instellingen Tab)

- Picker voor sorteer voorkeur (Prijs, Merk, Jaar)

## Evaluatiecriteria

1. **Correcte implementatie TabView** (10 punten)
2. **NavigationStack met path** (15 punten)
3. **Boolean navigatie** (10 punten)
4. **Async data loading** (15 punten)
5. **Grid en GridRow gebruik** (10 punten)
6. **Correct gebruik @State en @Binding** (15 punten)
7. **@Environment implementatie** (10 punten)
8. **Code kwaliteit en structuur** (10 punten)
9. **UI/UX en design** (5 punten)

**Totaal: 100 punten**

## Tips

- Begin met het opzetten van de basis structuur (TabView + Navigation)
- Implementeer eerst de data loading
- Test regelmatig je code
- Gebruik preview providers voor snelle UI development
- Houd je code clean en gestructureerd

**Veel succes!**
