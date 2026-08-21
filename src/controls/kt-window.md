---
title: "KimTools / Window"
description: "Modern WinForms controls, Components, and theming for .NET -single assembly, one-time license, zero dependencies."
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `Window`
A modern, theme-aware WinForms window with customizable backgrounds, styling, and layout support.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-window-light](/assets/images/controls/kt-window/kt-window-light.png?v=639229026080855228){ .light .snapshot} ![kt-window-dark](/assets/images/controls/kt-window/kt-window-dark.png?v=639229026080855228){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::

---

::: hero layout:split glow:true
## Theme-aware gradient
Use semantic `KtColor` values to create a background that follows the KimTools theme.

```csharp "🔴 🟡 🟢"
window.Background =
(
    startColor: KtColor.BASE_1,
    stopColor: KtColor.BASE_3,
    angle: 45
);
```
== side
::: tabs
== tab "Auto" icon:app-window
![kt-window-light](/assets/images/controls/kt-window/kt-window-light.png?v=639229026090710867){ .light .snapshot} ![kt-window-dark](/assets/images/controls/kt-window/kt-window-dark.png?v=639229026090710867){.dark .snapshot}

== tab "Light" icon:sun
![kt-window-light](/assets/images/controls/kt-window/kt-window-light.png?v=639229026090710867){  .snapshot}

== tab "Dark" icon:moon
![kt-window-dark](/assets/images/controls/kt-window/kt-window-dark.png?v=639229026090710867){ .snapshot}

:::
:::
# Background
| ::: tag "Background" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:../utilities/kt-brush.md  | *Sets the Background.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Solid background
Set a single `KtColor` to create a solid window background.

```csharp "🔴 🟡 🟢"
window.Background = KtColor.PRIMARY[50];
```
== side
::: tabs
== tab "Auto" icon:app-window
![solid-backgrounds-light](/assets/images/controls/kt-window/solid-backgrounds-light.png?v=639229026100543235){ .light .snapshot} ![solid-backgrounds-dark](/assets/images/controls/kt-window/solid-backgrounds-dark.png?v=639229026100543235){.dark .snapshot}

== tab "Light" icon:sun
![solid-backgrounds-light](/assets/images/controls/kt-window/solid-backgrounds-light.png?v=639229026100543235){  .snapshot}

== tab "Dark" icon:moon
![solid-backgrounds-dark](/assets/images/controls/kt-window/solid-backgrounds-dark.png?v=639229026100543235){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Gradient background
Combine two `KtColor` values to create a gradient background.

```csharp "🔴 🟡 🟢"
window.Background =
(
    KtColor.PRIMARY[50],
    KtColor.SECONDARY[50]
);
```
== side
::: tabs
== tab "Auto" icon:app-window
![gradient-backgrounds-light](/assets/images/controls/kt-window/gradient-backgrounds-light.png?v=639229026110363483){ .light .snapshot} ![gradient-backgrounds-dark](/assets/images/controls/kt-window/gradient-backgrounds-dark.png?v=639229026110363483){.dark .snapshot}

== tab "Light" icon:sun
![gradient-backgrounds-light](/assets/images/controls/kt-window/gradient-backgrounds-light.png?v=639229026110363483){  .snapshot}

== tab "Dark" icon:moon
![gradient-backgrounds-dark](/assets/images/controls/kt-window/gradient-backgrounds-dark.png?v=639229026110363483){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Gradient angle
Set the gradient direction by supplying an angle (0-360 degrees).

```csharp "🔴 🟡 🟢"
window.Background =
(
    KtColor.BASE,
    KtColor.Amber,
    90
);
```
== side
::: tabs
== tab "Auto" icon:app-window
![gradient-angles-light](/assets/images/controls/kt-window/gradient-angles-light.png?v=639229026120363277){ .light .snapshot} ![gradient-angles-dark](/assets/images/controls/kt-window/gradient-angles-dark.png?v=639229026120363277){.dark .snapshot}

== tab "Light" icon:sun
![gradient-angles-light](/assets/images/controls/kt-window/gradient-angles-light.png?v=639229026120363277){  .snapshot}

== tab "Dark" icon:moon
![gradient-angles-dark](/assets/images/controls/kt-window/gradient-angles-dark.png?v=639229026120363277){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Semantic colors
Use KimTools semantic theme variables so the background follows the active theme.

```csharp "🔴 🟡 🟢"
window.Background = KtColor.ACCENT;
```
== side
::: tabs
== tab "Auto" icon:app-window
![semantic-backgrounds-light](/assets/images/controls/kt-window/semantic-backgrounds-light.png?v=639229026130207701){ .light .snapshot} ![semantic-backgrounds-dark](/assets/images/controls/kt-window/semantic-backgrounds-dark.png?v=639229026130207701){.dark .snapshot}

== tab "Light" icon:sun
![semantic-backgrounds-light](/assets/images/controls/kt-window/semantic-backgrounds-light.png?v=639229026130198594){  .snapshot}

== tab "Dark" icon:moon
![semantic-backgrounds-dark](/assets/images/controls/kt-window/semantic-backgrounds-dark.png?v=639229026130198594){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Color shades
Use the color indexer to select a specific lightness level.

```csharp "🔴 🟡 🟢"
window.Background = KtColor.SECONDARY[20];
```
== side
::: tabs
== tab "Auto" icon:app-window
![background-shades-light](/assets/images/controls/kt-window/background-shades-light.png?v=639229026139848584){ .light .snapshot} ![background-shades-dark](/assets/images/controls/kt-window/background-shades-dark.png?v=639229026139848584){.dark .snapshot}

== tab "Light" icon:sun
![background-shades-light](/assets/images/controls/kt-window/background-shades-light.png?v=639229026139848584){  .snapshot}

== tab "Dark" icon:moon
![background-shades-dark](/assets/images/controls/kt-window/background-shades-dark.png?v=639229026139848584){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Custom color
Assign a hexadecimal color directly when a semantic theme color is not required.

```csharp "🔴 🟡 🟢"
window.Background = Color.Teal;
//or  window.Background = (KtColor)"#3B82F6";
```
== side
::: tabs
== tab "Auto" icon:app-window
![custom-background-colors-light](/assets/images/controls/kt-window/custom-background-colors-light.png?v=639229026149710413){ .light .snapshot} ![custom-background-colors-dark](/assets/images/controls/kt-window/custom-background-colors-dark.png?v=639229026149710413){.dark .snapshot}

== tab "Light" icon:sun
![custom-background-colors-light](/assets/images/controls/kt-window/custom-background-colors-light.png?v=639229026149710413){  .snapshot}

== tab "Dark" icon:moon
![custom-background-colors-dark](/assets/images/controls/kt-window/custom-background-colors-dark.png?v=639229026149710413){ .snapshot}

:::
:::
# Pattern styles
| ::: tag "PatternStyle" icon:wrench | ::: tag "HatchStyle" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.drawing2d.hatchstyle?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Pattern style.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Pattern `Style` | `Color` 
Supports patterns types which blend with the Background
set `PatternStyle` to `null` to disable patterns.
```csharp "🔴 🟡 🟢"
// Use % operator to apply transparency to Kt-Color
window.Background = KtColor.BASE_1; // Solid Color or Gradient
window.PatternColor = KtColor.BASE_3;  // Solid Color or 
window.PatternStyle = HatchStyle.LargeConfetti;
```
== side
::: tabs
== tab "Auto" icon:app-window
![background-patterns_largeconfetti-light](/assets/images/controls/kt-window/background-patterns_largeconfetti-light.png?v=639229026149748819){ .light .snapshot} ![background-patterns_largeconfetti-dark](/assets/images/controls/kt-window/background-patterns_largeconfetti-dark.png?v=639229026149748819){.dark .snapshot}

== tab "Light" icon:sun
![background-patterns_largeconfetti-light](/assets/images/controls/kt-window/background-patterns_largeconfetti-light.png?v=639229026149748819){  .snapshot}

== tab "Dark" icon:moon
![background-patterns_largeconfetti-dark](/assets/images/controls/kt-window/background-patterns_largeconfetti-dark.png?v=639229026149748819){ .snapshot}

:::
:::

::: collapsible "Pattern styles"

::: grids

::: grid
::: card "Horizontal"
![background-patterns_horizontal-light](/assets/images/controls/kt-window/background-patterns_horizontal-light.png?v=639229026159718211){ .light .snapshot} ![background-patterns_horizontal-dark](/assets/images/controls/kt-window/background-patterns_horizontal-dark.png?v=639229026159718211){.dark .snapshot}
:::
::: 


::: grid
::: card "Min"
![background-patterns_min-light](/assets/images/controls/kt-window/background-patterns_min-light.png?v=639229026169533533){ .light .snapshot} ![background-patterns_min-dark](/assets/images/controls/kt-window/background-patterns_min-dark.png?v=639229026169533533){.dark .snapshot}
:::
::: 


::: grid
::: card "Vertical"
![background-patterns_vertical-light](/assets/images/controls/kt-window/background-patterns_vertical-light.png?v=639229026179355424){ .light .snapshot} ![background-patterns_vertical-dark](/assets/images/controls/kt-window/background-patterns_vertical-dark.png?v=639229026179355424){.dark .snapshot}
:::
::: 


::: grid
::: card "ForwardDiagonal"
![background-patterns_forwarddiagonal-light](/assets/images/controls/kt-window/background-patterns_forwarddiagonal-light.png?v=639229026189031848){ .light .snapshot} ![background-patterns_forwarddiagonal-dark](/assets/images/controls/kt-window/background-patterns_forwarddiagonal-dark.png?v=639229026189031848){.dark .snapshot}
:::
::: 


::: grid
::: card "BackwardDiagonal"
![background-patterns_backwarddiagonal-light](/assets/images/controls/kt-window/background-patterns_backwarddiagonal-light.png?v=639229026199061832){ .light .snapshot} ![background-patterns_backwarddiagonal-dark](/assets/images/controls/kt-window/background-patterns_backwarddiagonal-dark.png?v=639229026199061832){.dark .snapshot}
:::
::: 


::: grid
::: card "Cross"
![background-patterns_cross-light](/assets/images/controls/kt-window/background-patterns_cross-light.png?v=639229026209208464){ .light .snapshot} ![background-patterns_cross-dark](/assets/images/controls/kt-window/background-patterns_cross-dark.png?v=639229026209208464){.dark .snapshot}
:::
::: 


::: grid
::: card "LargeGrid"
![background-patterns_largegrid-light](/assets/images/controls/kt-window/background-patterns_largegrid-light.png?v=639229026219212179){ .light .snapshot} ![background-patterns_largegrid-dark](/assets/images/controls/kt-window/background-patterns_largegrid-dark.png?v=639229026219212179){.dark .snapshot}
:::
::: 


::: grid
::: card "Max"
![background-patterns_max-light](/assets/images/controls/kt-window/background-patterns_max-light.png?v=639229026229025537){ .light .snapshot} ![background-patterns_max-dark](/assets/images/controls/kt-window/background-patterns_max-dark.png?v=639229026229025537){.dark .snapshot}
:::
::: 


::: grid
::: card "DiagonalCross"
![background-patterns_diagonalcross-light](/assets/images/controls/kt-window/background-patterns_diagonalcross-light.png?v=639229026239052487){ .light .snapshot} ![background-patterns_diagonalcross-dark](/assets/images/controls/kt-window/background-patterns_diagonalcross-dark.png?v=639229026239052487){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent05"
![background-patterns_percent05-light](/assets/images/controls/kt-window/background-patterns_percent05-light.png?v=639229026248857806){ .light .snapshot} ![background-patterns_percent05-dark](/assets/images/controls/kt-window/background-patterns_percent05-dark.png?v=639229026248857806){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent10"
![background-patterns_percent10-light](/assets/images/controls/kt-window/background-patterns_percent10-light.png?v=639229026258857304){ .light .snapshot} ![background-patterns_percent10-dark](/assets/images/controls/kt-window/background-patterns_percent10-dark.png?v=639229026258857304){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent20"
![background-patterns_percent20-light](/assets/images/controls/kt-window/background-patterns_percent20-light.png?v=639229026268545292){ .light .snapshot} ![background-patterns_percent20-dark](/assets/images/controls/kt-window/background-patterns_percent20-dark.png?v=639229026268545292){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent25"
![background-patterns_percent25-light](/assets/images/controls/kt-window/background-patterns_percent25-light.png?v=639229026278194332){ .light .snapshot} ![background-patterns_percent25-dark](/assets/images/controls/kt-window/background-patterns_percent25-dark.png?v=639229026278194332){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent30"
![background-patterns_percent30-light](/assets/images/controls/kt-window/background-patterns_percent30-light.png?v=639229026288189310){ .light .snapshot} ![background-patterns_percent30-dark](/assets/images/controls/kt-window/background-patterns_percent30-dark.png?v=639229026288189310){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent40"
![background-patterns_percent40-light](/assets/images/controls/kt-window/background-patterns_percent40-light.png?v=639229026298210070){ .light .snapshot} ![background-patterns_percent40-dark](/assets/images/controls/kt-window/background-patterns_percent40-dark.png?v=639229026298210070){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent50"
![background-patterns_percent50-light](/assets/images/controls/kt-window/background-patterns_percent50-light.png?v=639229026308227479){ .light .snapshot} ![background-patterns_percent50-dark](/assets/images/controls/kt-window/background-patterns_percent50-dark.png?v=639229026308227479){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent60"
![background-patterns_percent60-light](/assets/images/controls/kt-window/background-patterns_percent60-light.png?v=639229026318356684){ .light .snapshot} ![background-patterns_percent60-dark](/assets/images/controls/kt-window/background-patterns_percent60-dark.png?v=639229026318356684){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent70"
![background-patterns_percent70-light](/assets/images/controls/kt-window/background-patterns_percent70-light.png?v=639229026328033750){ .light .snapshot} ![background-patterns_percent70-dark](/assets/images/controls/kt-window/background-patterns_percent70-dark.png?v=639229026328033750){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent75"
![background-patterns_percent75-light](/assets/images/controls/kt-window/background-patterns_percent75-light.png?v=639229026337861021){ .light .snapshot} ![background-patterns_percent75-dark](/assets/images/controls/kt-window/background-patterns_percent75-dark.png?v=639229026337861021){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent80"
![background-patterns_percent80-light](/assets/images/controls/kt-window/background-patterns_percent80-light.png?v=639229026347542067){ .light .snapshot} ![background-patterns_percent80-dark](/assets/images/controls/kt-window/background-patterns_percent80-dark.png?v=639229026347542067){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent90"
![background-patterns_percent90-light](/assets/images/controls/kt-window/background-patterns_percent90-light.png?v=639229026357378439){ .light .snapshot} ![background-patterns_percent90-dark](/assets/images/controls/kt-window/background-patterns_percent90-dark.png?v=639229026357378439){.dark .snapshot}
:::
::: 


::: grid
::: card "LightDownwardDiagonal"
![background-patterns_lightdownwarddiagonal-light](/assets/images/controls/kt-window/background-patterns_lightdownwarddiagonal-light.png?v=639229026367206466){ .light .snapshot} ![background-patterns_lightdownwarddiagonal-dark](/assets/images/controls/kt-window/background-patterns_lightdownwarddiagonal-dark.png?v=639229026367206466){.dark .snapshot}
:::
::: 


::: grid
::: card "LightUpwardDiagonal"
![background-patterns_lightupwarddiagonal-light](/assets/images/controls/kt-window/background-patterns_lightupwarddiagonal-light.png?v=639229026377019065){ .light .snapshot} ![background-patterns_lightupwarddiagonal-dark](/assets/images/controls/kt-window/background-patterns_lightupwarddiagonal-dark.png?v=639229026377019065){.dark .snapshot}
:::
::: 


::: grid
::: card "DarkDownwardDiagonal"
![background-patterns_darkdownwarddiagonal-light](/assets/images/controls/kt-window/background-patterns_darkdownwarddiagonal-light.png?v=639229026386892022){ .light .snapshot} ![background-patterns_darkdownwarddiagonal-dark](/assets/images/controls/kt-window/background-patterns_darkdownwarddiagonal-dark.png?v=639229026386892022){.dark .snapshot}
:::
::: 


::: grid
::: card "DarkUpwardDiagonal"
![background-patterns_darkupwarddiagonal-light](/assets/images/controls/kt-window/background-patterns_darkupwarddiagonal-light.png?v=639229026396894366){ .light .snapshot} ![background-patterns_darkupwarddiagonal-dark](/assets/images/controls/kt-window/background-patterns_darkupwarddiagonal-dark.png?v=639229026396894366){.dark .snapshot}
:::
::: 


::: grid
::: card "WideDownwardDiagonal"
![background-patterns_widedownwarddiagonal-light](/assets/images/controls/kt-window/background-patterns_widedownwarddiagonal-light.png?v=639229026406854942){ .light .snapshot} ![background-patterns_widedownwarddiagonal-dark](/assets/images/controls/kt-window/background-patterns_widedownwarddiagonal-dark.png?v=639229026406854942){.dark .snapshot}
:::
::: 


::: grid
::: card "WideUpwardDiagonal"
![background-patterns_wideupwarddiagonal-light](/assets/images/controls/kt-window/background-patterns_wideupwarddiagonal-light.png?v=639229026416875023){ .light .snapshot} ![background-patterns_wideupwarddiagonal-dark](/assets/images/controls/kt-window/background-patterns_wideupwarddiagonal-dark.png?v=639229026416875023){.dark .snapshot}
:::
::: 


::: grid
::: card "LightVertical"
![background-patterns_lightvertical-light](/assets/images/controls/kt-window/background-patterns_lightvertical-light.png?v=639229026426868481){ .light .snapshot} ![background-patterns_lightvertical-dark](/assets/images/controls/kt-window/background-patterns_lightvertical-dark.png?v=639229026426868481){.dark .snapshot}
:::
::: 


::: grid
::: card "LightHorizontal"
![background-patterns_lighthorizontal-light](/assets/images/controls/kt-window/background-patterns_lighthorizontal-light.png?v=639229026436861682){ .light .snapshot} ![background-patterns_lighthorizontal-dark](/assets/images/controls/kt-window/background-patterns_lighthorizontal-dark.png?v=639229026436861682){.dark .snapshot}
:::
::: 


::: grid
::: card "NarrowVertical"
![background-patterns_narrowvertical-light](/assets/images/controls/kt-window/background-patterns_narrowvertical-light.png?v=639229026446708327){ .light .snapshot} ![background-patterns_narrowvertical-dark](/assets/images/controls/kt-window/background-patterns_narrowvertical-dark.png?v=639229026446708327){.dark .snapshot}
:::
::: 


::: grid
::: card "NarrowHorizontal"
![background-patterns_narrowhorizontal-light](/assets/images/controls/kt-window/background-patterns_narrowhorizontal-light.png?v=639229026456720043){ .light .snapshot} ![background-patterns_narrowhorizontal-dark](/assets/images/controls/kt-window/background-patterns_narrowhorizontal-dark.png?v=639229026456720043){.dark .snapshot}
:::
::: 


::: grid
::: card "DarkVertical"
![background-patterns_darkvertical-light](/assets/images/controls/kt-window/background-patterns_darkvertical-light.png?v=639229026466529065){ .light .snapshot} ![background-patterns_darkvertical-dark](/assets/images/controls/kt-window/background-patterns_darkvertical-dark.png?v=639229026466529065){.dark .snapshot}
:::
::: 


::: grid
::: card "DarkHorizontal"
![background-patterns_darkhorizontal-light](/assets/images/controls/kt-window/background-patterns_darkhorizontal-light.png?v=639229026476517569){ .light .snapshot} ![background-patterns_darkhorizontal-dark](/assets/images/controls/kt-window/background-patterns_darkhorizontal-dark.png?v=639229026476517569){.dark .snapshot}
:::
::: 


::: grid
::: card "DashedDownwardDiagonal"
![background-patterns_dasheddownwarddiagonal-light](/assets/images/controls/kt-window/background-patterns_dasheddownwarddiagonal-light.png?v=639229026486333191){ .light .snapshot} ![background-patterns_dasheddownwarddiagonal-dark](/assets/images/controls/kt-window/background-patterns_dasheddownwarddiagonal-dark.png?v=639229026486333191){.dark .snapshot}
:::
::: 


::: grid
::: card "DashedUpwardDiagonal"
![background-patterns_dashedupwarddiagonal-light](/assets/images/controls/kt-window/background-patterns_dashedupwarddiagonal-light.png?v=639229026496189693){ .light .snapshot} ![background-patterns_dashedupwarddiagonal-dark](/assets/images/controls/kt-window/background-patterns_dashedupwarddiagonal-dark.png?v=639229026496189693){.dark .snapshot}
:::
::: 


::: grid
::: card "DashedHorizontal"
![background-patterns_dashedhorizontal-light](/assets/images/controls/kt-window/background-patterns_dashedhorizontal-light.png?v=639229026506173905){ .light .snapshot} ![background-patterns_dashedhorizontal-dark](/assets/images/controls/kt-window/background-patterns_dashedhorizontal-dark.png?v=639229026506173905){.dark .snapshot}
:::
::: 


::: grid
::: card "DashedVertical"
![background-patterns_dashedvertical-light](/assets/images/controls/kt-window/background-patterns_dashedvertical-light.png?v=639229026516189161){ .light .snapshot} ![background-patterns_dashedvertical-dark](/assets/images/controls/kt-window/background-patterns_dashedvertical-dark.png?v=639229026516189161){.dark .snapshot}
:::
::: 


::: grid
::: card "SmallConfetti"
![background-patterns_smallconfetti-light](/assets/images/controls/kt-window/background-patterns_smallconfetti-light.png?v=639229026526019270){ .light .snapshot} ![background-patterns_smallconfetti-dark](/assets/images/controls/kt-window/background-patterns_smallconfetti-dark.png?v=639229026526019270){.dark .snapshot}
:::
::: 


::: grid
::: card "LargeConfetti"
![background-patterns_largeconfetti-light](/assets/images/controls/kt-window/background-patterns_largeconfetti-light.png?v=639229026536042358){ .light .snapshot} ![background-patterns_largeconfetti-dark](/assets/images/controls/kt-window/background-patterns_largeconfetti-dark.png?v=639229026536042358){.dark .snapshot}
:::
::: 


::: grid
::: card "ZigZag"
![background-patterns_zigzag-light](/assets/images/controls/kt-window/background-patterns_zigzag-light.png?v=639229026545675684){ .light .snapshot} ![background-patterns_zigzag-dark](/assets/images/controls/kt-window/background-patterns_zigzag-dark.png?v=639229026545675684){.dark .snapshot}
:::
::: 


::: grid
::: card "Wave"
![background-patterns_wave-light](/assets/images/controls/kt-window/background-patterns_wave-light.png?v=639229026555511398){ .light .snapshot} ![background-patterns_wave-dark](/assets/images/controls/kt-window/background-patterns_wave-dark.png?v=639229026555511398){.dark .snapshot}
:::
::: 


::: grid
::: card "DiagonalBrick"
![background-patterns_diagonalbrick-light](/assets/images/controls/kt-window/background-patterns_diagonalbrick-light.png?v=639229026565379774){ .light .snapshot} ![background-patterns_diagonalbrick-dark](/assets/images/controls/kt-window/background-patterns_diagonalbrick-dark.png?v=639229026565379774){.dark .snapshot}
:::
::: 


::: grid
::: card "HorizontalBrick"
![background-patterns_horizontalbrick-light](/assets/images/controls/kt-window/background-patterns_horizontalbrick-light.png?v=639229026575018879){ .light .snapshot} ![background-patterns_horizontalbrick-dark](/assets/images/controls/kt-window/background-patterns_horizontalbrick-dark.png?v=639229026575018879){.dark .snapshot}
:::
::: 


::: grid
::: card "Weave"
![background-patterns_weave-light](/assets/images/controls/kt-window/background-patterns_weave-light.png?v=639229026585032757){ .light .snapshot} ![background-patterns_weave-dark](/assets/images/controls/kt-window/background-patterns_weave-dark.png?v=639229026585032757){.dark .snapshot}
:::
::: 


::: grid
::: card "Plaid"
![background-patterns_plaid-light](/assets/images/controls/kt-window/background-patterns_plaid-light.png?v=639229026594861846){ .light .snapshot} ![background-patterns_plaid-dark](/assets/images/controls/kt-window/background-patterns_plaid-dark.png?v=639229026594861846){.dark .snapshot}
:::
::: 


::: grid
::: card "Divot"
![background-patterns_divot-light](/assets/images/controls/kt-window/background-patterns_divot-light.png?v=639229026604707680){ .light .snapshot} ![background-patterns_divot-dark](/assets/images/controls/kt-window/background-patterns_divot-dark.png?v=639229026604707680){.dark .snapshot}
:::
::: 


::: grid
::: card "DottedGrid"
![background-patterns_dottedgrid-light](/assets/images/controls/kt-window/background-patterns_dottedgrid-light.png?v=639229026614362594){ .light .snapshot} ![background-patterns_dottedgrid-dark](/assets/images/controls/kt-window/background-patterns_dottedgrid-dark.png?v=639229026614362594){.dark .snapshot}
:::
::: 


::: grid
::: card "DottedDiamond"
![background-patterns_dotteddiamond-light](/assets/images/controls/kt-window/background-patterns_dotteddiamond-light.png?v=639229026624033457){ .light .snapshot} ![background-patterns_dotteddiamond-dark](/assets/images/controls/kt-window/background-patterns_dotteddiamond-dark.png?v=639229026624033457){.dark .snapshot}
:::
::: 


::: grid
::: card "Shingle"
![background-patterns_shingle-light](/assets/images/controls/kt-window/background-patterns_shingle-light.png?v=639229026634165670){ .light .snapshot} ![background-patterns_shingle-dark](/assets/images/controls/kt-window/background-patterns_shingle-dark.png?v=639229026634165670){.dark .snapshot}
:::
::: 


::: grid
::: card "Trellis"
![background-patterns_trellis-light](/assets/images/controls/kt-window/background-patterns_trellis-light.png?v=639229026644031663){ .light .snapshot} ![background-patterns_trellis-dark](/assets/images/controls/kt-window/background-patterns_trellis-dark.png?v=639229026644031663){.dark .snapshot}
:::
::: 


::: grid
::: card "Sphere"
![background-patterns_sphere-light](/assets/images/controls/kt-window/background-patterns_sphere-light.png?v=639229026653834300){ .light .snapshot} ![background-patterns_sphere-dark](/assets/images/controls/kt-window/background-patterns_sphere-dark.png?v=639229026653834300){.dark .snapshot}
:::
::: 


::: grid
::: card "SmallGrid"
![background-patterns_smallgrid-light](/assets/images/controls/kt-window/background-patterns_smallgrid-light.png?v=639229026663681112){ .light .snapshot} ![background-patterns_smallgrid-dark](/assets/images/controls/kt-window/background-patterns_smallgrid-dark.png?v=639229026663681112){.dark .snapshot}
:::
::: 


::: grid
::: card "SmallCheckerBoard"
![background-patterns_smallcheckerboard-light](/assets/images/controls/kt-window/background-patterns_smallcheckerboard-light.png?v=639229026673677763){ .light .snapshot} ![background-patterns_smallcheckerboard-dark](/assets/images/controls/kt-window/background-patterns_smallcheckerboard-dark.png?v=639229026673677763){.dark .snapshot}
:::
::: 


::: grid
::: card "LargeCheckerBoard"
![background-patterns_largecheckerboard-light](/assets/images/controls/kt-window/background-patterns_largecheckerboard-light.png?v=639229026683678578){ .light .snapshot} ![background-patterns_largecheckerboard-dark](/assets/images/controls/kt-window/background-patterns_largecheckerboard-dark.png?v=639229026683678578){.dark .snapshot}
:::
::: 


::: grid
::: card "OutlinedDiamond"
![background-patterns_outlineddiamond-light](/assets/images/controls/kt-window/background-patterns_outlineddiamond-light.png?v=639229026693529592){ .light .snapshot} ![background-patterns_outlineddiamond-dark](/assets/images/controls/kt-window/background-patterns_outlineddiamond-dark.png?v=639229026693529592){.dark .snapshot}
:::
::: 


::: grid
::: card "SolidDiamond"
![background-patterns_soliddiamond-light](/assets/images/controls/kt-window/background-patterns_soliddiamond-light.png?v=639229026703509600){ .light .snapshot} ![background-patterns_soliddiamond-dark](/assets/images/controls/kt-window/background-patterns_soliddiamond-dark.png?v=639229026703509600){.dark .snapshot}
:::
::: 

:::

:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "Background" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:../utilities/kt-brush.md  | *Sets the Background.* |
| ::: tag "PatternColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:../utilities/kt-color.md  | *Sets the Pattern color.* |
| ::: tag "Foreground" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:../utilities/kt-color.md  | *Sets the Foreground.* |
| ::: tag "Drag" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets the Drag.* |
| ::: tag "Composited" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Enables WS_EX_COMPOSITED to reduce flicker at runtime.* |
| ::: tag "Shadow" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Enables Shadows on borderless window.* |
| ::: tag "PatternStyle" icon:wrench | ::: tag "HatchStyle" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.drawing2d.hatchstyle?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Pattern style.* |
| ::: tag "Text" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *The text associated with the control.* |
