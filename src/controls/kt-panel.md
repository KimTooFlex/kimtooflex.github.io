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
![kt-panel-light](/assets/images/controls/kt-panel/kt-panel-light.png?v=639231778637933575){ .light .snapshot} ![kt-panel-dark](/assets/images/controls/kt-panel/kt-panel-dark.png?v=639231778637933575){.dark .snapshot}
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
![gradient-background-light](/assets/images/controls/kt-panel/gradient-background-light.png?v=639231778659306558){ .light .snapshot} ![gradient-background-dark](/assets/images/controls/kt-panel/gradient-background-dark.png?v=639231778659306558){.dark .snapshot}

== tab "Light" icon:sun
![gradient-background-light](/assets/images/controls/kt-panel/gradient-background-light.png?v=639231778659306558){  .snapshot}

== tab "Dark" icon:moon
![gradient-background-dark](/assets/images/controls/kt-panel/gradient-background-dark.png?v=639231778659306558){ .snapshot}

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
![system-color-gradient-light](/assets/images/controls/kt-panel/system-color-gradient-light.png?v=639231778669932387){ .light .snapshot} ![system-color-gradient-dark](/assets/images/controls/kt-panel/system-color-gradient-dark.png?v=639231778669932387){.dark .snapshot}

== tab "Light" icon:sun
![system-color-gradient-light](/assets/images/controls/kt-panel/system-color-gradient-light.png?v=639231778669932387){  .snapshot}

== tab "Dark" icon:moon
![system-color-gradient-dark](/assets/images/controls/kt-panel/system-color-gradient-dark.png?v=639231778669932387){ .snapshot}

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
![opacity-gradient-light](/assets/images/controls/kt-panel/opacity-gradient-light.png?v=639231778680439486){ .light .snapshot} ![opacity-gradient-dark](/assets/images/controls/kt-panel/opacity-gradient-dark.png?v=639231778680439486){.dark .snapshot}

== tab "Light" icon:sun
![opacity-gradient-light](/assets/images/controls/kt-panel/opacity-gradient-light.png?v=639231778680439486){  .snapshot}

== tab "Dark" icon:moon
![opacity-gradient-dark](/assets/images/controls/kt-panel/opacity-gradient-dark.png?v=639231778680439486){ .snapshot}

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
![solid-background-light](/assets/images/controls/kt-panel/solid-background-light.png?v=639231778690598938){ .light .snapshot} ![solid-background-dark](/assets/images/controls/kt-panel/solid-background-dark.png?v=639231778690598938){.dark .snapshot}

== tab "Light" icon:sun
![solid-background-light](/assets/images/controls/kt-panel/solid-background-light.png?v=639231778690589401){  .snapshot}

== tab "Dark" icon:moon
![solid-background-dark](/assets/images/controls/kt-panel/solid-background-dark.png?v=639231778690589401){ .snapshot}

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
![background-patterns-light](/assets/images/controls/kt-panel/background-patterns-light.png?v=639231779077135564){ .light .snapshot} ![background-patterns-dark](/assets/images/controls/kt-panel/background-patterns-dark.png?v=639231779077135564){.dark .snapshot}

== tab "Light" icon:sun
![background-patterns-light](/assets/images/controls/kt-panel/background-patterns-light.png?v=639231779077135564){  .snapshot}

== tab "Dark" icon:moon
![background-patterns-dark](/assets/images/controls/kt-panel/background-patterns-dark.png?v=639231779077135564){ .snapshot}

:::
:::

::: hero layout:slider
== slide
![background-patterns_horizontal-light](/assets/images/controls/kt-panel/background-patterns_horizontal-light.png?v=639231778708011426){ .light .snapshot} ![background-patterns_horizontal-dark](/assets/images/controls/kt-panel/background-patterns_horizontal-dark.png?v=639231778708011426){.dark .snapshot}
== slide
![background-patterns_min-light](/assets/images/controls/kt-panel/background-patterns_min-light.png?v=639231778714588803){ .light .snapshot} ![background-patterns_min-dark](/assets/images/controls/kt-panel/background-patterns_min-dark.png?v=639231778714588803){.dark .snapshot}
== slide
![background-patterns_vertical-light](/assets/images/controls/kt-panel/background-patterns_vertical-light.png?v=639231778721117395){ .light .snapshot} ![background-patterns_vertical-dark](/assets/images/controls/kt-panel/background-patterns_vertical-dark.png?v=639231778721117395){.dark .snapshot}
== slide
![background-patterns_forwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_forwarddiagonal-light.png?v=639231778727569187){ .light .snapshot} ![background-patterns_forwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_forwarddiagonal-dark.png?v=639231778727569187){.dark .snapshot}
== slide
![background-patterns_backwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_backwarddiagonal-light.png?v=639231778734094689){ .light .snapshot} ![background-patterns_backwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_backwarddiagonal-dark.png?v=639231778734094689){.dark .snapshot}
== slide
![background-patterns_cross-light](/assets/images/controls/kt-panel/background-patterns_cross-light.png?v=639231778740593131){ .light .snapshot} ![background-patterns_cross-dark](/assets/images/controls/kt-panel/background-patterns_cross-dark.png?v=639231778740593131){.dark .snapshot}
== slide
![background-patterns_largegrid-light](/assets/images/controls/kt-panel/background-patterns_largegrid-light.png?v=639231778747108355){ .light .snapshot} ![background-patterns_largegrid-dark](/assets/images/controls/kt-panel/background-patterns_largegrid-dark.png?v=639231778747108355){.dark .snapshot}
== slide
![background-patterns_max-light](/assets/images/controls/kt-panel/background-patterns_max-light.png?v=639231778753616173){ .light .snapshot} ![background-patterns_max-dark](/assets/images/controls/kt-panel/background-patterns_max-dark.png?v=639231778753616173){.dark .snapshot}
== slide
![background-patterns_diagonalcross-light](/assets/images/controls/kt-panel/background-patterns_diagonalcross-light.png?v=639231778760162041){ .light .snapshot} ![background-patterns_diagonalcross-dark](/assets/images/controls/kt-panel/background-patterns_diagonalcross-dark.png?v=639231778760162041){.dark .snapshot}
== slide
![background-patterns_percent05-light](/assets/images/controls/kt-panel/background-patterns_percent05-light.png?v=639231778766660338){ .light .snapshot} ![background-patterns_percent05-dark](/assets/images/controls/kt-panel/background-patterns_percent05-dark.png?v=639231778766660338){.dark .snapshot}
== slide
![background-patterns_percent10-light](/assets/images/controls/kt-panel/background-patterns_percent10-light.png?v=639231778773194438){ .light .snapshot} ![background-patterns_percent10-dark](/assets/images/controls/kt-panel/background-patterns_percent10-dark.png?v=639231778773194438){.dark .snapshot}
== slide
![background-patterns_percent20-light](/assets/images/controls/kt-panel/background-patterns_percent20-light.png?v=639231778779725590){ .light .snapshot} ![background-patterns_percent20-dark](/assets/images/controls/kt-panel/background-patterns_percent20-dark.png?v=639231778779725590){.dark .snapshot}
== slide
![background-patterns_percent25-light](/assets/images/controls/kt-panel/background-patterns_percent25-light.png?v=639231778786244125){ .light .snapshot} ![background-patterns_percent25-dark](/assets/images/controls/kt-panel/background-patterns_percent25-dark.png?v=639231778786244125){.dark .snapshot}
== slide
![background-patterns_percent30-light](/assets/images/controls/kt-panel/background-patterns_percent30-light.png?v=639231778792834236){ .light .snapshot} ![background-patterns_percent30-dark](/assets/images/controls/kt-panel/background-patterns_percent30-dark.png?v=639231778792834236){.dark .snapshot}
== slide
![background-patterns_percent40-light](/assets/images/controls/kt-panel/background-patterns_percent40-light.png?v=639231778799416584){ .light .snapshot} ![background-patterns_percent40-dark](/assets/images/controls/kt-panel/background-patterns_percent40-dark.png?v=639231778799416584){.dark .snapshot}
== slide
![background-patterns_percent50-light](/assets/images/controls/kt-panel/background-patterns_percent50-light.png?v=639231778805957614){ .light .snapshot} ![background-patterns_percent50-dark](/assets/images/controls/kt-panel/background-patterns_percent50-dark.png?v=639231778805957614){.dark .snapshot}
== slide
![background-patterns_percent60-light](/assets/images/controls/kt-panel/background-patterns_percent60-light.png?v=639231778812545186){ .light .snapshot} ![background-patterns_percent60-dark](/assets/images/controls/kt-panel/background-patterns_percent60-dark.png?v=639231778812545186){.dark .snapshot}
== slide
![background-patterns_percent70-light](/assets/images/controls/kt-panel/background-patterns_percent70-light.png?v=639231778819015330){ .light .snapshot} ![background-patterns_percent70-dark](/assets/images/controls/kt-panel/background-patterns_percent70-dark.png?v=639231778819015330){.dark .snapshot}
== slide
![background-patterns_percent75-light](/assets/images/controls/kt-panel/background-patterns_percent75-light.png?v=639231778825553004){ .light .snapshot} ![background-patterns_percent75-dark](/assets/images/controls/kt-panel/background-patterns_percent75-dark.png?v=639231778825553004){.dark .snapshot}
== slide
![background-patterns_percent80-light](/assets/images/controls/kt-panel/background-patterns_percent80-light.png?v=639231778832061541){ .light .snapshot} ![background-patterns_percent80-dark](/assets/images/controls/kt-panel/background-patterns_percent80-dark.png?v=639231778832061541){.dark .snapshot}
== slide
![background-patterns_percent90-light](/assets/images/controls/kt-panel/background-patterns_percent90-light.png?v=639231778838573916){ .light .snapshot} ![background-patterns_percent90-dark](/assets/images/controls/kt-panel/background-patterns_percent90-dark.png?v=639231778838573916){.dark .snapshot}
== slide
![background-patterns_lightdownwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_lightdownwarddiagonal-light.png?v=639231778845202058){ .light .snapshot} ![background-patterns_lightdownwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_lightdownwarddiagonal-dark.png?v=639231778845202058){.dark .snapshot}
== slide
![background-patterns_lightupwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_lightupwarddiagonal-light.png?v=639231778851685039){ .light .snapshot} ![background-patterns_lightupwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_lightupwarddiagonal-dark.png?v=639231778851685039){.dark .snapshot}
== slide
![background-patterns_darkdownwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_darkdownwarddiagonal-light.png?v=639231778858215861){ .light .snapshot} ![background-patterns_darkdownwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_darkdownwarddiagonal-dark.png?v=639231778858215861){.dark .snapshot}
== slide
![background-patterns_darkupwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_darkupwarddiagonal-light.png?v=639231778864785409){ .light .snapshot} ![background-patterns_darkupwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_darkupwarddiagonal-dark.png?v=639231778864785409){.dark .snapshot}
== slide
![background-patterns_widedownwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_widedownwarddiagonal-light.png?v=639231778871301517){ .light .snapshot} ![background-patterns_widedownwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_widedownwarddiagonal-dark.png?v=639231778871301517){.dark .snapshot}
== slide
![background-patterns_wideupwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_wideupwarddiagonal-light.png?v=639231778877877455){ .light .snapshot} ![background-patterns_wideupwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_wideupwarddiagonal-dark.png?v=639231778877877455){.dark .snapshot}
== slide
![background-patterns_lightvertical-light](/assets/images/controls/kt-panel/background-patterns_lightvertical-light.png?v=639231778884443706){ .light .snapshot} ![background-patterns_lightvertical-dark](/assets/images/controls/kt-panel/background-patterns_lightvertical-dark.png?v=639231778884443706){.dark .snapshot}
== slide
![background-patterns_lighthorizontal-light](/assets/images/controls/kt-panel/background-patterns_lighthorizontal-light.png?v=639231778890958997){ .light .snapshot} ![background-patterns_lighthorizontal-dark](/assets/images/controls/kt-panel/background-patterns_lighthorizontal-dark.png?v=639231778890958997){.dark .snapshot}
== slide
![background-patterns_narrowvertical-light](/assets/images/controls/kt-panel/background-patterns_narrowvertical-light.png?v=639231778897413452){ .light .snapshot} ![background-patterns_narrowvertical-dark](/assets/images/controls/kt-panel/background-patterns_narrowvertical-dark.png?v=639231778897413452){.dark .snapshot}
== slide
![background-patterns_narrowhorizontal-light](/assets/images/controls/kt-panel/background-patterns_narrowhorizontal-light.png?v=639231778904025473){ .light .snapshot} ![background-patterns_narrowhorizontal-dark](/assets/images/controls/kt-panel/background-patterns_narrowhorizontal-dark.png?v=639231778904025473){.dark .snapshot}
== slide
![background-patterns_darkvertical-light](/assets/images/controls/kt-panel/background-patterns_darkvertical-light.png?v=639231778910765409){ .light .snapshot} ![background-patterns_darkvertical-dark](/assets/images/controls/kt-panel/background-patterns_darkvertical-dark.png?v=639231778910765409){.dark .snapshot}
== slide
![background-patterns_darkhorizontal-light](/assets/images/controls/kt-panel/background-patterns_darkhorizontal-light.png?v=639231778917314175){ .light .snapshot} ![background-patterns_darkhorizontal-dark](/assets/images/controls/kt-panel/background-patterns_darkhorizontal-dark.png?v=639231778917314175){.dark .snapshot}
== slide
![background-patterns_dasheddownwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_dasheddownwarddiagonal-light.png?v=639231778923744184){ .light .snapshot} ![background-patterns_dasheddownwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_dasheddownwarddiagonal-dark.png?v=639231778923744184){.dark .snapshot}
== slide
![background-patterns_dashedupwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_dashedupwarddiagonal-light.png?v=639231778930274757){ .light .snapshot} ![background-patterns_dashedupwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_dashedupwarddiagonal-dark.png?v=639231778930274757){.dark .snapshot}
== slide
![background-patterns_dashedhorizontal-light](/assets/images/controls/kt-panel/background-patterns_dashedhorizontal-light.png?v=639231778936948038){ .light .snapshot} ![background-patterns_dashedhorizontal-dark](/assets/images/controls/kt-panel/background-patterns_dashedhorizontal-dark.png?v=639231778936948038){.dark .snapshot}
== slide
![background-patterns_dashedvertical-light](/assets/images/controls/kt-panel/background-patterns_dashedvertical-light.png?v=639231778943473160){ .light .snapshot} ![background-patterns_dashedvertical-dark](/assets/images/controls/kt-panel/background-patterns_dashedvertical-dark.png?v=639231778943473160){.dark .snapshot}
== slide
![background-patterns_smallconfetti-light](/assets/images/controls/kt-panel/background-patterns_smallconfetti-light.png?v=639231778949983504){ .light .snapshot} ![background-patterns_smallconfetti-dark](/assets/images/controls/kt-panel/background-patterns_smallconfetti-dark.png?v=639231778949983504){.dark .snapshot}
== slide
![background-patterns_largeconfetti-light](/assets/images/controls/kt-panel/background-patterns_largeconfetti-light.png?v=639231778956427429){ .light .snapshot} ![background-patterns_largeconfetti-dark](/assets/images/controls/kt-panel/background-patterns_largeconfetti-dark.png?v=639231778956427429){.dark .snapshot}
== slide
![background-patterns_zigzag-light](/assets/images/controls/kt-panel/background-patterns_zigzag-light.png?v=639231778962894605){ .light .snapshot} ![background-patterns_zigzag-dark](/assets/images/controls/kt-panel/background-patterns_zigzag-dark.png?v=639231778962894605){.dark .snapshot}
== slide
![background-patterns_wave-light](/assets/images/controls/kt-panel/background-patterns_wave-light.png?v=639231778969463542){ .light .snapshot} ![background-patterns_wave-dark](/assets/images/controls/kt-panel/background-patterns_wave-dark.png?v=639231778969463542){.dark .snapshot}
== slide
![background-patterns_diagonalbrick-light](/assets/images/controls/kt-panel/background-patterns_diagonalbrick-light.png?v=639231778975989807){ .light .snapshot} ![background-patterns_diagonalbrick-dark](/assets/images/controls/kt-panel/background-patterns_diagonalbrick-dark.png?v=639231778975989807){.dark .snapshot}
== slide
![background-patterns_horizontalbrick-light](/assets/images/controls/kt-panel/background-patterns_horizontalbrick-light.png?v=639231778982507357){ .light .snapshot} ![background-patterns_horizontalbrick-dark](/assets/images/controls/kt-panel/background-patterns_horizontalbrick-dark.png?v=639231778982507357){.dark .snapshot}
== slide
![background-patterns_weave-light](/assets/images/controls/kt-panel/background-patterns_weave-light.png?v=639231778989025681){ .light .snapshot} ![background-patterns_weave-dark](/assets/images/controls/kt-panel/background-patterns_weave-dark.png?v=639231778989025681){.dark .snapshot}
== slide
![background-patterns_plaid-light](/assets/images/controls/kt-panel/background-patterns_plaid-light.png?v=639231778995561509){ .light .snapshot} ![background-patterns_plaid-dark](/assets/images/controls/kt-panel/background-patterns_plaid-dark.png?v=639231778995561509){.dark .snapshot}
== slide
![background-patterns_divot-light](/assets/images/controls/kt-panel/background-patterns_divot-light.png?v=639231779002033170){ .light .snapshot} ![background-patterns_divot-dark](/assets/images/controls/kt-panel/background-patterns_divot-dark.png?v=639231779002033170){.dark .snapshot}
== slide
![background-patterns_dottedgrid-light](/assets/images/controls/kt-panel/background-patterns_dottedgrid-light.png?v=639231779008511963){ .light .snapshot} ![background-patterns_dottedgrid-dark](/assets/images/controls/kt-panel/background-patterns_dottedgrid-dark.png?v=639231779008511963){.dark .snapshot}
== slide
![background-patterns_dotteddiamond-light](/assets/images/controls/kt-panel/background-patterns_dotteddiamond-light.png?v=639231779014916197){ .light .snapshot} ![background-patterns_dotteddiamond-dark](/assets/images/controls/kt-panel/background-patterns_dotteddiamond-dark.png?v=639231779014916197){.dark .snapshot}
== slide
![background-patterns_shingle-light](/assets/images/controls/kt-panel/background-patterns_shingle-light.png?v=639231779021468165){ .light .snapshot} ![background-patterns_shingle-dark](/assets/images/controls/kt-panel/background-patterns_shingle-dark.png?v=639231779021468165){.dark .snapshot}
== slide
![background-patterns_trellis-light](/assets/images/controls/kt-panel/background-patterns_trellis-light.png?v=639231779027987963){ .light .snapshot} ![background-patterns_trellis-dark](/assets/images/controls/kt-panel/background-patterns_trellis-dark.png?v=639231779027987963){.dark .snapshot}
== slide
![background-patterns_sphere-light](/assets/images/controls/kt-panel/background-patterns_sphere-light.png?v=639231779034525089){ .light .snapshot} ![background-patterns_sphere-dark](/assets/images/controls/kt-panel/background-patterns_sphere-dark.png?v=639231779034525089){.dark .snapshot}
== slide
![background-patterns_smallgrid-light](/assets/images/controls/kt-panel/background-patterns_smallgrid-light.png?v=639231779040963837){ .light .snapshot} ![background-patterns_smallgrid-dark](/assets/images/controls/kt-panel/background-patterns_smallgrid-dark.png?v=639231779040963837){.dark .snapshot}
== slide
![background-patterns_smallcheckerboard-light](/assets/images/controls/kt-panel/background-patterns_smallcheckerboard-light.png?v=639231779047498983){ .light .snapshot} ![background-patterns_smallcheckerboard-dark](/assets/images/controls/kt-panel/background-patterns_smallcheckerboard-dark.png?v=639231779047498983){.dark .snapshot}
== slide
![background-patterns_largecheckerboard-light](/assets/images/controls/kt-panel/background-patterns_largecheckerboard-light.png?v=639231779053993847){ .light .snapshot} ![background-patterns_largecheckerboard-dark](/assets/images/controls/kt-panel/background-patterns_largecheckerboard-dark.png?v=639231779053993847){.dark .snapshot}
== slide
![background-patterns_outlineddiamond-light](/assets/images/controls/kt-panel/background-patterns_outlineddiamond-light.png?v=639231779060542756){ .light .snapshot} ![background-patterns_outlineddiamond-dark](/assets/images/controls/kt-panel/background-patterns_outlineddiamond-dark.png?v=639231779060542756){.dark .snapshot}
== slide
![background-patterns_soliddiamond-light](/assets/images/controls/kt-panel/background-patterns_soliddiamond-light.png?v=639231779067093418){ .light .snapshot} ![background-patterns_soliddiamond-dark](/assets/images/controls/kt-panel/background-patterns_soliddiamond-dark.png?v=639231779067093418){.dark .snapshot}
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
