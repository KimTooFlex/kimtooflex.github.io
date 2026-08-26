---
title: "KimTools / Controls / Panel"
description: "A modern, fully customizable panel control for WinForms. It is a container for grouping and styling related content."
keywords: ["KimTools", "Controls", "KtPanel", "Panel"]
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
![kt-panel-light](/assets/images/screenshots/kt-panel/kt-panel-light.png?v=639233544642701305){ .light .snapshot} ![kt-panel-dark](/assets/images/screenshots/kt-panel/kt-panel-dark.png?v=639233544642701305){.dark .snapshot}
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
![gradient-background-light](/assets/images/screenshots/kt-panel/gradient-background-light.png?v=639233544664112150){ .light .snapshot} ![gradient-background-dark](/assets/images/screenshots/kt-panel/gradient-background-dark.png?v=639233544664112150){.dark .snapshot}

== tab "Light" icon:sun
![gradient-background-light](/assets/images/screenshots/kt-panel/gradient-background-light.png?v=639233544664112150){  .snapshot}

== tab "Dark" icon:moon
![gradient-background-dark](/assets/images/screenshots/kt-panel/gradient-background-dark.png?v=639233544664112150){ .snapshot}

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
![system-color-gradient-light](/assets/images/screenshots/kt-panel/system-color-gradient-light.png?v=639233544674628235){ .light .snapshot} ![system-color-gradient-dark](/assets/images/screenshots/kt-panel/system-color-gradient-dark.png?v=639233544674628235){.dark .snapshot}

== tab "Light" icon:sun
![system-color-gradient-light](/assets/images/screenshots/kt-panel/system-color-gradient-light.png?v=639233544674618137){  .snapshot}

== tab "Dark" icon:moon
![system-color-gradient-dark](/assets/images/screenshots/kt-panel/system-color-gradient-dark.png?v=639233544674618137){ .snapshot}

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
![opacity-gradient-light](/assets/images/screenshots/kt-panel/opacity-gradient-light.png?v=639233544685276868){ .light .snapshot} ![opacity-gradient-dark](/assets/images/screenshots/kt-panel/opacity-gradient-dark.png?v=639233544685276868){.dark .snapshot}

== tab "Light" icon:sun
![opacity-gradient-light](/assets/images/screenshots/kt-panel/opacity-gradient-light.png?v=639233544685276868){  .snapshot}

== tab "Dark" icon:moon
![opacity-gradient-dark](/assets/images/screenshots/kt-panel/opacity-gradient-dark.png?v=639233544685276868){ .snapshot}

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
![solid-background-light](/assets/images/screenshots/kt-panel/solid-background-light.png?v=639233544695777370){ .light .snapshot} ![solid-background-dark](/assets/images/screenshots/kt-panel/solid-background-dark.png?v=639233544695777370){.dark .snapshot}

== tab "Light" icon:sun
![solid-background-light](/assets/images/screenshots/kt-panel/solid-background-light.png?v=639233544695777370){  .snapshot}

== tab "Dark" icon:moon
![solid-background-dark](/assets/images/screenshots/kt-panel/solid-background-dark.png?v=639233544695777370){ .snapshot}

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
![background-patterns-light](/assets/images/screenshots/kt-panel/background-patterns-light.png?v=639233545098940569){ .light .snapshot} ![background-patterns-dark](/assets/images/screenshots/kt-panel/background-patterns-dark.png?v=639233545098940569){.dark .snapshot}

== tab "Light" icon:sun
![background-patterns-light](/assets/images/screenshots/kt-panel/background-patterns-light.png?v=639233545098940569){  .snapshot}

== tab "Dark" icon:moon
![background-patterns-dark](/assets/images/screenshots/kt-panel/background-patterns-dark.png?v=639233545098940569){ .snapshot}

:::
:::

::: hero layout:slider
== slide
![background-patterns_horizontal-light](/assets/images/screenshots/kt-panel/background-patterns_horizontal-light.png?v=639233544713749651){ .light .snapshot} ![background-patterns_horizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_horizontal-dark.png?v=639233544713749651){.dark .snapshot}
== slide
![background-patterns_min-light](/assets/images/screenshots/kt-panel/background-patterns_min-light.png?v=639233544721598498){ .light .snapshot} ![background-patterns_min-dark](/assets/images/screenshots/kt-panel/background-patterns_min-dark.png?v=639233544721598498){.dark .snapshot}
== slide
![background-patterns_vertical-light](/assets/images/screenshots/kt-panel/background-patterns_vertical-light.png?v=639233544728415295){ .light .snapshot} ![background-patterns_vertical-dark](/assets/images/screenshots/kt-panel/background-patterns_vertical-dark.png?v=639233544728415295){.dark .snapshot}
== slide
![background-patterns_forwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_forwarddiagonal-light.png?v=639233544735132952){ .light .snapshot} ![background-patterns_forwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_forwarddiagonal-dark.png?v=639233544735132952){.dark .snapshot}
== slide
![background-patterns_backwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_backwarddiagonal-light.png?v=639233544741807872){ .light .snapshot} ![background-patterns_backwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_backwarddiagonal-dark.png?v=639233544741807872){.dark .snapshot}
== slide
![background-patterns_cross-light](/assets/images/screenshots/kt-panel/background-patterns_cross-light.png?v=639233544748663717){ .light .snapshot} ![background-patterns_cross-dark](/assets/images/screenshots/kt-panel/background-patterns_cross-dark.png?v=639233544748663717){.dark .snapshot}
== slide
![background-patterns_largegrid-light](/assets/images/screenshots/kt-panel/background-patterns_largegrid-light.png?v=639233544755498168){ .light .snapshot} ![background-patterns_largegrid-dark](/assets/images/screenshots/kt-panel/background-patterns_largegrid-dark.png?v=639233544755498168){.dark .snapshot}
== slide
![background-patterns_max-light](/assets/images/screenshots/kt-panel/background-patterns_max-light.png?v=639233544762318630){ .light .snapshot} ![background-patterns_max-dark](/assets/images/screenshots/kt-panel/background-patterns_max-dark.png?v=639233544762318630){.dark .snapshot}
== slide
![background-patterns_diagonalcross-light](/assets/images/screenshots/kt-panel/background-patterns_diagonalcross-light.png?v=639233544769012882){ .light .snapshot} ![background-patterns_diagonalcross-dark](/assets/images/screenshots/kt-panel/background-patterns_diagonalcross-dark.png?v=639233544769012882){.dark .snapshot}
== slide
![background-patterns_percent05-light](/assets/images/screenshots/kt-panel/background-patterns_percent05-light.png?v=639233544775860586){ .light .snapshot} ![background-patterns_percent05-dark](/assets/images/screenshots/kt-panel/background-patterns_percent05-dark.png?v=639233544775860586){.dark .snapshot}
== slide
![background-patterns_percent10-light](/assets/images/screenshots/kt-panel/background-patterns_percent10-light.png?v=639233544782722499){ .light .snapshot} ![background-patterns_percent10-dark](/assets/images/screenshots/kt-panel/background-patterns_percent10-dark.png?v=639233544782722499){.dark .snapshot}
== slide
![background-patterns_percent20-light](/assets/images/screenshots/kt-panel/background-patterns_percent20-light.png?v=639233544789406856){ .light .snapshot} ![background-patterns_percent20-dark](/assets/images/screenshots/kt-panel/background-patterns_percent20-dark.png?v=639233544789406856){.dark .snapshot}
== slide
![background-patterns_percent25-light](/assets/images/screenshots/kt-panel/background-patterns_percent25-light.png?v=639233544796237547){ .light .snapshot} ![background-patterns_percent25-dark](/assets/images/screenshots/kt-panel/background-patterns_percent25-dark.png?v=639233544796237547){.dark .snapshot}
== slide
![background-patterns_percent30-light](/assets/images/screenshots/kt-panel/background-patterns_percent30-light.png?v=639233544803069084){ .light .snapshot} ![background-patterns_percent30-dark](/assets/images/screenshots/kt-panel/background-patterns_percent30-dark.png?v=639233544803069084){.dark .snapshot}
== slide
![background-patterns_percent40-light](/assets/images/screenshots/kt-panel/background-patterns_percent40-light.png?v=639233544809887938){ .light .snapshot} ![background-patterns_percent40-dark](/assets/images/screenshots/kt-panel/background-patterns_percent40-dark.png?v=639233544809887938){.dark .snapshot}
== slide
![background-patterns_percent50-light](/assets/images/screenshots/kt-panel/background-patterns_percent50-light.png?v=639233544816619086){ .light .snapshot} ![background-patterns_percent50-dark](/assets/images/screenshots/kt-panel/background-patterns_percent50-dark.png?v=639233544816619086){.dark .snapshot}
== slide
![background-patterns_percent60-light](/assets/images/screenshots/kt-panel/background-patterns_percent60-light.png?v=639233544823551457){ .light .snapshot} ![background-patterns_percent60-dark](/assets/images/screenshots/kt-panel/background-patterns_percent60-dark.png?v=639233544823551457){.dark .snapshot}
== slide
![background-patterns_percent70-light](/assets/images/screenshots/kt-panel/background-patterns_percent70-light.png?v=639233544830409475){ .light .snapshot} ![background-patterns_percent70-dark](/assets/images/screenshots/kt-panel/background-patterns_percent70-dark.png?v=639233544830409475){.dark .snapshot}
== slide
![background-patterns_percent75-light](/assets/images/screenshots/kt-panel/background-patterns_percent75-light.png?v=639233544837192368){ .light .snapshot} ![background-patterns_percent75-dark](/assets/images/screenshots/kt-panel/background-patterns_percent75-dark.png?v=639233544837192368){.dark .snapshot}
== slide
![background-patterns_percent80-light](/assets/images/screenshots/kt-panel/background-patterns_percent80-light.png?v=639233544844049791){ .light .snapshot} ![background-patterns_percent80-dark](/assets/images/screenshots/kt-panel/background-patterns_percent80-dark.png?v=639233544844049791){.dark .snapshot}
== slide
![background-patterns_percent90-light](/assets/images/screenshots/kt-panel/background-patterns_percent90-light.png?v=639233544850883377){ .light .snapshot} ![background-patterns_percent90-dark](/assets/images/screenshots/kt-panel/background-patterns_percent90-dark.png?v=639233544850883377){.dark .snapshot}
== slide
![background-patterns_lightdownwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_lightdownwarddiagonal-light.png?v=639233544857563311){ .light .snapshot} ![background-patterns_lightdownwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_lightdownwarddiagonal-dark.png?v=639233544857563311){.dark .snapshot}
== slide
![background-patterns_lightupwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_lightupwarddiagonal-light.png?v=639233544864162482){ .light .snapshot} ![background-patterns_lightupwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_lightupwarddiagonal-dark.png?v=639233544864162482){.dark .snapshot}
== slide
![background-patterns_darkdownwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_darkdownwarddiagonal-light.png?v=639233544871005557){ .light .snapshot} ![background-patterns_darkdownwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_darkdownwarddiagonal-dark.png?v=639233544871005557){.dark .snapshot}
== slide
![background-patterns_darkupwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_darkupwarddiagonal-light.png?v=639233544877862214){ .light .snapshot} ![background-patterns_darkupwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_darkupwarddiagonal-dark.png?v=639233544877862214){.dark .snapshot}
== slide
![background-patterns_widedownwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_widedownwarddiagonal-light.png?v=639233544884648894){ .light .snapshot} ![background-patterns_widedownwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_widedownwarddiagonal-dark.png?v=639233544884648894){.dark .snapshot}
== slide
![background-patterns_wideupwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_wideupwarddiagonal-light.png?v=639233544891326018){ .light .snapshot} ![background-patterns_wideupwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_wideupwarddiagonal-dark.png?v=639233544891326018){.dark .snapshot}
== slide
![background-patterns_lightvertical-light](/assets/images/screenshots/kt-panel/background-patterns_lightvertical-light.png?v=639233544898213641){ .light .snapshot} ![background-patterns_lightvertical-dark](/assets/images/screenshots/kt-panel/background-patterns_lightvertical-dark.png?v=639233544898213641){.dark .snapshot}
== slide
![background-patterns_lighthorizontal-light](/assets/images/screenshots/kt-panel/background-patterns_lighthorizontal-light.png?v=639233544905059662){ .light .snapshot} ![background-patterns_lighthorizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_lighthorizontal-dark.png?v=639233544905059662){.dark .snapshot}
== slide
![background-patterns_narrowvertical-light](/assets/images/screenshots/kt-panel/background-patterns_narrowvertical-light.png?v=639233544911772357){ .light .snapshot} ![background-patterns_narrowvertical-dark](/assets/images/screenshots/kt-panel/background-patterns_narrowvertical-dark.png?v=639233544911772357){.dark .snapshot}
== slide
![background-patterns_narrowhorizontal-light](/assets/images/screenshots/kt-panel/background-patterns_narrowhorizontal-light.png?v=639233544918642865){ .light .snapshot} ![background-patterns_narrowhorizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_narrowhorizontal-dark.png?v=639233544918642865){.dark .snapshot}
== slide
![background-patterns_darkvertical-light](/assets/images/screenshots/kt-panel/background-patterns_darkvertical-light.png?v=639233544925312300){ .light .snapshot} ![background-patterns_darkvertical-dark](/assets/images/screenshots/kt-panel/background-patterns_darkvertical-dark.png?v=639233544925312300){.dark .snapshot}
== slide
![background-patterns_darkhorizontal-light](/assets/images/screenshots/kt-panel/background-patterns_darkhorizontal-light.png?v=639233544932125359){ .light .snapshot} ![background-patterns_darkhorizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_darkhorizontal-dark.png?v=639233544932125359){.dark .snapshot}
== slide
![background-patterns_dasheddownwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_dasheddownwarddiagonal-light.png?v=639233544938994170){ .light .snapshot} ![background-patterns_dasheddownwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_dasheddownwarddiagonal-dark.png?v=639233544938994170){.dark .snapshot}
== slide
![background-patterns_dashedupwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_dashedupwarddiagonal-light.png?v=639233544945713685){ .light .snapshot} ![background-patterns_dashedupwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_dashedupwarddiagonal-dark.png?v=639233544945713685){.dark .snapshot}
== slide
![background-patterns_dashedhorizontal-light](/assets/images/screenshots/kt-panel/background-patterns_dashedhorizontal-light.png?v=639233544952493675){ .light .snapshot} ![background-patterns_dashedhorizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_dashedhorizontal-dark.png?v=639233544952493675){.dark .snapshot}
== slide
![background-patterns_dashedvertical-light](/assets/images/screenshots/kt-panel/background-patterns_dashedvertical-light.png?v=639233544959286951){ .light .snapshot} ![background-patterns_dashedvertical-dark](/assets/images/screenshots/kt-panel/background-patterns_dashedvertical-dark.png?v=639233544959286951){.dark .snapshot}
== slide
![background-patterns_smallconfetti-light](/assets/images/screenshots/kt-panel/background-patterns_smallconfetti-light.png?v=639233544966138797){ .light .snapshot} ![background-patterns_smallconfetti-dark](/assets/images/screenshots/kt-panel/background-patterns_smallconfetti-dark.png?v=639233544966138797){.dark .snapshot}
== slide
![background-patterns_largeconfetti-light](/assets/images/screenshots/kt-panel/background-patterns_largeconfetti-light.png?v=639233544972918869){ .light .snapshot} ![background-patterns_largeconfetti-dark](/assets/images/screenshots/kt-panel/background-patterns_largeconfetti-dark.png?v=639233544972918869){.dark .snapshot}
== slide
![background-patterns_zigzag-light](/assets/images/screenshots/kt-panel/background-patterns_zigzag-light.png?v=639233544979755612){ .light .snapshot} ![background-patterns_zigzag-dark](/assets/images/screenshots/kt-panel/background-patterns_zigzag-dark.png?v=639233544979755612){.dark .snapshot}
== slide
![background-patterns_wave-light](/assets/images/screenshots/kt-panel/background-patterns_wave-light.png?v=639233544986458780){ .light .snapshot} ![background-patterns_wave-dark](/assets/images/screenshots/kt-panel/background-patterns_wave-dark.png?v=639233544986458780){.dark .snapshot}
== slide
![background-patterns_diagonalbrick-light](/assets/images/screenshots/kt-panel/background-patterns_diagonalbrick-light.png?v=639233544993195445){ .light .snapshot} ![background-patterns_diagonalbrick-dark](/assets/images/screenshots/kt-panel/background-patterns_diagonalbrick-dark.png?v=639233544993195445){.dark .snapshot}
== slide
![background-patterns_horizontalbrick-light](/assets/images/screenshots/kt-panel/background-patterns_horizontalbrick-light.png?v=639233545000063719){ .light .snapshot} ![background-patterns_horizontalbrick-dark](/assets/images/screenshots/kt-panel/background-patterns_horizontalbrick-dark.png?v=639233545000063719){.dark .snapshot}
== slide
![background-patterns_weave-light](/assets/images/screenshots/kt-panel/background-patterns_weave-light.png?v=639233545006796672){ .light .snapshot} ![background-patterns_weave-dark](/assets/images/screenshots/kt-panel/background-patterns_weave-dark.png?v=639233545006796672){.dark .snapshot}
== slide
![background-patterns_plaid-light](/assets/images/screenshots/kt-panel/background-patterns_plaid-light.png?v=639233545013685152){ .light .snapshot} ![background-patterns_plaid-dark](/assets/images/screenshots/kt-panel/background-patterns_plaid-dark.png?v=639233545013685152){.dark .snapshot}
== slide
![background-patterns_divot-light](/assets/images/screenshots/kt-panel/background-patterns_divot-light.png?v=639233545020463087){ .light .snapshot} ![background-patterns_divot-dark](/assets/images/screenshots/kt-panel/background-patterns_divot-dark.png?v=639233545020463087){.dark .snapshot}
== slide
![background-patterns_dottedgrid-light](/assets/images/screenshots/kt-panel/background-patterns_dottedgrid-light.png?v=639233545027318497){ .light .snapshot} ![background-patterns_dottedgrid-dark](/assets/images/screenshots/kt-panel/background-patterns_dottedgrid-dark.png?v=639233545027318497){.dark .snapshot}
== slide
![background-patterns_dotteddiamond-light](/assets/images/screenshots/kt-panel/background-patterns_dotteddiamond-light.png?v=639233545034176489){ .light .snapshot} ![background-patterns_dotteddiamond-dark](/assets/images/screenshots/kt-panel/background-patterns_dotteddiamond-dark.png?v=639233545034176489){.dark .snapshot}
== slide
![background-patterns_shingle-light](/assets/images/screenshots/kt-panel/background-patterns_shingle-light.png?v=639233545041044890){ .light .snapshot} ![background-patterns_shingle-dark](/assets/images/screenshots/kt-panel/background-patterns_shingle-dark.png?v=639233545041044890){.dark .snapshot}
== slide
![background-patterns_trellis-light](/assets/images/screenshots/kt-panel/background-patterns_trellis-light.png?v=639233545047896164){ .light .snapshot} ![background-patterns_trellis-dark](/assets/images/screenshots/kt-panel/background-patterns_trellis-dark.png?v=639233545047896164){.dark .snapshot}
== slide
![background-patterns_sphere-light](/assets/images/screenshots/kt-panel/background-patterns_sphere-light.png?v=639233545054713026){ .light .snapshot} ![background-patterns_sphere-dark](/assets/images/screenshots/kt-panel/background-patterns_sphere-dark.png?v=639233545054713026){.dark .snapshot}
== slide
![background-patterns_smallgrid-light](/assets/images/screenshots/kt-panel/background-patterns_smallgrid-light.png?v=639233545061568612){ .light .snapshot} ![background-patterns_smallgrid-dark](/assets/images/screenshots/kt-panel/background-patterns_smallgrid-dark.png?v=639233545061568612){.dark .snapshot}
== slide
![background-patterns_smallcheckerboard-light](/assets/images/screenshots/kt-panel/background-patterns_smallcheckerboard-light.png?v=639233545068264893){ .light .snapshot} ![background-patterns_smallcheckerboard-dark](/assets/images/screenshots/kt-panel/background-patterns_smallcheckerboard-dark.png?v=639233545068264893){.dark .snapshot}
== slide
![background-patterns_largecheckerboard-light](/assets/images/screenshots/kt-panel/background-patterns_largecheckerboard-light.png?v=639233545075077286){ .light .snapshot} ![background-patterns_largecheckerboard-dark](/assets/images/screenshots/kt-panel/background-patterns_largecheckerboard-dark.png?v=639233545075077286){.dark .snapshot}
== slide
![background-patterns_outlineddiamond-light](/assets/images/screenshots/kt-panel/background-patterns_outlineddiamond-light.png?v=639233545081896238){ .light .snapshot} ![background-patterns_outlineddiamond-dark](/assets/images/screenshots/kt-panel/background-patterns_outlineddiamond-dark.png?v=639233545081896238){.dark .snapshot}
== slide
![background-patterns_soliddiamond-light](/assets/images/screenshots/kt-panel/background-patterns_soliddiamond-light.png?v=639233545088597243){ .light .snapshot} ![background-patterns_soliddiamond-dark](/assets/images/screenshots/kt-panel/background-patterns_soliddiamond-dark.png?v=639233545088597243){.dark .snapshot}
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
