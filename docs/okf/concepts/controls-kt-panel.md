---
type: concept
title: "KimTools / Controls / Panel"
description: "Modern WinForms controls, Components, and theming for .NET -single assembly, one-time license, zero dependencies."
source: "https://kimtoo.net/controls/kt-panel/"
path: /controls/kt-panel/
updated: 2026-08-25
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-25T12:43:53.390Z"
---
---
title: "KimTools / Controls / Panel"
description: "Modern WinForms controls, Components, and theming for .NET -single assembly, one-time license, zero dependencies."
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `Panel`
A modern, fully customizable panel control for WinForms. It is a container for grouping and styling related content.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-panel-light](/assets/images/screenshots/kt-panel/kt-panel-light.png?v=639232659257505520){ .light .snapshot} ![kt-panel-dark](/assets/images/screenshots/kt-panel/kt-panel-dark.png?v=639232659257505520){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::
# Background
| ::: tag "Background" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the panel's background color.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Gradient with `Kt-Colors`
Use KimTools Semantically named dynamic theme colors.

```csharp "🔴 🟡 🟢"
// ==========================================
//  Gradient Angle
// ==========================================
// Render theme gradient using tuple
// of 2 colors and angle (Optional)
panel.Background =
(
    startColor: KtColor.PRIMARY[50],
    stopColor: KtColor.SECONDARY[50],
    angle: 45
);
```
== side
::: tabs
== tab "Auto" icon:app-window
![gradient-background-light](/assets/images/screenshots/kt-panel/gradient-background-light.png?v=639232659278659258){ .light .snapshot} ![gradient-background-dark](/assets/images/screenshots/kt-panel/gradient-background-dark.png?v=639232659278669401){.dark .snapshot}

== tab "Light" icon:sun
![gradient-background-light](/assets/images/screenshots/kt-panel/gradient-background-light.png?v=639232659278659258){  .snapshot}

== tab "Dark" icon:moon
![gradient-background-dark](/assets/images/screenshots/kt-panel/gradient-background-dark.png?v=639232659278659258){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Gradient with `System-Colors`
Use System.Drawing Colors or combine with KtColors
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var panel = new KtPanel();
	
// Background supports System color,
// gradient with angle, Transparent or Empty 
panel.Background =
(
    // or "blue" | "#5F9EA0;
    startColor: Color.CadetBlue,
	
    // "rgb(95, 158, 160)" | hsl(182, 25%, 50%)
    stopColor: Color.DodgerBlue,
    angle: 45 // optional (0-360)
);
```
== side
::: tabs
== tab "Auto" icon:app-window
![system-color-gradient-light](/assets/images/screenshots/kt-panel/system-color-gradient-light.png?v=639232659288986554){ .light .snapshot} ![system-color-gradient-dark](/assets/images/screenshots/kt-panel/system-color-gradient-dark.png?v=639232659288986554){.dark .snapshot}

== tab "Light" icon:sun
![system-color-gradient-light](/assets/images/screenshots/kt-panel/system-color-gradient-light.png?v=639232659288986554){  .snapshot}

== tab "Dark" icon:moon
![system-color-gradient-dark](/assets/images/screenshots/kt-panel/system-color-gradient-dark.png?v=639232659288986554){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Gradient with `Opacity`
KtPanel Background support translucent gradient colors too :smile:
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var panel = new KtPanel();
	
// Use % operator to apply transparency to Kt-Color
panel.Background =
(
    startColor: KtColor.Teal % 40, // 40% Opacity
    stopColor: KtColor.Emerald % 60 // 60% Opacity
);
```
== side
::: tabs
== tab "Auto" icon:app-window
![opacity-gradient-light](/assets/images/screenshots/kt-panel/opacity-gradient-light.png?v=639232659299648981){ .light .snapshot} ![opacity-gradient-dark](/assets/images/screenshots/kt-panel/opacity-gradient-dark.png?v=639232659299648981){.dark .snapshot}

== tab "Light" icon:sun
![opacity-gradient-light](/assets/images/screenshots/kt-panel/opacity-gradient-light.png?v=639232659299648981){  .snapshot}

== tab "Dark" icon:moon
![opacity-gradient-dark](/assets/images/screenshots/kt-panel/opacity-gradient-dark.png?v=639232659299648981){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Solid `Color` | `KtColor` 
KtPanel Background supports plain Solid Color or KtColor with or without opacity
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var panel = new KtPanel();
	
// Use % operator to apply transparency to Kt-Color
panel.Background = Color.BlueViolet;  // Color
                                      // panel.Background = KtColor.SUCCESS;     // KtColor
                                      // panel.Background = KtColor.Blue;        // KtColor
                                      // panel.Background = KtColor.Blue % 50;   // With Opacity
                                      // panel.Background = KtColor.FromHex("#1E90FF"); //Hex
	
// Any Web Color Format
// panel.Background = KtColor.Web("rgb(95, 158, 160)"); 
// panel.Background = KtColor.Web("hsl(210, 100%, 56%)"); // HSL Too
```
== side
::: tabs
== tab "Auto" icon:app-window
![solid-background-light](/assets/images/screenshots/kt-panel/solid-background-light.png?v=639232659309986537){ .light .snapshot} ![solid-background-dark](/assets/images/screenshots/kt-panel/solid-background-dark.png?v=639232659309986537){.dark .snapshot}

== tab "Light" icon:sun
![solid-background-light](/assets/images/screenshots/kt-panel/solid-background-light.png?v=639232659309986537){  .snapshot}

== tab "Dark" icon:moon
![solid-background-dark](/assets/images/screenshots/kt-panel/solid-background-dark.png?v=639232659309986537){ .snapshot}

:::
:::
# Pattern styles
| ::: tag "PatternStyle" icon:wrench | ::: tag "HatchStyle" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.drawing2d.hatchstyle?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Pattern style.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Pattern `Style` | `Color` 
KtPanel Background supports patterns types which blend with the panel background
set `PatternStyle` to `null` to disable patterns.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var panel = new KtPanel();
	
// Use % operator to apply transparency to Kt-Color
panel.Background = KtColor.BASE_1; // Solid Color or Gradient
panel.PatternColor = KtColor.BASE_3;  // Solid Color or 
panel.PatternStyle = HatchStyle.LargeConfetti;
```
== side
::: tabs
== tab "Auto" icon:app-window
![background-patterns-light](/assets/images/screenshots/kt-panel/background-patterns-light.png?v=639232659699642992){ .light .snapshot} ![background-patterns-dark](/assets/images/screenshots/kt-panel/background-patterns-dark.png?v=639232659699642992){.dark .snapshot}

== tab "Light" icon:sun
![background-patterns-light](/assets/images/screenshots/kt-panel/background-patterns-light.png?v=639232659699642992){  .snapshot}

== tab "Dark" icon:moon
![background-patterns-dark](/assets/images/screenshots/kt-panel/background-patterns-dark.png?v=639232659699642992){ .snapshot}

:::
:::

::: hero layout:slider
== slide
![background-patterns_horizontal-light](/assets/images/screenshots/kt-panel/background-patterns_horizontal-light.png?v=639232659327305338){ .light .snapshot} ![background-patterns_horizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_horizontal-dark.png?v=639232659327305338){.dark .snapshot}
== slide
![background-patterns_min-light](/assets/images/screenshots/kt-panel/background-patterns_min-light.png?v=639232659333850487){ .light .snapshot} ![background-patterns_min-dark](/assets/images/screenshots/kt-panel/background-patterns_min-dark.png?v=639232659333850487){.dark .snapshot}
== slide
![background-patterns_vertical-light](/assets/images/screenshots/kt-panel/background-patterns_vertical-light.png?v=639232659340487211){ .light .snapshot} ![background-patterns_vertical-dark](/assets/images/screenshots/kt-panel/background-patterns_vertical-dark.png?v=639232659340487211){.dark .snapshot}
== slide
![background-patterns_forwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_forwarddiagonal-light.png?v=639232659347050734){ .light .snapshot} ![background-patterns_forwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_forwarddiagonal-dark.png?v=639232659347050734){.dark .snapshot}
== slide
![background-patterns_backwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_backwarddiagonal-light.png?v=639232659353588310){ .light .snapshot} ![background-patterns_backwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_backwarddiagonal-dark.png?v=639232659353588310){.dark .snapshot}
== slide
![background-patterns_cross-light](/assets/images/screenshots/kt-panel/background-patterns_cross-light.png?v=639232659360433766){ .light .snapshot} ![background-patterns_cross-dark](/assets/images/screenshots/kt-panel/background-patterns_cross-dark.png?v=639232659360433766){.dark .snapshot}
== slide
![background-patterns_largegrid-light](/assets/images/screenshots/kt-panel/background-patterns_largegrid-light.png?v=639232659366959546){ .light .snapshot} ![background-patterns_largegrid-dark](/assets/images/screenshots/kt-panel/background-patterns_largegrid-dark.png?v=639232659366959546){.dark .snapshot}
== slide
![background-patterns_max-light](/assets/images/screenshots/kt-panel/background-patterns_max-light.png?v=639232659373519288){ .light .snapshot} ![background-patterns_max-dark](/assets/images/screenshots/kt-panel/background-patterns_max-dark.png?v=639232659373519288){.dark .snapshot}
== slide
![background-patterns_diagonalcross-light](/assets/images/screenshots/kt-panel/background-patterns_diagonalcross-light.png?v=639232659380087386){ .light .snapshot} ![background-patterns_diagonalcross-dark](/assets/images/screenshots/kt-panel/background-patterns_diagonalcross-dark.png?v=639232659380087386){.dark .snapshot}
== slide
![background-patterns_percent05-light](/assets/images/screenshots/kt-panel/background-patterns_percent05-light.png?v=639232659386802305){ .light .snapshot} ![background-patterns_percent05-dark](/assets/images/screenshots/kt-panel/background-patterns_percent05-dark.png?v=639232659386802305){.dark .snapshot}
== slide
![background-patterns_percent10-light](/assets/images/screenshots/kt-panel/background-patterns_percent10-light.png?v=639232659393355515){ .light .snapshot} ![background-patterns_percent10-dark](/assets/images/screenshots/kt-panel/background-patterns_percent10-dark.png?v=639232659393355515){.dark .snapshot}
== slide
![background-patterns_percent20-light](/assets/images/screenshots/kt-panel/background-patterns_percent20-light.png?v=639232659399934753){ .light .snapshot} ![background-patterns_percent20-dark](/assets/images/screenshots/kt-panel/background-patterns_percent20-dark.png?v=639232659399934753){.dark .snapshot}
== slide
![background-patterns_percent25-light](/assets/images/screenshots/kt-panel/background-patterns_percent25-light.png?v=639232659406502121){ .light .snapshot} ![background-patterns_percent25-dark](/assets/images/screenshots/kt-panel/background-patterns_percent25-dark.png?v=639232659406502121){.dark .snapshot}
== slide
![background-patterns_percent30-light](/assets/images/screenshots/kt-panel/background-patterns_percent30-light.png?v=639232659413165878){ .light .snapshot} ![background-patterns_percent30-dark](/assets/images/screenshots/kt-panel/background-patterns_percent30-dark.png?v=639232659413165878){.dark .snapshot}
== slide
![background-patterns_percent40-light](/assets/images/screenshots/kt-panel/background-patterns_percent40-light.png?v=639232659419762583){ .light .snapshot} ![background-patterns_percent40-dark](/assets/images/screenshots/kt-panel/background-patterns_percent40-dark.png?v=639232659419762583){.dark .snapshot}
== slide
![background-patterns_percent50-light](/assets/images/screenshots/kt-panel/background-patterns_percent50-light.png?v=639232659426326239){ .light .snapshot} ![background-patterns_percent50-dark](/assets/images/screenshots/kt-panel/background-patterns_percent50-dark.png?v=639232659426326239){.dark .snapshot}
== slide
![background-patterns_percent60-light](/assets/images/screenshots/kt-panel/background-patterns_percent60-light.png?v=639232659432854592){ .light .snapshot} ![background-patterns_percent60-dark](/assets/images/screenshots/kt-panel/background-patterns_percent60-dark.png?v=639232659432854592){.dark .snapshot}
== slide
![background-patterns_percent70-light](/assets/images/screenshots/kt-panel/background-patterns_percent70-light.png?v=639232659439437960){ .light .snapshot} ![background-patterns_percent70-dark](/assets/images/screenshots/kt-panel/background-patterns_percent70-dark.png?v=639232659439437960){.dark .snapshot}
== slide
![background-patterns_percent75-light](/assets/images/screenshots/kt-panel/background-patterns_percent75-light.png?v=639232659445924951){ .light .snapshot} ![background-patterns_percent75-dark](/assets/images/screenshots/kt-panel/background-patterns_percent75-dark.png?v=639232659445924951){.dark .snapshot}
== slide
![background-patterns_percent80-light](/assets/images/screenshots/kt-panel/background-patterns_percent80-light.png?v=639232659452473729){ .light .snapshot} ![background-patterns_percent80-dark](/assets/images/screenshots/kt-panel/background-patterns_percent80-dark.png?v=639232659452473729){.dark .snapshot}
== slide
![background-patterns_percent90-light](/assets/images/screenshots/kt-panel/background-patterns_percent90-light.png?v=639232659459028020){ .light .snapshot} ![background-patterns_percent90-dark](/assets/images/screenshots/kt-panel/background-patterns_percent90-dark.png?v=639232659459028020){.dark .snapshot}
== slide
![background-patterns_lightdownwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_lightdownwarddiagonal-light.png?v=639232659465588760){ .light .snapshot} ![background-patterns_lightdownwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_lightdownwarddiagonal-dark.png?v=639232659465588760){.dark .snapshot}
== slide
![background-patterns_lightupwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_lightupwarddiagonal-light.png?v=639232659472294883){ .light .snapshot} ![background-patterns_lightupwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_lightupwarddiagonal-dark.png?v=639232659472294883){.dark .snapshot}
== slide
![background-patterns_darkdownwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_darkdownwarddiagonal-light.png?v=639232659478786711){ .light .snapshot} ![background-patterns_darkdownwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_darkdownwarddiagonal-dark.png?v=639232659478786711){.dark .snapshot}
== slide
![background-patterns_darkupwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_darkupwarddiagonal-light.png?v=639232659485380104){ .light .snapshot} ![background-patterns_darkupwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_darkupwarddiagonal-dark.png?v=639232659485380104){.dark .snapshot}
== slide
![background-patterns_widedownwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_widedownwarddiagonal-light.png?v=639232659491860194){ .light .snapshot} ![background-patterns_widedownwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_widedownwarddiagonal-dark.png?v=639232659491860194){.dark .snapshot}
== slide
![background-patterns_wideupwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_wideupwarddiagonal-light.png?v=639232659498416036){ .light .snapshot} ![background-patterns_wideupwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_wideupwarddiagonal-dark.png?v=639232659498416036){.dark .snapshot}
== slide
![background-patterns_lightvertical-light](/assets/images/screenshots/kt-panel/background-patterns_lightvertical-light.png?v=639232659504943920){ .light .snapshot} ![background-patterns_lightvertical-dark](/assets/images/screenshots/kt-panel/background-patterns_lightvertical-dark.png?v=639232659504943920){.dark .snapshot}
== slide
![background-patterns_lighthorizontal-light](/assets/images/screenshots/kt-panel/background-patterns_lighthorizontal-light.png?v=639232659511468359){ .light .snapshot} ![background-patterns_lighthorizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_lighthorizontal-dark.png?v=639232659511468359){.dark .snapshot}
== slide
![background-patterns_narrowvertical-light](/assets/images/screenshots/kt-panel/background-patterns_narrowvertical-light.png?v=639232659518125083){ .light .snapshot} ![background-patterns_narrowvertical-dark](/assets/images/screenshots/kt-panel/background-patterns_narrowvertical-dark.png?v=639232659518125083){.dark .snapshot}
== slide
![background-patterns_narrowhorizontal-light](/assets/images/screenshots/kt-panel/background-patterns_narrowhorizontal-light.png?v=639232659524706071){ .light .snapshot} ![background-patterns_narrowhorizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_narrowhorizontal-dark.png?v=639232659524706071){.dark .snapshot}
== slide
![background-patterns_darkvertical-light](/assets/images/screenshots/kt-panel/background-patterns_darkvertical-light.png?v=639232659531277691){ .light .snapshot} ![background-patterns_darkvertical-dark](/assets/images/screenshots/kt-panel/background-patterns_darkvertical-dark.png?v=639232659531277691){.dark .snapshot}
== slide
![background-patterns_darkhorizontal-light](/assets/images/screenshots/kt-panel/background-patterns_darkhorizontal-light.png?v=639232659537836759){ .light .snapshot} ![background-patterns_darkhorizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_darkhorizontal-dark.png?v=639232659537836759){.dark .snapshot}
== slide
![background-patterns_dasheddownwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_dasheddownwarddiagonal-light.png?v=639232659544353649){ .light .snapshot} ![background-patterns_dasheddownwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_dasheddownwarddiagonal-dark.png?v=639232659544353649){.dark .snapshot}
== slide
![background-patterns_dashedupwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_dashedupwarddiagonal-light.png?v=639232659550981929){ .light .snapshot} ![background-patterns_dashedupwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_dashedupwarddiagonal-dark.png?v=639232659550981929){.dark .snapshot}
== slide
![background-patterns_dashedhorizontal-light](/assets/images/screenshots/kt-panel/background-patterns_dashedhorizontal-light.png?v=639232659557634555){ .light .snapshot} ![background-patterns_dashedhorizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_dashedhorizontal-dark.png?v=639232659557634555){.dark .snapshot}
== slide
![background-patterns_dashedvertical-light](/assets/images/screenshots/kt-panel/background-patterns_dashedvertical-light.png?v=639232659564148282){ .light .snapshot} ![background-patterns_dashedvertical-dark](/assets/images/screenshots/kt-panel/background-patterns_dashedvertical-dark.png?v=639232659564148282){.dark .snapshot}
== slide
![background-patterns_smallconfetti-light](/assets/images/screenshots/kt-panel/background-patterns_smallconfetti-light.png?v=639232659570696417){ .light .snapshot} ![background-patterns_smallconfetti-dark](/assets/images/screenshots/kt-panel/background-patterns_smallconfetti-dark.png?v=639232659570705525){.dark .snapshot}
== slide
![background-patterns_largeconfetti-light](/assets/images/screenshots/kt-panel/background-patterns_largeconfetti-light.png?v=639232659577258164){ .light .snapshot} ![background-patterns_largeconfetti-dark](/assets/images/screenshots/kt-panel/background-patterns_largeconfetti-dark.png?v=639232659577258164){.dark .snapshot}
== slide
![background-patterns_zigzag-light](/assets/images/screenshots/kt-panel/background-patterns_zigzag-light.png?v=639232659583825034){ .light .snapshot} ![background-patterns_zigzag-dark](/assets/images/screenshots/kt-panel/background-patterns_zigzag-dark.png?v=639232659583825034){.dark .snapshot}
== slide
![background-patterns_wave-light](/assets/images/screenshots/kt-panel/background-patterns_wave-light.png?v=639232659590604709){ .light .snapshot} ![background-patterns_wave-dark](/assets/images/screenshots/kt-panel/background-patterns_wave-dark.png?v=639232659590604709){.dark .snapshot}
== slide
![background-patterns_diagonalbrick-light](/assets/images/screenshots/kt-panel/background-patterns_diagonalbrick-light.png?v=639232659597142616){ .light .snapshot} ![background-patterns_diagonalbrick-dark](/assets/images/screenshots/kt-panel/background-patterns_diagonalbrick-dark.png?v=639232659597142616){.dark .snapshot}
== slide
![background-patterns_horizontalbrick-light](/assets/images/screenshots/kt-panel/background-patterns_horizontalbrick-light.png?v=639232659603757439){ .light .snapshot} ![background-patterns_horizontalbrick-dark](/assets/images/screenshots/kt-panel/background-patterns_horizontalbrick-dark.png?v=639232659603757439){.dark .snapshot}
== slide
![background-patterns_weave-light](/assets/images/screenshots/kt-panel/background-patterns_weave-light.png?v=639232659610267707){ .light .snapshot} ![background-patterns_weave-dark](/assets/images/screenshots/kt-panel/background-patterns_weave-dark.png?v=639232659610267707){.dark .snapshot}
== slide
![background-patterns_plaid-light](/assets/images/screenshots/kt-panel/background-patterns_plaid-light.png?v=639232659616825210){ .light .snapshot} ![background-patterns_plaid-dark](/assets/images/screenshots/kt-panel/background-patterns_plaid-dark.png?v=639232659616825210){.dark .snapshot}
== slide
![background-patterns_divot-light](/assets/images/screenshots/kt-panel/background-patterns_divot-light.png?v=639232659623442157){ .light .snapshot} ![background-patterns_divot-dark](/assets/images/screenshots/kt-panel/background-patterns_divot-dark.png?v=639232659623442157){.dark .snapshot}
== slide
![background-patterns_dottedgrid-light](/assets/images/screenshots/kt-panel/background-patterns_dottedgrid-light.png?v=639232659630047592){ .light .snapshot} ![background-patterns_dottedgrid-dark](/assets/images/screenshots/kt-panel/background-patterns_dottedgrid-dark.png?v=639232659630047592){.dark .snapshot}
== slide
![background-patterns_dotteddiamond-light](/assets/images/screenshots/kt-panel/background-patterns_dotteddiamond-light.png?v=639232659636547957){ .light .snapshot} ![background-patterns_dotteddiamond-dark](/assets/images/screenshots/kt-panel/background-patterns_dotteddiamond-dark.png?v=639232659636547957){.dark .snapshot}
== slide
![background-patterns_shingle-light](/assets/images/screenshots/kt-panel/background-patterns_shingle-light.png?v=639232659643125916){ .light .snapshot} ![background-patterns_shingle-dark](/assets/images/screenshots/kt-panel/background-patterns_shingle-dark.png?v=639232659643125916){.dark .snapshot}
== slide
![background-patterns_trellis-light](/assets/images/screenshots/kt-panel/background-patterns_trellis-light.png?v=639232659649657433){ .light .snapshot} ![background-patterns_trellis-dark](/assets/images/screenshots/kt-panel/background-patterns_trellis-dark.png?v=639232659649657433){.dark .snapshot}
== slide
![background-patterns_sphere-light](/assets/images/screenshots/kt-panel/background-patterns_sphere-light.png?v=639232659656337501){ .light .snapshot} ![background-patterns_sphere-dark](/assets/images/screenshots/kt-panel/background-patterns_sphere-dark.png?v=639232659656337501){.dark .snapshot}
== slide
![background-patterns_smallgrid-light](/assets/images/screenshots/kt-panel/background-patterns_smallgrid-light.png?v=639232659662824646){ .light .snapshot} ![background-patterns_smallgrid-dark](/assets/images/screenshots/kt-panel/background-patterns_smallgrid-dark.png?v=639232659662824646){.dark .snapshot}
== slide
![background-patterns_smallcheckerboard-light](/assets/images/screenshots/kt-panel/background-patterns_smallcheckerboard-light.png?v=639232659669324290){ .light .snapshot} ![background-patterns_smallcheckerboard-dark](/assets/images/screenshots/kt-panel/background-patterns_smallcheckerboard-dark.png?v=639232659669324290){.dark .snapshot}
== slide
![background-patterns_largecheckerboard-light](/assets/images/screenshots/kt-panel/background-patterns_largecheckerboard-light.png?v=639232659675992807){ .light .snapshot} ![background-patterns_largecheckerboard-dark](/assets/images/screenshots/kt-panel/background-patterns_largecheckerboard-dark.png?v=639232659675992807){.dark .snapshot}
== slide
![background-patterns_outlineddiamond-light](/assets/images/screenshots/kt-panel/background-patterns_outlineddiamond-light.png?v=639232659682657754){ .light .snapshot} ![background-patterns_outlineddiamond-dark](/assets/images/screenshots/kt-panel/background-patterns_outlineddiamond-dark.png?v=639232659682657754){.dark .snapshot}
== slide
![background-patterns_soliddiamond-light](/assets/images/screenshots/kt-panel/background-patterns_soliddiamond-light.png?v=639232659689374030){ .light .snapshot} ![background-patterns_soliddiamond-dark](/assets/images/screenshots/kt-panel/background-patterns_soliddiamond-dark.png?v=639232659689374030){.dark .snapshot}
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "Background" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the panel's background color.* |
| ::: tag "Border" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the panel's border color.* |
| ::: tag "BorderEdges" icon:wrench | ::: tag "Edges" color:#6B7C94 icon:check-check  | *Sets the Border edges.* |
| ::: tag "PatternColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Pattern color.* |
| ::: tag "Foreground" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Foreground.* |
| ::: tag "BorderStyle" icon:wrench | ::: tag "DashStyle" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.drawing2d.dashstyle?view=netframework-4.8  | *Sets the panel's border style.* |
| ::: tag "PatternStyle" icon:wrench | ::: tag "HatchStyle" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.drawing2d.hatchstyle?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Pattern style.* |
| ::: tag "BorderRadius" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the panel's border radius.* |
| ::: tag "BorderWidth" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the panel's border thickness.* |
| ::: tag "BackgroundMargin" icon:wrench | ::: tag "Padding" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.padding?view=netframework-4.8  | *Sets the panel's border Margin.* |
| ::: tag "BorderMargin" icon:wrench | ::: tag "Padding" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.padding?view=netframework-4.8  | *Sets the panel's border Margin.* |
