---
type: concept
title: "KimTools / Window"
description: "Modern WinForms controls, Components, and theming for .NET -single assembly, one-time license, zero dependencies."
source: "https://kimtoo.net/controls/kt-window/"
path: /controls/kt-window/
updated: 2026-08-24
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-24T11:48:04.571Z"
---
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
![kt-window-light](/assets/images/controls/kt-window/kt-window-light.png?v=639231796191973076){ .light .snapshot} ![kt-window-dark](/assets/images/controls/kt-window/kt-window-dark.png?v=639231796191973076){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::

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
![kt-window-light](/assets/images/controls/kt-window/kt-window-light.png?v=639231796202046587){ .light .snapshot} ![kt-window-dark](/assets/images/controls/kt-window/kt-window-dark.png?v=639231796202046587){.dark .snapshot}

== tab "Light" icon:sun
![kt-window-light](/assets/images/controls/kt-window/kt-window-light.png?v=639231796202046587){  .snapshot}

== tab "Dark" icon:moon
![kt-window-dark](/assets/images/controls/kt-window/kt-window-dark.png?v=639231796202046587){ .snapshot}

:::
:::
# Background
| ::: tag "Background" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the Background.* |
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
![solid-backgrounds-light](/assets/images/controls/kt-window/solid-backgrounds-light.png?v=639231796211897179){ .light .snapshot} ![solid-backgrounds-dark](/assets/images/controls/kt-window/solid-backgrounds-dark.png?v=639231796211897179){.dark .snapshot}

== tab "Light" icon:sun
![solid-backgrounds-light](/assets/images/controls/kt-window/solid-backgrounds-light.png?v=639231796211897179){  .snapshot}

== tab "Dark" icon:moon
![solid-backgrounds-dark](/assets/images/controls/kt-window/solid-backgrounds-dark.png?v=639231796211897179){ .snapshot}

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
![gradient-backgrounds-light](/assets/images/controls/kt-window/gradient-backgrounds-light.png?v=639231796221914696){ .light .snapshot} ![gradient-backgrounds-dark](/assets/images/controls/kt-window/gradient-backgrounds-dark.png?v=639231796221914696){.dark .snapshot}

== tab "Light" icon:sun
![gradient-backgrounds-light](/assets/images/controls/kt-window/gradient-backgrounds-light.png?v=639231796221904554){  .snapshot}

== tab "Dark" icon:moon
![gradient-backgrounds-dark](/assets/images/controls/kt-window/gradient-backgrounds-dark.png?v=639231796221904554){ .snapshot}

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
![gradient-angles-light](/assets/images/controls/kt-window/gradient-angles-light.png?v=639231796231735258){ .light .snapshot} ![gradient-angles-dark](/assets/images/controls/kt-window/gradient-angles-dark.png?v=639231796231735258){.dark .snapshot}

== tab "Light" icon:sun
![gradient-angles-light](/assets/images/controls/kt-window/gradient-angles-light.png?v=639231796231735258){  .snapshot}

== tab "Dark" icon:moon
![gradient-angles-dark](/assets/images/controls/kt-window/gradient-angles-dark.png?v=639231796231735258){ .snapshot}

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
![semantic-backgrounds-light](/assets/images/controls/kt-window/semantic-backgrounds-light.png?v=639231796241550186){ .light .snapshot} ![semantic-backgrounds-dark](/assets/images/controls/kt-window/semantic-backgrounds-dark.png?v=639231796241550186){.dark .snapshot}

== tab "Light" icon:sun
![semantic-backgrounds-light](/assets/images/controls/kt-window/semantic-backgrounds-light.png?v=639231796241550186){  .snapshot}

== tab "Dark" icon:moon
![semantic-backgrounds-dark](/assets/images/controls/kt-window/semantic-backgrounds-dark.png?v=639231796241550186){ .snapshot}

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
![background-shades-light](/assets/images/controls/kt-window/background-shades-light.png?v=639231796251372500){ .light .snapshot} ![background-shades-dark](/assets/images/controls/kt-window/background-shades-dark.png?v=639231796251372500){.dark .snapshot}

== tab "Light" icon:sun
![background-shades-light](/assets/images/controls/kt-window/background-shades-light.png?v=639231796251372500){  .snapshot}

== tab "Dark" icon:moon
![background-shades-dark](/assets/images/controls/kt-window/background-shades-dark.png?v=639231796251372500){ .snapshot}

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
![custom-background-colors-light](/assets/images/controls/kt-window/custom-background-colors-light.png?v=639231796261048686){ .light .snapshot} ![custom-background-colors-dark](/assets/images/controls/kt-window/custom-background-colors-dark.png?v=639231796261048686){.dark .snapshot}

== tab "Light" icon:sun
![custom-background-colors-light](/assets/images/controls/kt-window/custom-background-colors-light.png?v=639231796261048686){  .snapshot}

== tab "Dark" icon:moon
![custom-background-colors-dark](/assets/images/controls/kt-window/custom-background-colors-dark.png?v=639231796261048686){ .snapshot}

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
![background-patterns_largeconfetti-light](/assets/images/controls/kt-window/background-patterns_largeconfetti-light.png?v=639231796261100390){ .light .snapshot} ![background-patterns_largeconfetti-dark](/assets/images/controls/kt-window/background-patterns_largeconfetti-dark.png?v=639231796261100390){.dark .snapshot}

== tab "Light" icon:sun
![background-patterns_largeconfetti-light](/assets/images/controls/kt-window/background-patterns_largeconfetti-light.png?v=639231796261100390){  .snapshot}

== tab "Dark" icon:moon
![background-patterns_largeconfetti-dark](/assets/images/controls/kt-window/background-patterns_largeconfetti-dark.png?v=639231796261100390){ .snapshot}

:::
:::

::: collapsible "Pattern styles"

::: grids

::: grid
::: card "Horizontal"
![background-patterns_horizontal-light](/assets/images/controls/kt-window/background-patterns_horizontal-light.png?v=639231796270913157){ .light .snapshot} ![background-patterns_horizontal-dark](/assets/images/controls/kt-window/background-patterns_horizontal-dark.png?v=639231796270913157){.dark .snapshot}
:::
::: 


::: grid
::: card "Min"
![background-patterns_min-light](/assets/images/controls/kt-window/background-patterns_min-light.png?v=639231796280708883){ .light .snapshot} ![background-patterns_min-dark](/assets/images/controls/kt-window/background-patterns_min-dark.png?v=639231796280708883){.dark .snapshot}
:::
::: 


::: grid
::: card "Vertical"
![background-patterns_vertical-light](/assets/images/controls/kt-window/background-patterns_vertical-light.png?v=639231796290701225){ .light .snapshot} ![background-patterns_vertical-dark](/assets/images/controls/kt-window/background-patterns_vertical-dark.png?v=639231796290701225){.dark .snapshot}
:::
::: 


::: grid
::: card "ForwardDiagonal"
![background-patterns_forwarddiagonal-light](/assets/images/controls/kt-window/background-patterns_forwarddiagonal-light.png?v=639231796300710038){ .light .snapshot} ![background-patterns_forwarddiagonal-dark](/assets/images/controls/kt-window/background-patterns_forwarddiagonal-dark.png?v=639231796300710038){.dark .snapshot}
:::
::: 


::: grid
::: card "BackwardDiagonal"
![background-patterns_backwarddiagonal-light](/assets/images/controls/kt-window/background-patterns_backwarddiagonal-light.png?v=639231796310540430){ .light .snapshot} ![background-patterns_backwarddiagonal-dark](/assets/images/controls/kt-window/background-patterns_backwarddiagonal-dark.png?v=639231796310540430){.dark .snapshot}
:::
::: 


::: grid
::: card "Cross"
![background-patterns_cross-light](/assets/images/controls/kt-window/background-patterns_cross-light.png?v=639231796320376262){ .light .snapshot} ![background-patterns_cross-dark](/assets/images/controls/kt-window/background-patterns_cross-dark.png?v=639231796320376262){.dark .snapshot}
:::
::: 


::: grid
::: card "LargeGrid"
![background-patterns_largegrid-light](/assets/images/controls/kt-window/background-patterns_largegrid-light.png?v=639231796330367405){ .light .snapshot} ![background-patterns_largegrid-dark](/assets/images/controls/kt-window/background-patterns_largegrid-dark.png?v=639231796330367405){.dark .snapshot}
:::
::: 


::: grid
::: card "Max"
![background-patterns_max-light](/assets/images/controls/kt-window/background-patterns_max-light.png?v=639231796340037575){ .light .snapshot} ![background-patterns_max-dark](/assets/images/controls/kt-window/background-patterns_max-dark.png?v=639231796340037575){.dark .snapshot}
:::
::: 


::: grid
::: card "DiagonalCross"
![background-patterns_diagonalcross-light](/assets/images/controls/kt-window/background-patterns_diagonalcross-light.png?v=639231796350221357){ .light .snapshot} ![background-patterns_diagonalcross-dark](/assets/images/controls/kt-window/background-patterns_diagonalcross-dark.png?v=639231796350221357){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent05"
![background-patterns_percent05-light](/assets/images/controls/kt-window/background-patterns_percent05-light.png?v=639231796360386060){ .light .snapshot} ![background-patterns_percent05-dark](/assets/images/controls/kt-window/background-patterns_percent05-dark.png?v=639231796360386060){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent10"
![background-patterns_percent10-light](/assets/images/controls/kt-window/background-patterns_percent10-light.png?v=639231796370208443){ .light .snapshot} ![background-patterns_percent10-dark](/assets/images/controls/kt-window/background-patterns_percent10-dark.png?v=639231796370208443){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent20"
![background-patterns_percent20-light](/assets/images/controls/kt-window/background-patterns_percent20-light.png?v=639231796380221139){ .light .snapshot} ![background-patterns_percent20-dark](/assets/images/controls/kt-window/background-patterns_percent20-dark.png?v=639231796380221139){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent25"
![background-patterns_percent25-light](/assets/images/controls/kt-window/background-patterns_percent25-light.png?v=639231796390212704){ .light .snapshot} ![background-patterns_percent25-dark](/assets/images/controls/kt-window/background-patterns_percent25-dark.png?v=639231796390212704){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent30"
![background-patterns_percent30-light](/assets/images/controls/kt-window/background-patterns_percent30-light.png?v=639231796400222891){ .light .snapshot} ![background-patterns_percent30-dark](/assets/images/controls/kt-window/background-patterns_percent30-dark.png?v=639231796400222891){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent40"
![background-patterns_percent40-light](/assets/images/controls/kt-window/background-patterns_percent40-light.png?v=639231796410210014){ .light .snapshot} ![background-patterns_percent40-dark](/assets/images/controls/kt-window/background-patterns_percent40-dark.png?v=639231796410210014){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent50"
![background-patterns_percent50-light](/assets/images/controls/kt-window/background-patterns_percent50-light.png?v=639231796420238031){ .light .snapshot} ![background-patterns_percent50-dark](/assets/images/controls/kt-window/background-patterns_percent50-dark.png?v=639231796420238031){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent60"
![background-patterns_percent60-light](/assets/images/controls/kt-window/background-patterns_percent60-light.png?v=639231796430047800){ .light .snapshot} ![background-patterns_percent60-dark](/assets/images/controls/kt-window/background-patterns_percent60-dark.png?v=639231796430047800){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent70"
![background-patterns_percent70-light](/assets/images/controls/kt-window/background-patterns_percent70-light.png?v=639231796440060051){ .light .snapshot} ![background-patterns_percent70-dark](/assets/images/controls/kt-window/background-patterns_percent70-dark.png?v=639231796440060051){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent75"
![background-patterns_percent75-light](/assets/images/controls/kt-window/background-patterns_percent75-light.png?v=639231796449896551){ .light .snapshot} ![background-patterns_percent75-dark](/assets/images/controls/kt-window/background-patterns_percent75-dark.png?v=639231796449896551){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent80"
![background-patterns_percent80-light](/assets/images/controls/kt-window/background-patterns_percent80-light.png?v=639231796460047160){ .light .snapshot} ![background-patterns_percent80-dark](/assets/images/controls/kt-window/background-patterns_percent80-dark.png?v=639231796460047160){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent90"
![background-patterns_percent90-light](/assets/images/controls/kt-window/background-patterns_percent90-light.png?v=639231796470060013){ .light .snapshot} ![background-patterns_percent90-dark](/assets/images/controls/kt-window/background-patterns_percent90-dark.png?v=639231796470060013){.dark .snapshot}
:::
::: 


::: grid
::: card "LightDownwardDiagonal"
![background-patterns_lightdownwarddiagonal-light](/assets/images/controls/kt-window/background-patterns_lightdownwarddiagonal-light.png?v=639231796480040928){ .light .snapshot} ![background-patterns_lightdownwarddiagonal-dark](/assets/images/controls/kt-window/background-patterns_lightdownwarddiagonal-dark.png?v=639231796480040928){.dark .snapshot}
:::
::: 


::: grid
::: card "LightUpwardDiagonal"
![background-patterns_lightupwarddiagonal-light](/assets/images/controls/kt-window/background-patterns_lightupwarddiagonal-light.png?v=639231796489704341){ .light .snapshot} ![background-patterns_lightupwarddiagonal-dark](/assets/images/controls/kt-window/background-patterns_lightupwarddiagonal-dark.png?v=639231796489704341){.dark .snapshot}
:::
::: 


::: grid
::: card "DarkDownwardDiagonal"
![background-patterns_darkdownwarddiagonal-light](/assets/images/controls/kt-window/background-patterns_darkdownwarddiagonal-light.png?v=639231796499402585){ .light .snapshot} ![background-patterns_darkdownwarddiagonal-dark](/assets/images/controls/kt-window/background-patterns_darkdownwarddiagonal-dark.png?v=639231796499402585){.dark .snapshot}
:::
::: 


::: grid
::: card "DarkUpwardDiagonal"
![background-patterns_darkupwarddiagonal-light](/assets/images/controls/kt-window/background-patterns_darkupwarddiagonal-light.png?v=639231796509030988){ .light .snapshot} ![background-patterns_darkupwarddiagonal-dark](/assets/images/controls/kt-window/background-patterns_darkupwarddiagonal-dark.png?v=639231796509030988){.dark .snapshot}
:::
::: 


::: grid
::: card "WideDownwardDiagonal"
![background-patterns_widedownwarddiagonal-light](/assets/images/controls/kt-window/background-patterns_widedownwarddiagonal-light.png?v=639231796518870367){ .light .snapshot} ![background-patterns_widedownwarddiagonal-dark](/assets/images/controls/kt-window/background-patterns_widedownwarddiagonal-dark.png?v=639231796518870367){.dark .snapshot}
:::
::: 


::: grid
::: card "WideUpwardDiagonal"
![background-patterns_wideupwarddiagonal-light](/assets/images/controls/kt-window/background-patterns_wideupwarddiagonal-light.png?v=639231796528889826){ .light .snapshot} ![background-patterns_wideupwarddiagonal-dark](/assets/images/controls/kt-window/background-patterns_wideupwarddiagonal-dark.png?v=639231796528889826){.dark .snapshot}
:::
::: 


::: grid
::: card "LightVertical"
![background-patterns_lightvertical-light](/assets/images/controls/kt-window/background-patterns_lightvertical-light.png?v=639231796538888137){ .light .snapshot} ![background-patterns_lightvertical-dark](/assets/images/controls/kt-window/background-patterns_lightvertical-dark.png?v=639231796538888137){.dark .snapshot}
:::
::: 


::: grid
::: card "LightHorizontal"
![background-patterns_lighthorizontal-light](/assets/images/controls/kt-window/background-patterns_lighthorizontal-light.png?v=639231796548907613){ .light .snapshot} ![background-patterns_lighthorizontal-dark](/assets/images/controls/kt-window/background-patterns_lighthorizontal-dark.png?v=639231796548907613){.dark .snapshot}
:::
::: 


::: grid
::: card "NarrowVertical"
![background-patterns_narrowvertical-light](/assets/images/controls/kt-window/background-patterns_narrowvertical-light.png?v=639231796558721808){ .light .snapshot} ![background-patterns_narrowvertical-dark](/assets/images/controls/kt-window/background-patterns_narrowvertical-dark.png?v=639231796558721808){.dark .snapshot}
:::
::: 


::: grid
::: card "NarrowHorizontal"
![background-patterns_narrowhorizontal-light](/assets/images/controls/kt-window/background-patterns_narrowhorizontal-light.png?v=639231796568569518){ .light .snapshot} ![background-patterns_narrowhorizontal-dark](/assets/images/controls/kt-window/background-patterns_narrowhorizontal-dark.png?v=639231796568569518){.dark .snapshot}
:::
::: 


::: grid
::: card "DarkVertical"
![background-patterns_darkvertical-light](/assets/images/controls/kt-window/background-patterns_darkvertical-light.png?v=639231796578525230){ .light .snapshot} ![background-patterns_darkvertical-dark](/assets/images/controls/kt-window/background-patterns_darkvertical-dark.png?v=639231796578525230){.dark .snapshot}
:::
::: 


::: grid
::: card "DarkHorizontal"
![background-patterns_darkhorizontal-light](/assets/images/controls/kt-window/background-patterns_darkhorizontal-light.png?v=639231796588360190){ .light .snapshot} ![background-patterns_darkhorizontal-dark](/assets/images/controls/kt-window/background-patterns_darkhorizontal-dark.png?v=639231796588360190){.dark .snapshot}
:::
::: 


::: grid
::: card "DashedDownwardDiagonal"
![background-patterns_dasheddownwarddiagonal-light](/assets/images/controls/kt-window/background-patterns_dasheddownwarddiagonal-light.png?v=639231796598021808){ .light .snapshot} ![background-patterns_dasheddownwarddiagonal-dark](/assets/images/controls/kt-window/background-patterns_dasheddownwarddiagonal-dark.png?v=639231796598021808){.dark .snapshot}
:::
::: 


::: grid
::: card "DashedUpwardDiagonal"
![background-patterns_dashedupwarddiagonal-light](/assets/images/controls/kt-window/background-patterns_dashedupwarddiagonal-light.png?v=639231796607864028){ .light .snapshot} ![background-patterns_dashedupwarddiagonal-dark](/assets/images/controls/kt-window/background-patterns_dashedupwarddiagonal-dark.png?v=639231796607864028){.dark .snapshot}
:::
::: 


::: grid
::: card "DashedHorizontal"
![background-patterns_dashedhorizontal-light](/assets/images/controls/kt-window/background-patterns_dashedhorizontal-light.png?v=639231796617698065){ .light .snapshot} ![background-patterns_dashedhorizontal-dark](/assets/images/controls/kt-window/background-patterns_dashedhorizontal-dark.png?v=639231796617698065){.dark .snapshot}
:::
::: 


::: grid
::: card "DashedVertical"
![background-patterns_dashedvertical-light](/assets/images/controls/kt-window/background-patterns_dashedvertical-light.png?v=639231796627579033){ .light .snapshot} ![background-patterns_dashedvertical-dark](/assets/images/controls/kt-window/background-patterns_dashedvertical-dark.png?v=639231796627579033){.dark .snapshot}
:::
::: 


::: grid
::: card "SmallConfetti"
![background-patterns_smallconfetti-light](/assets/images/controls/kt-window/background-patterns_smallconfetti-light.png?v=639231796637539189){ .light .snapshot} ![background-patterns_smallconfetti-dark](/assets/images/controls/kt-window/background-patterns_smallconfetti-dark.png?v=639231796637539189){.dark .snapshot}
:::
::: 


::: grid
::: card "LargeConfetti"
![background-patterns_largeconfetti-light](/assets/images/controls/kt-window/background-patterns_largeconfetti-light.png?v=639231796647531661){ .light .snapshot} ![background-patterns_largeconfetti-dark](/assets/images/controls/kt-window/background-patterns_largeconfetti-dark.png?v=639231796647531661){.dark .snapshot}
:::
::: 


::: grid
::: card "ZigZag"
![background-patterns_zigzag-light](/assets/images/controls/kt-window/background-patterns_zigzag-light.png?v=639231796657711856){ .light .snapshot} ![background-patterns_zigzag-dark](/assets/images/controls/kt-window/background-patterns_zigzag-dark.png?v=639231796657711856){.dark .snapshot}
:::
::: 


::: grid
::: card "Wave"
![background-patterns_wave-light](/assets/images/controls/kt-window/background-patterns_wave-light.png?v=639231796667538483){ .light .snapshot} ![background-patterns_wave-dark](/assets/images/controls/kt-window/background-patterns_wave-dark.png?v=639231796667538483){.dark .snapshot}
:::
::: 


::: grid
::: card "DiagonalBrick"
![background-patterns_diagonalbrick-light](/assets/images/controls/kt-window/background-patterns_diagonalbrick-light.png?v=639231796677364692){ .light .snapshot} ![background-patterns_diagonalbrick-dark](/assets/images/controls/kt-window/background-patterns_diagonalbrick-dark.png?v=639231796677364692){.dark .snapshot}
:::
::: 


::: grid
::: card "HorizontalBrick"
![background-patterns_horizontalbrick-light](/assets/images/controls/kt-window/background-patterns_horizontalbrick-light.png?v=639231796687223001){ .light .snapshot} ![background-patterns_horizontalbrick-dark](/assets/images/controls/kt-window/background-patterns_horizontalbrick-dark.png?v=639231796687223001){.dark .snapshot}
:::
::: 


::: grid
::: card "Weave"
![background-patterns_weave-light](/assets/images/controls/kt-window/background-patterns_weave-light.png?v=639231796697041955){ .light .snapshot} ![background-patterns_weave-dark](/assets/images/controls/kt-window/background-patterns_weave-dark.png?v=639231796697041955){.dark .snapshot}
:::
::: 


::: grid
::: card "Plaid"
![background-patterns_plaid-light](/assets/images/controls/kt-window/background-patterns_plaid-light.png?v=639231796706870946){ .light .snapshot} ![background-patterns_plaid-dark](/assets/images/controls/kt-window/background-patterns_plaid-dark.png?v=639231796706870946){.dark .snapshot}
:::
::: 


::: grid
::: card "Divot"
![background-patterns_divot-light](/assets/images/controls/kt-window/background-patterns_divot-light.png?v=639231796716691605){ .light .snapshot} ![background-patterns_divot-dark](/assets/images/controls/kt-window/background-patterns_divot-dark.png?v=639231796716691605){.dark .snapshot}
:::
::: 


::: grid
::: card "DottedGrid"
![background-patterns_dottedgrid-light](/assets/images/controls/kt-window/background-patterns_dottedgrid-light.png?v=639231796726538590){ .light .snapshot} ![background-patterns_dottedgrid-dark](/assets/images/controls/kt-window/background-patterns_dottedgrid-dark.png?v=639231796726538590){.dark .snapshot}
:::
::: 


::: grid
::: card "DottedDiamond"
![background-patterns_dotteddiamond-light](/assets/images/controls/kt-window/background-patterns_dotteddiamond-light.png?v=639231796736351176){ .light .snapshot} ![background-patterns_dotteddiamond-dark](/assets/images/controls/kt-window/background-patterns_dotteddiamond-dark.png?v=639231796736351176){.dark .snapshot}
:::
::: 


::: grid
::: card "Shingle"
![background-patterns_shingle-light](/assets/images/controls/kt-window/background-patterns_shingle-light.png?v=639231796746355639){ .light .snapshot} ![background-patterns_shingle-dark](/assets/images/controls/kt-window/background-patterns_shingle-dark.png?v=639231796746355639){.dark .snapshot}
:::
::: 


::: grid
::: card "Trellis"
![background-patterns_trellis-light](/assets/images/controls/kt-window/background-patterns_trellis-light.png?v=639231796756194955){ .light .snapshot} ![background-patterns_trellis-dark](/assets/images/controls/kt-window/background-patterns_trellis-dark.png?v=639231796756194955){.dark .snapshot}
:::
::: 


::: grid
::: card "Sphere"
![background-patterns_sphere-light](/assets/images/controls/kt-window/background-patterns_sphere-light.png?v=639231796766038425){ .light .snapshot} ![background-patterns_sphere-dark](/assets/images/controls/kt-window/background-patterns_sphere-dark.png?v=639231796766038425){.dark .snapshot}
:::
::: 


::: grid
::: card "SmallGrid"
![background-patterns_smallgrid-light](/assets/images/controls/kt-window/background-patterns_smallgrid-light.png?v=639231796775850322){ .light .snapshot} ![background-patterns_smallgrid-dark](/assets/images/controls/kt-window/background-patterns_smallgrid-dark.png?v=639231796775850322){.dark .snapshot}
:::
::: 


::: grid
::: card "SmallCheckerBoard"
![background-patterns_smallcheckerboard-light](/assets/images/controls/kt-window/background-patterns_smallcheckerboard-light.png?v=639231796785715301){ .light .snapshot} ![background-patterns_smallcheckerboard-dark](/assets/images/controls/kt-window/background-patterns_smallcheckerboard-dark.png?v=639231796785715301){.dark .snapshot}
:::
::: 


::: grid
::: card "LargeCheckerBoard"
![background-patterns_largecheckerboard-light](/assets/images/controls/kt-window/background-patterns_largecheckerboard-light.png?v=639231796795559711){ .light .snapshot} ![background-patterns_largecheckerboard-dark](/assets/images/controls/kt-window/background-patterns_largecheckerboard-dark.png?v=639231796795559711){.dark .snapshot}
:::
::: 


::: grid
::: card "OutlinedDiamond"
![background-patterns_outlineddiamond-light](/assets/images/controls/kt-window/background-patterns_outlineddiamond-light.png?v=639231796805706119){ .light .snapshot} ![background-patterns_outlineddiamond-dark](/assets/images/controls/kt-window/background-patterns_outlineddiamond-dark.png?v=639231796805706119){.dark .snapshot}
:::
::: 


::: grid
::: card "SolidDiamond"
![background-patterns_soliddiamond-light](/assets/images/controls/kt-window/background-patterns_soliddiamond-light.png?v=639231796815554920){ .light .snapshot} ![background-patterns_soliddiamond-dark](/assets/images/controls/kt-window/background-patterns_soliddiamond-dark.png?v=639231796815554920){.dark .snapshot}
:::
::: 

:::

:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "Background" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the Background.* |
| ::: tag "PatternColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Pattern color.* |
| ::: tag "Foreground" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Foreground.* |
| ::: tag "Drag" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets the Drag.* |
| ::: tag "Composited" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Enables WS_EX_COMPOSITED to reduce flicker at runtime.* |
| ::: tag "Shadow" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Enables Shadows on borderless window.* |
| ::: tag "PatternStyle" icon:wrench | ::: tag "HatchStyle" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.drawing2d.hatchstyle?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Pattern style.* |
| ::: tag "Text" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *The text associated with the control.* |
