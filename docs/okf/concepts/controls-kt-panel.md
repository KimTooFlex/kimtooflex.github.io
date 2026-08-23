---
type: concept
title: "KimTools / Controls / Panel"
description: "Modern WinForms controls, Components, and theming for .NET -single assembly, one-time license, zero dependencies."
source: "https://kimtoo.net/controls/kt-panel/"
path: /controls/kt-panel/
updated: 2026-08-23
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-23T11:09:02.761Z"
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
![kt-panel-light](/assets/images/controls/kt-panel/kt-panel-light.png?v=639230908237184714){ .light .snapshot} ![kt-panel-dark](/assets/images/controls/kt-panel/kt-panel-dark.png?v=639230908237184714){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::

---
# Background
| ::: tag "Background" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:../utilities/kt-brush.md  | *Sets the panel's background color.* |
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
![gradient-background-light](/assets/images/controls/kt-panel/gradient-background-light.png?v=639230908258133047){ .light .snapshot} ![gradient-background-dark](/assets/images/controls/kt-panel/gradient-background-dark.png?v=639230908258133047){.dark .snapshot}

== tab "Light" icon:sun
![gradient-background-light](/assets/images/controls/kt-panel/gradient-background-light.png?v=639230908258133047){  .snapshot}

== tab "Dark" icon:moon
![gradient-background-dark](/assets/images/controls/kt-panel/gradient-background-dark.png?v=639230908258133047){ .snapshot}

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
![system-color-gradient-light](/assets/images/controls/kt-panel/system-color-gradient-light.png?v=639230908268473433){ .light .snapshot} ![system-color-gradient-dark](/assets/images/controls/kt-panel/system-color-gradient-dark.png?v=639230908268473433){.dark .snapshot}

== tab "Light" icon:sun
![system-color-gradient-light](/assets/images/controls/kt-panel/system-color-gradient-light.png?v=639230908268463382){  .snapshot}

== tab "Dark" icon:moon
![system-color-gradient-dark](/assets/images/controls/kt-panel/system-color-gradient-dark.png?v=639230908268463382){ .snapshot}

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
![opacity-gradient-light](/assets/images/controls/kt-panel/opacity-gradient-light.png?v=639230908278989878){ .light .snapshot} ![opacity-gradient-dark](/assets/images/controls/kt-panel/opacity-gradient-dark.png?v=639230908278989878){.dark .snapshot}

== tab "Light" icon:sun
![opacity-gradient-light](/assets/images/controls/kt-panel/opacity-gradient-light.png?v=639230908278989878){  .snapshot}

== tab "Dark" icon:moon
![opacity-gradient-dark](/assets/images/controls/kt-panel/opacity-gradient-dark.png?v=639230908278989878){ .snapshot}

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
![solid-background-light](/assets/images/controls/kt-panel/solid-background-light.png?v=639230908289488526){ .light .snapshot} ![solid-background-dark](/assets/images/controls/kt-panel/solid-background-dark.png?v=639230908289488526){.dark .snapshot}

== tab "Light" icon:sun
![solid-background-light](/assets/images/controls/kt-panel/solid-background-light.png?v=639230908289488526){  .snapshot}

== tab "Dark" icon:moon
![solid-background-dark](/assets/images/controls/kt-panel/solid-background-dark.png?v=639230908289488526){ .snapshot}

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
![background-patterns-light](/assets/images/controls/kt-panel/background-patterns-light.png?v=639230908673649000){ .light .snapshot} ![background-patterns-dark](/assets/images/controls/kt-panel/background-patterns-dark.png?v=639230908673649000){.dark .snapshot}

== tab "Light" icon:sun
![background-patterns-light](/assets/images/controls/kt-panel/background-patterns-light.png?v=639230908673649000){  .snapshot}

== tab "Dark" icon:moon
![background-patterns-dark](/assets/images/controls/kt-panel/background-patterns-dark.png?v=639230908673649000){ .snapshot}

:::
:::

::: hero layout:slider
== slide
![background-patterns_horizontal-light](/assets/images/controls/kt-panel/background-patterns_horizontal-light.png?v=639230908306566094){ .light .snapshot} ![background-patterns_horizontal-dark](/assets/images/controls/kt-panel/background-patterns_horizontal-dark.png?v=639230908306566094){.dark .snapshot}
== slide
![background-patterns_min-light](/assets/images/controls/kt-panel/background-patterns_min-light.png?v=639230908313111591){ .light .snapshot} ![background-patterns_min-dark](/assets/images/controls/kt-panel/background-patterns_min-dark.png?v=639230908313111591){.dark .snapshot}
== slide
![background-patterns_vertical-light](/assets/images/controls/kt-panel/background-patterns_vertical-light.png?v=639230908319566940){ .light .snapshot} ![background-patterns_vertical-dark](/assets/images/controls/kt-panel/background-patterns_vertical-dark.png?v=639230908319566940){.dark .snapshot}
== slide
![background-patterns_forwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_forwarddiagonal-light.png?v=639230908326004476){ .light .snapshot} ![background-patterns_forwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_forwarddiagonal-dark.png?v=639230908326004476){.dark .snapshot}
== slide
![background-patterns_backwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_backwarddiagonal-light.png?v=639230908332570748){ .light .snapshot} ![background-patterns_backwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_backwarddiagonal-dark.png?v=639230908332570748){.dark .snapshot}
== slide
![background-patterns_cross-light](/assets/images/controls/kt-panel/background-patterns_cross-light.png?v=639230908338987121){ .light .snapshot} ![background-patterns_cross-dark](/assets/images/controls/kt-panel/background-patterns_cross-dark.png?v=639230908338987121){.dark .snapshot}
== slide
![background-patterns_largegrid-light](/assets/images/controls/kt-panel/background-patterns_largegrid-light.png?v=639230908345456280){ .light .snapshot} ![background-patterns_largegrid-dark](/assets/images/controls/kt-panel/background-patterns_largegrid-dark.png?v=639230908345456280){.dark .snapshot}
== slide
![background-patterns_max-light](/assets/images/controls/kt-panel/background-patterns_max-light.png?v=639230908351999864){ .light .snapshot} ![background-patterns_max-dark](/assets/images/controls/kt-panel/background-patterns_max-dark.png?v=639230908351999864){.dark .snapshot}
== slide
![background-patterns_diagonalcross-light](/assets/images/controls/kt-panel/background-patterns_diagonalcross-light.png?v=639230908358565643){ .light .snapshot} ![background-patterns_diagonalcross-dark](/assets/images/controls/kt-panel/background-patterns_diagonalcross-dark.png?v=639230908358565643){.dark .snapshot}
== slide
![background-patterns_percent05-light](/assets/images/controls/kt-panel/background-patterns_percent05-light.png?v=639230908365075918){ .light .snapshot} ![background-patterns_percent05-dark](/assets/images/controls/kt-panel/background-patterns_percent05-dark.png?v=639230908365075918){.dark .snapshot}
== slide
![background-patterns_percent10-light](/assets/images/controls/kt-panel/background-patterns_percent10-light.png?v=639230908371610904){ .light .snapshot} ![background-patterns_percent10-dark](/assets/images/controls/kt-panel/background-patterns_percent10-dark.png?v=639230908371610904){.dark .snapshot}
== slide
![background-patterns_percent20-light](/assets/images/controls/kt-panel/background-patterns_percent20-light.png?v=639230908377950546){ .light .snapshot} ![background-patterns_percent20-dark](/assets/images/controls/kt-panel/background-patterns_percent20-dark.png?v=639230908377950546){.dark .snapshot}
== slide
![background-patterns_percent25-light](/assets/images/controls/kt-panel/background-patterns_percent25-light.png?v=639230908384516858){ .light .snapshot} ![background-patterns_percent25-dark](/assets/images/controls/kt-panel/background-patterns_percent25-dark.png?v=639230908384516858){.dark .snapshot}
== slide
![background-patterns_percent30-light](/assets/images/controls/kt-panel/background-patterns_percent30-light.png?v=639230908390991464){ .light .snapshot} ![background-patterns_percent30-dark](/assets/images/controls/kt-panel/background-patterns_percent30-dark.png?v=639230908390991464){.dark .snapshot}
== slide
![background-patterns_percent40-light](/assets/images/controls/kt-panel/background-patterns_percent40-light.png?v=639230908397512622){ .light .snapshot} ![background-patterns_percent40-dark](/assets/images/controls/kt-panel/background-patterns_percent40-dark.png?v=639230908397512622){.dark .snapshot}
== slide
![background-patterns_percent50-light](/assets/images/controls/kt-panel/background-patterns_percent50-light.png?v=639230908403985601){ .light .snapshot} ![background-patterns_percent50-dark](/assets/images/controls/kt-panel/background-patterns_percent50-dark.png?v=639230908403985601){.dark .snapshot}
== slide
![background-patterns_percent60-light](/assets/images/controls/kt-panel/background-patterns_percent60-light.png?v=639230908410490906){ .light .snapshot} ![background-patterns_percent60-dark](/assets/images/controls/kt-panel/background-patterns_percent60-dark.png?v=639230908410490906){.dark .snapshot}
== slide
![background-patterns_percent70-light](/assets/images/controls/kt-panel/background-patterns_percent70-light.png?v=639230908416920967){ .light .snapshot} ![background-patterns_percent70-dark](/assets/images/controls/kt-panel/background-patterns_percent70-dark.png?v=639230908416920967){.dark .snapshot}
== slide
![background-patterns_percent75-light](/assets/images/controls/kt-panel/background-patterns_percent75-light.png?v=639230908423355077){ .light .snapshot} ![background-patterns_percent75-dark](/assets/images/controls/kt-panel/background-patterns_percent75-dark.png?v=639230908423355077){.dark .snapshot}
== slide
![background-patterns_percent80-light](/assets/images/controls/kt-panel/background-patterns_percent80-light.png?v=639230908429871849){ .light .snapshot} ![background-patterns_percent80-dark](/assets/images/controls/kt-panel/background-patterns_percent80-dark.png?v=639230908429871849){.dark .snapshot}
== slide
![background-patterns_percent90-light](/assets/images/controls/kt-panel/background-patterns_percent90-light.png?v=639230908436428588){ .light .snapshot} ![background-patterns_percent90-dark](/assets/images/controls/kt-panel/background-patterns_percent90-dark.png?v=639230908436428588){.dark .snapshot}
== slide
![background-patterns_lightdownwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_lightdownwarddiagonal-light.png?v=639230908442936748){ .light .snapshot} ![background-patterns_lightdownwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_lightdownwarddiagonal-dark.png?v=639230908442936748){.dark .snapshot}
== slide
![background-patterns_lightupwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_lightupwarddiagonal-light.png?v=639230908449348128){ .light .snapshot} ![background-patterns_lightupwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_lightupwarddiagonal-dark.png?v=639230908449348128){.dark .snapshot}
== slide
![background-patterns_darkdownwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_darkdownwarddiagonal-light.png?v=639230908455818852){ .light .snapshot} ![background-patterns_darkdownwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_darkdownwarddiagonal-dark.png?v=639230908455818852){.dark .snapshot}
== slide
![background-patterns_darkupwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_darkupwarddiagonal-light.png?v=639230908462238608){ .light .snapshot} ![background-patterns_darkupwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_darkupwarddiagonal-dark.png?v=639230908462238608){.dark .snapshot}
== slide
![background-patterns_widedownwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_widedownwarddiagonal-light.png?v=639230908468736195){ .light .snapshot} ![background-patterns_widedownwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_widedownwarddiagonal-dark.png?v=639230908468736195){.dark .snapshot}
== slide
![background-patterns_wideupwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_wideupwarddiagonal-light.png?v=639230908475277442){ .light .snapshot} ![background-patterns_wideupwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_wideupwarddiagonal-dark.png?v=639230908475277442){.dark .snapshot}
== slide
![background-patterns_lightvertical-light](/assets/images/controls/kt-panel/background-patterns_lightvertical-light.png?v=639230908481791246){ .light .snapshot} ![background-patterns_lightvertical-dark](/assets/images/controls/kt-panel/background-patterns_lightvertical-dark.png?v=639230908481791246){.dark .snapshot}
== slide
![background-patterns_lighthorizontal-light](/assets/images/controls/kt-panel/background-patterns_lighthorizontal-light.png?v=639230908488301470){ .light .snapshot} ![background-patterns_lighthorizontal-dark](/assets/images/controls/kt-panel/background-patterns_lighthorizontal-dark.png?v=639230908488316490){.dark .snapshot}
== slide
![background-patterns_narrowvertical-light](/assets/images/controls/kt-panel/background-patterns_narrowvertical-light.png?v=639230908494810982){ .light .snapshot} ![background-patterns_narrowvertical-dark](/assets/images/controls/kt-panel/background-patterns_narrowvertical-dark.png?v=639230908494810982){.dark .snapshot}
== slide
![background-patterns_narrowhorizontal-light](/assets/images/controls/kt-panel/background-patterns_narrowhorizontal-light.png?v=639230908501266971){ .light .snapshot} ![background-patterns_narrowhorizontal-dark](/assets/images/controls/kt-panel/background-patterns_narrowhorizontal-dark.png?v=639230908501266971){.dark .snapshot}
== slide
![background-patterns_darkvertical-light](/assets/images/controls/kt-panel/background-patterns_darkvertical-light.png?v=639230908507721864){ .light .snapshot} ![background-patterns_darkvertical-dark](/assets/images/controls/kt-panel/background-patterns_darkvertical-dark.png?v=639230908507721864){.dark .snapshot}
== slide
![background-patterns_darkhorizontal-light](/assets/images/controls/kt-panel/background-patterns_darkhorizontal-light.png?v=639230908514237185){ .light .snapshot} ![background-patterns_darkhorizontal-dark](/assets/images/controls/kt-panel/background-patterns_darkhorizontal-dark.png?v=639230908514237185){.dark .snapshot}
== slide
![background-patterns_dasheddownwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_dasheddownwarddiagonal-light.png?v=639230908520794317){ .light .snapshot} ![background-patterns_dasheddownwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_dasheddownwarddiagonal-dark.png?v=639230908520794317){.dark .snapshot}
== slide
![background-patterns_dashedupwarddiagonal-light](/assets/images/controls/kt-panel/background-patterns_dashedupwarddiagonal-light.png?v=639230908527369969){ .light .snapshot} ![background-patterns_dashedupwarddiagonal-dark](/assets/images/controls/kt-panel/background-patterns_dashedupwarddiagonal-dark.png?v=639230908527369969){.dark .snapshot}
== slide
![background-patterns_dashedhorizontal-light](/assets/images/controls/kt-panel/background-patterns_dashedhorizontal-light.png?v=639230908533826371){ .light .snapshot} ![background-patterns_dashedhorizontal-dark](/assets/images/controls/kt-panel/background-patterns_dashedhorizontal-dark.png?v=639230908533826371){.dark .snapshot}
== slide
![background-patterns_dashedvertical-light](/assets/images/controls/kt-panel/background-patterns_dashedvertical-light.png?v=639230908540372770){ .light .snapshot} ![background-patterns_dashedvertical-dark](/assets/images/controls/kt-panel/background-patterns_dashedvertical-dark.png?v=639230908540372770){.dark .snapshot}
== slide
![background-patterns_smallconfetti-light](/assets/images/controls/kt-panel/background-patterns_smallconfetti-light.png?v=639230908546886291){ .light .snapshot} ![background-patterns_smallconfetti-dark](/assets/images/controls/kt-panel/background-patterns_smallconfetti-dark.png?v=639230908546886291){.dark .snapshot}
== slide
![background-patterns_largeconfetti-light](/assets/images/controls/kt-panel/background-patterns_largeconfetti-light.png?v=639230908553373772){ .light .snapshot} ![background-patterns_largeconfetti-dark](/assets/images/controls/kt-panel/background-patterns_largeconfetti-dark.png?v=639230908553373772){.dark .snapshot}
== slide
![background-patterns_zigzag-light](/assets/images/controls/kt-panel/background-patterns_zigzag-light.png?v=639230908559841745){ .light .snapshot} ![background-patterns_zigzag-dark](/assets/images/controls/kt-panel/background-patterns_zigzag-dark.png?v=639230908559841745){.dark .snapshot}
== slide
![background-patterns_wave-light](/assets/images/controls/kt-panel/background-patterns_wave-light.png?v=639230908566353155){ .light .snapshot} ![background-patterns_wave-dark](/assets/images/controls/kt-panel/background-patterns_wave-dark.png?v=639230908566353155){.dark .snapshot}
== slide
![background-patterns_diagonalbrick-light](/assets/images/controls/kt-panel/background-patterns_diagonalbrick-light.png?v=639230908572837722){ .light .snapshot} ![background-patterns_diagonalbrick-dark](/assets/images/controls/kt-panel/background-patterns_diagonalbrick-dark.png?v=639230908572837722){.dark .snapshot}
== slide
![background-patterns_horizontalbrick-light](/assets/images/controls/kt-panel/background-patterns_horizontalbrick-light.png?v=639230908579279805){ .light .snapshot} ![background-patterns_horizontalbrick-dark](/assets/images/controls/kt-panel/background-patterns_horizontalbrick-dark.png?v=639230908579279805){.dark .snapshot}
== slide
![background-patterns_weave-light](/assets/images/controls/kt-panel/background-patterns_weave-light.png?v=639230908585719978){ .light .snapshot} ![background-patterns_weave-dark](/assets/images/controls/kt-panel/background-patterns_weave-dark.png?v=639230908585719978){.dark .snapshot}
== slide
![background-patterns_plaid-light](/assets/images/controls/kt-panel/background-patterns_plaid-light.png?v=639230908592232765){ .light .snapshot} ![background-patterns_plaid-dark](/assets/images/controls/kt-panel/background-patterns_plaid-dark.png?v=639230908592232765){.dark .snapshot}
== slide
![background-patterns_divot-light](/assets/images/controls/kt-panel/background-patterns_divot-light.png?v=639230908598688369){ .light .snapshot} ![background-patterns_divot-dark](/assets/images/controls/kt-panel/background-patterns_divot-dark.png?v=639230908598688369){.dark .snapshot}
== slide
![background-patterns_dottedgrid-light](/assets/images/controls/kt-panel/background-patterns_dottedgrid-light.png?v=639230908605191588){ .light .snapshot} ![background-patterns_dottedgrid-dark](/assets/images/controls/kt-panel/background-patterns_dottedgrid-dark.png?v=639230908605191588){.dark .snapshot}
== slide
![background-patterns_dotteddiamond-light](/assets/images/controls/kt-panel/background-patterns_dotteddiamond-light.png?v=639230908611719410){ .light .snapshot} ![background-patterns_dotteddiamond-dark](/assets/images/controls/kt-panel/background-patterns_dotteddiamond-dark.png?v=639230908611719410){.dark .snapshot}
== slide
![background-patterns_shingle-light](/assets/images/controls/kt-panel/background-patterns_shingle-light.png?v=639230908618220254){ .light .snapshot} ![background-patterns_shingle-dark](/assets/images/controls/kt-panel/background-patterns_shingle-dark.png?v=639230908618220254){.dark .snapshot}
== slide
![background-patterns_trellis-light](/assets/images/controls/kt-panel/background-patterns_trellis-light.png?v=639230908624691202){ .light .snapshot} ![background-patterns_trellis-dark](/assets/images/controls/kt-panel/background-patterns_trellis-dark.png?v=639230908624691202){.dark .snapshot}
== slide
![background-patterns_sphere-light](/assets/images/controls/kt-panel/background-patterns_sphere-light.png?v=639230908631192414){ .light .snapshot} ![background-patterns_sphere-dark](/assets/images/controls/kt-panel/background-patterns_sphere-dark.png?v=639230908631192414){.dark .snapshot}
== slide
![background-patterns_smallgrid-light](/assets/images/controls/kt-panel/background-patterns_smallgrid-light.png?v=639230908637671653){ .light .snapshot} ![background-patterns_smallgrid-dark](/assets/images/controls/kt-panel/background-patterns_smallgrid-dark.png?v=639230908637671653){.dark .snapshot}
== slide
![background-patterns_smallcheckerboard-light](/assets/images/controls/kt-panel/background-patterns_smallcheckerboard-light.png?v=639230908644195743){ .light .snapshot} ![background-patterns_smallcheckerboard-dark](/assets/images/controls/kt-panel/background-patterns_smallcheckerboard-dark.png?v=639230908644195743){.dark .snapshot}
== slide
![background-patterns_largecheckerboard-light](/assets/images/controls/kt-panel/background-patterns_largecheckerboard-light.png?v=639230908650672099){ .light .snapshot} ![background-patterns_largecheckerboard-dark](/assets/images/controls/kt-panel/background-patterns_largecheckerboard-dark.png?v=639230908650672099){.dark .snapshot}
== slide
![background-patterns_outlineddiamond-light](/assets/images/controls/kt-panel/background-patterns_outlineddiamond-light.png?v=639230908657138380){ .light .snapshot} ![background-patterns_outlineddiamond-dark](/assets/images/controls/kt-panel/background-patterns_outlineddiamond-dark.png?v=639230908657138380){.dark .snapshot}
== slide
![background-patterns_soliddiamond-light](/assets/images/controls/kt-panel/background-patterns_soliddiamond-light.png?v=639230908663570814){ .light .snapshot} ![background-patterns_soliddiamond-dark](/assets/images/controls/kt-panel/background-patterns_soliddiamond-dark.png?v=639230908663570814){.dark .snapshot}
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "Background" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:../utilities/kt-brush.md  | *Sets the panel's background color.* |
| ::: tag "Border" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:../utilities/kt-brush.md  | *Sets the panel's border color.* |
| ::: tag "BorderEdges" icon:wrench | ::: tag "Edges" color:#6B7C94 icon:check-check  | *Sets the Border edges.* |
| ::: tag "PatternColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:../utilities/kt-color.md  | *Sets the Pattern color.* |
| ::: tag "Foreground" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:../utilities/kt-color.md  | *Sets the Foreground.* |
| ::: tag "BorderStyle" icon:wrench | ::: tag "DashStyle" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.drawing2d.dashstyle?view=netframework-4.8  | *Sets the panel's border style.* |
| ::: tag "PatternStyle" icon:wrench | ::: tag "HatchStyle" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.drawing2d.hatchstyle?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Pattern style.* |
| ::: tag "BorderRadius" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the panel's border radius.* |
| ::: tag "BorderWidth" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the panel's border thickness.* |
| ::: tag "BackgroundMargin" icon:wrench | ::: tag "Padding" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.padding?view=netframework-4.8  | *Sets the panel's border Margin.* |
| ::: tag "BorderMargin" icon:wrench | ::: tag "Padding" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.padding?view=netframework-4.8  | *Sets the panel's border Margin.* |
