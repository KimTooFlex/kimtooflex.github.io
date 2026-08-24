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
![kt-panel-light](/assets/images/controls/kt-panel/kt-panel-light.png?v=639231743558321941){ .light .snapshot} ![kt-panel-dark](/assets/images/controls/kt-panel/kt-panel-dark.png?v=639231743558321941){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::

---
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
![gradient-background-light](/assets/images/controls/kt-panel/gradient-background-light.png?v=639231743579249457){ .light .snapshot} ![gradient-background-dark](/assets/images/controls/kt-panel/gradient-background-dark.png?v=639231743579249457){.dark .snapshot}

== tab "Light" icon:sun
![gradient-background-light](/assets/images/controls/kt-panel/gradient-background-light.png?v=639231743579244361){  .snapshot}

== tab "Dark" icon:moon
![gradient-background-dark](/assets/images/controls/kt-panel/gradient-background-dark.png?v=639231743579244361){ .snapshot}

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
![system-color-gradient-light](/assets/images/controls/kt-panel/system-color-gradient-light.png?v=639231743589587785){ .light .snapshot} ![system-color-gradient-dark](/assets/images/controls/kt-panel/system-color-gradient-dark.png?v=639231743589587785){.dark .snapshot}

== tab "Light" icon:sun
![system-color-gradient-light](/assets/images/controls/kt-panel/system-color-gradient-light.png?v=639231743589587785){  .snapshot}

== tab "Dark" icon:moon
![system-color-gradient-dark](/assets/images/controls/kt-panel/system-color-gradient-dark.png?v=639231743589587785){ .snapshot}

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
![opacity-gradient-light](/assets/images/controls/kt-panel/opacity-gradient-light.png?v=639231743600095168){ .light .snapshot} ![opacity-gradient-dark](/assets/images/controls/kt-panel/opacity-gradient-dark.png?v=639231743600095168){.dark .snapshot}

== tab "Light" icon:sun
![opacity-gradient-light](/assets/images/controls/kt-panel/opacity-gradient-light.png?v=639231743600095168){  .snapshot}

== tab "Dark" icon:moon
![opacity-gradient-dark](/assets/images/controls/kt-panel/opacity-gradient-dark.png?v=639231743600095168){ .snapshot}

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
![solid-background-light](/assets/images/controls/kt-panel/solid-background-light.png?v=639231743610561211){ .light .snapshot} ![solid-background-dark](/assets/images/controls/kt-panel/solid-background-dark.png?v=639231743610561211){.dark .snapshot}

== tab "Light" icon:sun
![solid-background-light](/assets/images/controls/kt-panel/solid-background-light.png?v=639231743610561211){  .snapshot}

== tab "Dark" icon:moon
![solid-background-dark](/assets/images/controls/kt-panel/solid-background-dark.png?v=639231743610561211){ .snapshot}

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
![background-patterns-light](/assets/images/controls/kt-panel/background-patterns-light.png?v=639231743997088522){ .light .snapshot} ![background-patterns-dark](/assets/images/controls/kt-panel/background-patterns-dark.png?v=639231743997088522){.dark .snapshot}

== tab "Light" icon:sun
![background-patterns-light](/assets/images/controls/kt-panel/background-patterns-light.png?v=639231743997088522){  .snapshot}

== tab "Dark" icon:moon
![background-patterns-dark](/assets/images/controls/kt-panel/background-patterns-dark.png?v=639231743997088522){ .snapshot}

:::
:::

::: hero layout:slider
== slide
![background-patterns_horizontal-light](/assets/images/controls/kt-panel/background-patterns_horizontal-light.png?v=639231743627780409){ .light .snapshot} ![background-patterns_horizontal-dark](/assets/images/controls/kt-panel/background-patterns_horizontal-dark.png?v=639231743627780409){.dark .snapshot}
== slide
![background-patterns_min-light](/assets/images/controls/kt-panel/background-patterns_min-light.png?v=639231743634311437){ .light .snapshot} ![background-patterns_min-dark](/assets/images/controls/kt-panel/background-patterns_min-dark.png?v=639231743634311437){.dark .snapshot}
== slide
![background-patterns_vertical-light](/assets/images/controls/kt-panel/background-patterns_vertical-light.png?v=639231743640810608){ .light .snapshot} ![background-patterns_vertical-dark](/assets/images/controls/kt-panel/background-patterns_vertical-dark.png?v=639231743640810608){.dark .snapshot}
== slide
![background-patterns_forwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_forwarddiagonal-light.png?v=639231743647357380){ .light .snapshot} ![background-patterns_forwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_forwarddiagonal-dark.png?v=639231743647357380){.dark .snapshot}
== slide
![background-patterns_backwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_backwarddiagonal-light.png?v=639231743653884938){ .light .snapshot} ![background-patterns_backwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_backwarddiagonal-dark.png?v=639231743653884938){.dark .snapshot}
== slide
![background-patterns_cross-light](/assets/images/controls/kt-panel/background-patterns_cross-light.png?v=639231743660365805){ .light .snapshot} ![background-patterns_cross-dark](/assets/images/controls/kt-panel/background-patterns_cross-dark.png?v=639231743660365805){.dark .snapshot}
== slide
![background-patterns_largegrid-light](/assets/images/controls/kt-panel/background-patterns_largegrid-light.png?v=639231743666876678){ .light .snapshot} ![background-patterns_largegrid-dark](/assets/images/controls/kt-panel/background-patterns_largegrid-dark.png?v=639231743666876678){.dark .snapshot}
== slide
![background-patterns_max-light](/assets/images/controls/kt-panel/background-patterns_max-light.png?v=639231743673411083){ .light .snapshot} ![background-patterns_max-dark](/assets/images/controls/kt-panel/background-patterns_max-dark.png?v=639231743673411083){.dark .snapshot}
== slide
![background-patterns_diagonalcross-light](/assets/images/controls/kt-panel/background-patterns_diagonalcross-light.png?v=639231743679886316){ .light .snapshot} ![background-patterns_diagonalcross-dark](/assets/images/controls/kt-panel/background-patterns_diagonalcross-dark.png?v=639231743679886316){.dark .snapshot}
== slide
![background-patterns_percent05-light](/assets/images/controls/kt-panel/background-patterns_percent05-light.png?v=639231743686404107){ .light .snapshot} ![background-patterns_percent05-dark](/assets/images/controls/kt-panel/background-patterns_percent05-dark.png?v=639231743686404107){.dark .snapshot}
== slide
![background-patterns_percent10-light](/assets/images/controls/kt-panel/background-patterns_percent10-light.png?v=639231743692921314){ .light .snapshot} ![background-patterns_percent10-dark](/assets/images/controls/kt-panel/background-patterns_percent10-dark.png?v=639231743692921314){.dark .snapshot}
== slide
![background-patterns_percent20-light](/assets/images/controls/kt-panel/background-patterns_percent20-light.png?v=639231743699427363){ .light .snapshot} ![background-patterns_percent20-dark](/assets/images/controls/kt-panel/background-patterns_percent20-dark.png?v=639231743699427363){.dark .snapshot}
== slide
![background-patterns_percent25-light](/assets/images/controls/kt-panel/background-patterns_percent25-light.png?v=639231743705932738){ .light .snapshot} ![background-patterns_percent25-dark](/assets/images/controls/kt-panel/background-patterns_percent25-dark.png?v=639231743705932738){.dark .snapshot}
== slide
![background-patterns_percent30-light](/assets/images/controls/kt-panel/background-patterns_percent30-light.png?v=639231743712455454){ .light .snapshot} ![background-patterns_percent30-dark](/assets/images/controls/kt-panel/background-patterns_percent30-dark.png?v=639231743712455454){.dark .snapshot}
== slide
![background-patterns_percent40-light](/assets/images/controls/kt-panel/background-patterns_percent40-light.png?v=639231743718967586){ .light .snapshot} ![background-patterns_percent40-dark](/assets/images/controls/kt-panel/background-patterns_percent40-dark.png?v=639231743718967586){.dark .snapshot}
== slide
![background-patterns_percent50-light](/assets/images/controls/kt-panel/background-patterns_percent50-light.png?v=639231743725525017){ .light .snapshot} ![background-patterns_percent50-dark](/assets/images/controls/kt-panel/background-patterns_percent50-dark.png?v=639231743725525017){.dark .snapshot}
== slide
![background-patterns_percent60-light](/assets/images/controls/kt-panel/background-patterns_percent60-light.png?v=639231743732058528){ .light .snapshot} ![background-patterns_percent60-dark](/assets/images/controls/kt-panel/background-patterns_percent60-dark.png?v=639231743732058528){.dark .snapshot}
== slide
![background-patterns_percent70-light](/assets/images/controls/kt-panel/background-patterns_percent70-light.png?v=639231743738570662){ .light .snapshot} ![background-patterns_percent70-dark](/assets/images/controls/kt-panel/background-patterns_percent70-dark.png?v=639231743738570662){.dark .snapshot}
== slide
![background-patterns_percent75-light](/assets/images/controls/kt-panel/background-patterns_percent75-light.png?v=639231743745145944){ .light .snapshot} ![background-patterns_percent75-dark](/assets/images/controls/kt-panel/background-patterns_percent75-dark.png?v=639231743745145944){.dark .snapshot}
== slide
![background-patterns_percent80-light](/assets/images/controls/kt-panel/background-patterns_percent80-light.png?v=639231743751743776){ .light .snapshot} ![background-patterns_percent80-dark](/assets/images/controls/kt-panel/background-patterns_percent80-dark.png?v=639231743751743776){.dark .snapshot}
== slide
![background-patterns_percent90-light](/assets/images/controls/kt-panel/background-patterns_percent90-light.png?v=639231743758355032){ .light .snapshot} ![background-patterns_percent90-dark](/assets/images/controls/kt-panel/background-patterns_percent90-dark.png?v=639231743758355032){.dark .snapshot}
== slide
![background-patterns_lightdownwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_lightdownwarddiagonal-light.png?v=639231743764915680){ .light .snapshot} ![background-patterns_lightdownwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_lightdownwarddiagonal-dark.png?v=639231743764915680){.dark .snapshot}
== slide
![background-patterns_lightupwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_lightupwarddiagonal-light.png?v=639231743771453762){ .light .snapshot} ![background-patterns_lightupwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_lightupwarddiagonal-dark.png?v=639231743771453762){.dark .snapshot}
== slide
![background-patterns_darkdownwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_darkdownwarddiagonal-light.png?v=639231743777931249){ .light .snapshot} ![background-patterns_darkdownwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_darkdownwarddiagonal-dark.png?v=639231743777931249){.dark .snapshot}
== slide
![background-patterns_darkupwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_darkupwarddiagonal-light.png?v=639231743784478015){ .light .snapshot} ![background-patterns_darkupwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_darkupwarddiagonal-dark.png?v=639231743784478015){.dark .snapshot}
== slide
![background-patterns_widedownwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_widedownwarddiagonal-light.png?v=639231743790941993){ .light .snapshot} ![background-patterns_widedownwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_widedownwarddiagonal-dark.png?v=639231743790941993){.dark .snapshot}
== slide
![background-patterns_wideupwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_wideupwarddiagonal-light.png?v=639231743797476960){ .light .snapshot} ![background-patterns_wideupwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_wideupwarddiagonal-dark.png?v=639231743797476960){.dark .snapshot}
== slide
![background-patterns_lightvertical-light](/assets/images/controls/kt-panel/background-patterns_lightvertical-light.png?v=639231743804169410){ .light .snapshot} ![background-patterns_lightvertical-dark](/assets/images/controls/kt-panel/background-patterns_lightvertical-dark.png?v=639231743804169410){.dark .snapshot}
== slide
![background-patterns_lighthorizontal-light](/assets/images/controls/kt-panel/background-patterns_lighthorizontal-light.png?v=639231743810543192){ .light .snapshot} ![background-patterns_lighthorizontal-dark](/assets/images/controls/kt-panel/background-patterns_lighthorizontal-dark.png?v=639231743810543192){.dark .snapshot}
== slide
![background-patterns_narrowvertical-light](/assets/images/controls/kt-panel/background-patterns_narrowvertical-light.png?v=639231743817077658){ .light .snapshot} ![background-patterns_narrowvertical-dark](/assets/images/controls/kt-panel/background-patterns_narrowvertical-dark.png?v=639231743817077658){.dark .snapshot}
== slide
![background-patterns_narrowhorizontal-light](/assets/images/controls/kt-panel/background-patterns_narrowhorizontal-light.png?v=639231743823596917){ .light .snapshot} ![background-patterns_narrowhorizontal-dark](/assets/images/controls/kt-panel/background-patterns_narrowhorizontal-dark.png?v=639231743823596917){.dark .snapshot}
== slide
![background-patterns_darkvertical-light](/assets/images/controls/kt-panel/background-patterns_darkvertical-light.png?v=639231743830097106){ .light .snapshot} ![background-patterns_darkvertical-dark](/assets/images/controls/kt-panel/background-patterns_darkvertical-dark.png?v=639231743830097106){.dark .snapshot}
== slide
![background-patterns_darkhorizontal-light](/assets/images/controls/kt-panel/background-patterns_darkhorizontal-light.png?v=639231743836644330){ .light .snapshot} ![background-patterns_darkhorizontal-dark](/assets/images/controls/kt-panel/background-patterns_darkhorizontal-dark.png?v=639231743836644330){.dark .snapshot}
== slide
![background-patterns_dasheddownwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_dasheddownwarddiagonal-light.png?v=639231743843195890){ .light .snapshot} ![background-patterns_dasheddownwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_dasheddownwarddiagonal-dark.png?v=639231743843195890){.dark .snapshot}
== slide
![background-patterns_dashedupwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_dashedupwarddiagonal-light.png?v=639231743849755042){ .light .snapshot} ![background-patterns_dashedupwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_dashedupwarddiagonal-dark.png?v=639231743849755042){.dark .snapshot}
== slide
![background-patterns_dashedhorizontal-light](/assets/images/controls/kt-panel/background-patterns_dashedhorizontal-light.png?v=639231743856292682){ .light .snapshot} ![background-patterns_dashedhorizontal-dark](/assets/images/controls/kt-panel/background-patterns_dashedhorizontal-dark.png?v=639231743856292682){.dark .snapshot}
== slide
![background-patterns_dashedvertical-light](/assets/images/controls/kt-panel/background-patterns_dashedvertical-light.png?v=639231743862775185){ .light .snapshot} ![background-patterns_dashedvertical-dark](/assets/images/controls/kt-panel/background-patterns_dashedvertical-dark.png?v=639231743862775185){.dark .snapshot}
== slide
![background-patterns_smallconfetti-light](/assets/images/controls/kt-panel/background-patterns_smallconfetti-light.png?v=639231743869274794){ .light .snapshot} ![background-patterns_smallconfetti-dark](/assets/images/controls/kt-panel/background-patterns_smallconfetti-dark.png?v=639231743869274794){.dark .snapshot}
== slide
![background-patterns_largeconfetti-light](/assets/images/controls/kt-panel/background-patterns_largeconfetti-light.png?v=639231743875848276){ .light .snapshot} ![background-patterns_largeconfetti-dark](/assets/images/controls/kt-panel/background-patterns_largeconfetti-dark.png?v=639231743875848276){.dark .snapshot}
== slide
![background-patterns_zigzag-light](/assets/images/controls/kt-panel/background-patterns_zigzag-light.png?v=639231743882400075){ .light .snapshot} ![background-patterns_zigzag-dark](/assets/images/controls/kt-panel/background-patterns_zigzag-dark.png?v=639231743882400075){.dark .snapshot}
== slide
![background-patterns_wave-light](/assets/images/controls/kt-panel/background-patterns_wave-light.png?v=639231743888913613){ .light .snapshot} ![background-patterns_wave-dark](/assets/images/controls/kt-panel/background-patterns_wave-dark.png?v=639231743888913613){.dark .snapshot}
== slide
![background-patterns_diagonalbrick-light](/assets/images/controls/kt-panel/background-patterns_diagonalbrick-light.png?v=639231743895408496){ .light .snapshot} ![background-patterns_diagonalbrick-dark](/assets/images/controls/kt-panel/background-patterns_diagonalbrick-dark.png?v=639231743895408496){.dark .snapshot}
== slide
![background-patterns_horizontalbrick-light](/assets/images/controls/kt-panel/background-patterns_horizontalbrick-light.png?v=639231743901972011){ .light .snapshot} ![background-patterns_horizontalbrick-dark](/assets/images/controls/kt-panel/background-patterns_horizontalbrick-dark.png?v=639231743901972011){.dark .snapshot}
== slide
![background-patterns_weave-light](/assets/images/controls/kt-panel/background-patterns_weave-light.png?v=639231743908528234){ .light .snapshot} ![background-patterns_weave-dark](/assets/images/controls/kt-panel/background-patterns_weave-dark.png?v=639231743908528234){.dark .snapshot}
== slide
![background-patterns_plaid-light](/assets/images/controls/kt-panel/background-patterns_plaid-light.png?v=639231743915071303){ .light .snapshot} ![background-patterns_plaid-dark](/assets/images/controls/kt-panel/background-patterns_plaid-dark.png?v=639231743915071303){.dark .snapshot}
== slide
![background-patterns_divot-light](/assets/images/controls/kt-panel/background-patterns_divot-light.png?v=639231743921583093){ .light .snapshot} ![background-patterns_divot-dark](/assets/images/controls/kt-panel/background-patterns_divot-dark.png?v=639231743921583093){.dark .snapshot}
== slide
![background-patterns_dottedgrid-light](/assets/images/controls/kt-panel/background-patterns_dottedgrid-light.png?v=639231743928102144){ .light .snapshot} ![background-patterns_dottedgrid-dark](/assets/images/controls/kt-panel/background-patterns_dottedgrid-dark.png?v=639231743928102144){.dark .snapshot}
== slide
![background-patterns_dotteddiamond-light](/assets/images/controls/kt-panel/background-patterns_dotteddiamond-light.png?v=639231743934656172){ .light .snapshot} ![background-patterns_dotteddiamond-dark](/assets/images/controls/kt-panel/background-patterns_dotteddiamond-dark.png?v=639231743934656172){.dark .snapshot}
== slide
![background-patterns_shingle-light](/assets/images/controls/kt-panel/background-patterns_shingle-light.png?v=639231743941143590){ .light .snapshot} ![background-patterns_shingle-dark](/assets/images/controls/kt-panel/background-patterns_shingle-dark.png?v=639231743941143590){.dark .snapshot}
== slide
![background-patterns_trellis-light](/assets/images/controls/kt-panel/background-patterns_trellis-light.png?v=639231743947697337){ .light .snapshot} ![background-patterns_trellis-dark](/assets/images/controls/kt-panel/background-patterns_trellis-dark.png?v=639231743947697337){.dark .snapshot}
== slide
![background-patterns_sphere-light](/assets/images/controls/kt-panel/background-patterns_sphere-light.png?v=639231743954204893){ .light .snapshot} ![background-patterns_sphere-dark](/assets/images/controls/kt-panel/background-patterns_sphere-dark.png?v=639231743954204893){.dark .snapshot}
== slide
![background-patterns_smallgrid-light](/assets/images/controls/kt-panel/background-patterns_smallgrid-light.png?v=639231743960715748){ .light .snapshot} ![background-patterns_smallgrid-dark](/assets/images/controls/kt-panel/background-patterns_smallgrid-dark.png?v=639231743960715748){.dark .snapshot}
== slide
![background-patterns_smallcheckerboard-light](/assets/images/controls/kt-panel/background-patterns_smallcheckerboard-light.png?v=639231743967191436){ .light .snapshot} ![background-patterns_smallcheckerboard-dark](/assets/images/controls/kt-panel/background-patterns_smallcheckerboard-dark.png?v=639231743967191436){.dark .snapshot}
== slide
![background-patterns_largecheckerboard-light](/assets/images/controls/kt-panel/background-patterns_largecheckerboard-light.png?v=639231743973707580){ .light .snapshot} ![background-patterns_largecheckerboard-dark](/assets/images/controls/kt-panel/background-patterns_largecheckerboard-dark.png?v=639231743973707580){.dark .snapshot}
== slide
![background-patterns_outlineddiamond-light](/assets/images/controls/kt-panel/background-patterns_outlineddiamond-light.png?v=639231743980229814){ .light .snapshot} ![background-patterns_outlineddiamond-dark](/assets/images/controls/kt-panel/background-patterns_outlineddiamond-dark.png?v=639231743980229814){.dark .snapshot}
== slide
![background-patterns_soliddiamond-light](/assets/images/controls/kt-panel/background-patterns_soliddiamond-light.png?v=639231743986758734){ .light .snapshot} ![background-patterns_soliddiamond-dark](/assets/images/controls/kt-panel/background-patterns_soliddiamond-dark.png?v=639231743986758734){.dark .snapshot}
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
