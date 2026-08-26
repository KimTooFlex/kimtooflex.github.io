---
type: concept
title: "KimTools / Controls / Panel"
description: "A modern, fully customizable panel control for WinForms. It is a container for grouping and styling related content."
source: "https://kimtoo.net/controls/kt-panel/"
path: /controls/kt-panel/
updated: 2026-08-26
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-26T13:53:02.864Z"
---
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
![kt-panel-light](/assets/images/screenshots/kt-panel/kt-panel-light.png?v=639233575360106184){ .light .snapshot} ![kt-panel-dark](/assets/images/screenshots/kt-panel/kt-panel-dark.png?v=639233575360106184){.dark .snapshot}
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
![gradient-background-light](/assets/images/screenshots/kt-panel/gradient-background-light.png?v=639233575381971907){ .light .snapshot} ![gradient-background-dark](/assets/images/screenshots/kt-panel/gradient-background-dark.png?v=639233575381971907){.dark .snapshot}

== tab "Light" icon:sun
![gradient-background-light](/assets/images/screenshots/kt-panel/gradient-background-light.png?v=639233575381967329){  .snapshot}

== tab "Dark" icon:moon
![gradient-background-dark](/assets/images/screenshots/kt-panel/gradient-background-dark.png?v=639233575381967329){ .snapshot}

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
![system-color-gradient-light](/assets/images/screenshots/kt-panel/system-color-gradient-light.png?v=639233575392800050){ .light .snapshot} ![system-color-gradient-dark](/assets/images/screenshots/kt-panel/system-color-gradient-dark.png?v=639233575392800050){.dark .snapshot}

== tab "Light" icon:sun
![system-color-gradient-light](/assets/images/screenshots/kt-panel/system-color-gradient-light.png?v=639233575392789999){  .snapshot}

== tab "Dark" icon:moon
![system-color-gradient-dark](/assets/images/screenshots/kt-panel/system-color-gradient-dark.png?v=639233575392789999){ .snapshot}

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
![opacity-gradient-light](/assets/images/screenshots/kt-panel/opacity-gradient-light.png?v=639233575403458401){ .light .snapshot} ![opacity-gradient-dark](/assets/images/screenshots/kt-panel/opacity-gradient-dark.png?v=639233575403458401){.dark .snapshot}

== tab "Light" icon:sun
![opacity-gradient-light](/assets/images/screenshots/kt-panel/opacity-gradient-light.png?v=639233575403451761){  .snapshot}

== tab "Dark" icon:moon
![opacity-gradient-dark](/assets/images/screenshots/kt-panel/opacity-gradient-dark.png?v=639233575403451761){ .snapshot}

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
![solid-background-light](/assets/images/screenshots/kt-panel/solid-background-light.png?v=639233575414129167){ .light .snapshot} ![solid-background-dark](/assets/images/screenshots/kt-panel/solid-background-dark.png?v=639233575414129167){.dark .snapshot}

== tab "Light" icon:sun
![solid-background-light](/assets/images/screenshots/kt-panel/solid-background-light.png?v=639233575414114136){  .snapshot}

== tab "Dark" icon:moon
![solid-background-dark](/assets/images/screenshots/kt-panel/solid-background-dark.png?v=639233575414114136){ .snapshot}

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
![background-patterns-light](/assets/images/screenshots/kt-panel/background-patterns-light.png?v=639233575821366838){ .light .snapshot} ![background-patterns-dark](/assets/images/screenshots/kt-panel/background-patterns-dark.png?v=639233575821366838){.dark .snapshot}

== tab "Light" icon:sun
![background-patterns-light](/assets/images/screenshots/kt-panel/background-patterns-light.png?v=639233575821357562){  .snapshot}

== tab "Dark" icon:moon
![background-patterns-dark](/assets/images/screenshots/kt-panel/background-patterns-dark.png?v=639233575821357562){ .snapshot}

:::
:::

::: hero layout:slider
== slide
![background-patterns_horizontal-light](/assets/images/screenshots/kt-panel/background-patterns_horizontal-light.png?v=639233575432317612){ .light .snapshot} ![background-patterns_horizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_horizontal-dark.png?v=639233575432317612){.dark .snapshot}
== slide
![background-patterns_min-light](/assets/images/screenshots/kt-panel/background-patterns_min-light.png?v=639233575439324096){ .light .snapshot} ![background-patterns_min-dark](/assets/images/screenshots/kt-panel/background-patterns_min-dark.png?v=639233575439324096){.dark .snapshot}
== slide
![background-patterns_vertical-light](/assets/images/screenshots/kt-panel/background-patterns_vertical-light.png?v=639233575446099869){ .light .snapshot} ![background-patterns_vertical-dark](/assets/images/screenshots/kt-panel/background-patterns_vertical-dark.png?v=639233575446099869){.dark .snapshot}
== slide
![background-patterns_forwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_forwarddiagonal-light.png?v=639233575452906334){ .light .snapshot} ![background-patterns_forwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_forwarddiagonal-dark.png?v=639233575452906334){.dark .snapshot}
== slide
![background-patterns_backwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_backwarddiagonal-light.png?v=639233575459939948){ .light .snapshot} ![background-patterns_backwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_backwarddiagonal-dark.png?v=639233575459939948){.dark .snapshot}
== slide
![background-patterns_cross-light](/assets/images/screenshots/kt-panel/background-patterns_cross-light.png?v=639233575466917060){ .light .snapshot} ![background-patterns_cross-dark](/assets/images/screenshots/kt-panel/background-patterns_cross-dark.png?v=639233575466917060){.dark .snapshot}
== slide
![background-patterns_largegrid-light](/assets/images/screenshots/kt-panel/background-patterns_largegrid-light.png?v=639233575473997525){ .light .snapshot} ![background-patterns_largegrid-dark](/assets/images/screenshots/kt-panel/background-patterns_largegrid-dark.png?v=639233575473997525){.dark .snapshot}
== slide
![background-patterns_max-light](/assets/images/screenshots/kt-panel/background-patterns_max-light.png?v=639233575480757436){ .light .snapshot} ![background-patterns_max-dark](/assets/images/screenshots/kt-panel/background-patterns_max-dark.png?v=639233575480757436){.dark .snapshot}
== slide
![background-patterns_diagonalcross-light](/assets/images/screenshots/kt-panel/background-patterns_diagonalcross-light.png?v=639233575487718170){ .light .snapshot} ![background-patterns_diagonalcross-dark](/assets/images/screenshots/kt-panel/background-patterns_diagonalcross-dark.png?v=639233575487718170){.dark .snapshot}
== slide
![background-patterns_percent05-light](/assets/images/screenshots/kt-panel/background-patterns_percent05-light.png?v=639233575494698098){ .light .snapshot} ![background-patterns_percent05-dark](/assets/images/screenshots/kt-panel/background-patterns_percent05-dark.png?v=639233575494698098){.dark .snapshot}
== slide
![background-patterns_percent10-light](/assets/images/screenshots/kt-panel/background-patterns_percent10-light.png?v=639233575501557817){ .light .snapshot} ![background-patterns_percent10-dark](/assets/images/screenshots/kt-panel/background-patterns_percent10-dark.png?v=639233575501557817){.dark .snapshot}
== slide
![background-patterns_percent20-light](/assets/images/screenshots/kt-panel/background-patterns_percent20-light.png?v=639233575508468666){ .light .snapshot} ![background-patterns_percent20-dark](/assets/images/screenshots/kt-panel/background-patterns_percent20-dark.png?v=639233575508468666){.dark .snapshot}
== slide
![background-patterns_percent25-light](/assets/images/screenshots/kt-panel/background-patterns_percent25-light.png?v=639233575515209058){ .light .snapshot} ![background-patterns_percent25-dark](/assets/images/screenshots/kt-panel/background-patterns_percent25-dark.png?v=639233575515209058){.dark .snapshot}
== slide
![background-patterns_percent30-light](/assets/images/screenshots/kt-panel/background-patterns_percent30-light.png?v=639233575522061808){ .light .snapshot} ![background-patterns_percent30-dark](/assets/images/screenshots/kt-panel/background-patterns_percent30-dark.png?v=639233575522061808){.dark .snapshot}
== slide
![background-patterns_percent40-light](/assets/images/screenshots/kt-panel/background-patterns_percent40-light.png?v=639233575528933009){ .light .snapshot} ![background-patterns_percent40-dark](/assets/images/screenshots/kt-panel/background-patterns_percent40-dark.png?v=639233575528933009){.dark .snapshot}
== slide
![background-patterns_percent50-light](/assets/images/screenshots/kt-panel/background-patterns_percent50-light.png?v=639233575535835829){ .light .snapshot} ![background-patterns_percent50-dark](/assets/images/screenshots/kt-panel/background-patterns_percent50-dark.png?v=639233575535835829){.dark .snapshot}
== slide
![background-patterns_percent60-light](/assets/images/screenshots/kt-panel/background-patterns_percent60-light.png?v=639233575542705769){ .light .snapshot} ![background-patterns_percent60-dark](/assets/images/screenshots/kt-panel/background-patterns_percent60-dark.png?v=639233575542705769){.dark .snapshot}
== slide
![background-patterns_percent70-light](/assets/images/screenshots/kt-panel/background-patterns_percent70-light.png?v=639233575549620886){ .light .snapshot} ![background-patterns_percent70-dark](/assets/images/screenshots/kt-panel/background-patterns_percent70-dark.png?v=639233575549620886){.dark .snapshot}
== slide
![background-patterns_percent75-light](/assets/images/screenshots/kt-panel/background-patterns_percent75-light.png?v=639233575556588761){ .light .snapshot} ![background-patterns_percent75-dark](/assets/images/screenshots/kt-panel/background-patterns_percent75-dark.png?v=639233575556588761){.dark .snapshot}
== slide
![background-patterns_percent80-light](/assets/images/screenshots/kt-panel/background-patterns_percent80-light.png?v=639233575563635221){ .light .snapshot} ![background-patterns_percent80-dark](/assets/images/screenshots/kt-panel/background-patterns_percent80-dark.png?v=639233575563635221){.dark .snapshot}
== slide
![background-patterns_percent90-light](/assets/images/screenshots/kt-panel/background-patterns_percent90-light.png?v=639233575570632954){ .light .snapshot} ![background-patterns_percent90-dark](/assets/images/screenshots/kt-panel/background-patterns_percent90-dark.png?v=639233575570632954){.dark .snapshot}
== slide
![background-patterns_lightdownwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_lightdownwarddiagonal-light.png?v=639233575577559010){ .light .snapshot} ![background-patterns_lightdownwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_lightdownwarddiagonal-dark.png?v=639233575577559010){.dark .snapshot}
== slide
![background-patterns_lightupwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_lightupwarddiagonal-light.png?v=639233575584398500){ .light .snapshot} ![background-patterns_lightupwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_lightupwarddiagonal-dark.png?v=639233575584398500){.dark .snapshot}
== slide
![background-patterns_darkdownwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_darkdownwarddiagonal-light.png?v=639233575591198592){ .light .snapshot} ![background-patterns_darkdownwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_darkdownwarddiagonal-dark.png?v=639233575591198592){.dark .snapshot}
== slide
![background-patterns_darkupwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_darkupwarddiagonal-light.png?v=639233575598434350){ .light .snapshot} ![background-patterns_darkupwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_darkupwarddiagonal-dark.png?v=639233575598434350){.dark .snapshot}
== slide
![background-patterns_widedownwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_widedownwarddiagonal-light.png?v=639233575605290195){ .light .snapshot} ![background-patterns_widedownwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_widedownwarddiagonal-dark.png?v=639233575605290195){.dark .snapshot}
== slide
![background-patterns_wideupwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_wideupwarddiagonal-light.png?v=639233575612136618){ .light .snapshot} ![background-patterns_wideupwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_wideupwarddiagonal-dark.png?v=639233575612136618){.dark .snapshot}
== slide
![background-patterns_lightvertical-light](/assets/images/screenshots/kt-panel/background-patterns_lightvertical-light.png?v=639233575619052956){ .light .snapshot} ![background-patterns_lightvertical-dark](/assets/images/screenshots/kt-panel/background-patterns_lightvertical-dark.png?v=639233575619052956){.dark .snapshot}
== slide
![background-patterns_lighthorizontal-light](/assets/images/screenshots/kt-panel/background-patterns_lighthorizontal-light.png?v=639233575625810244){ .light .snapshot} ![background-patterns_lighthorizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_lighthorizontal-dark.png?v=639233575625810244){.dark .snapshot}
== slide
![background-patterns_narrowvertical-light](/assets/images/screenshots/kt-panel/background-patterns_narrowvertical-light.png?v=639233575632677836){ .light .snapshot} ![background-patterns_narrowvertical-dark](/assets/images/screenshots/kt-panel/background-patterns_narrowvertical-dark.png?v=639233575632677836){.dark .snapshot}
== slide
![background-patterns_narrowhorizontal-light](/assets/images/screenshots/kt-panel/background-patterns_narrowhorizontal-light.png?v=639233575639543069){ .light .snapshot} ![background-patterns_narrowhorizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_narrowhorizontal-dark.png?v=639233575639543069){.dark .snapshot}
== slide
![background-patterns_darkvertical-light](/assets/images/screenshots/kt-panel/background-patterns_darkvertical-light.png?v=639233575646352655){ .light .snapshot} ![background-patterns_darkvertical-dark](/assets/images/screenshots/kt-panel/background-patterns_darkvertical-dark.png?v=639233575646352655){.dark .snapshot}
== slide
![background-patterns_darkhorizontal-light](/assets/images/screenshots/kt-panel/background-patterns_darkhorizontal-light.png?v=639233575653197615){ .light .snapshot} ![background-patterns_darkhorizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_darkhorizontal-dark.png?v=639233575653197615){.dark .snapshot}
== slide
![background-patterns_dasheddownwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_dasheddownwarddiagonal-light.png?v=639233575660041608){ .light .snapshot} ![background-patterns_dasheddownwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_dasheddownwarddiagonal-dark.png?v=639233575660041608){.dark .snapshot}
== slide
![background-patterns_dashedupwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_dashedupwarddiagonal-light.png?v=639233575666912925){ .light .snapshot} ![background-patterns_dashedupwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_dashedupwarddiagonal-dark.png?v=639233575666912925){.dark .snapshot}
== slide
![background-patterns_dashedhorizontal-light](/assets/images/screenshots/kt-panel/background-patterns_dashedhorizontal-light.png?v=639233575673860871){ .light .snapshot} ![background-patterns_dashedhorizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_dashedhorizontal-dark.png?v=639233575673860871){.dark .snapshot}
== slide
![background-patterns_dashedvertical-light](/assets/images/screenshots/kt-panel/background-patterns_dashedvertical-light.png?v=639233575680720775){ .light .snapshot} ![background-patterns_dashedvertical-dark](/assets/images/screenshots/kt-panel/background-patterns_dashedvertical-dark.png?v=639233575680720775){.dark .snapshot}
== slide
![background-patterns_smallconfetti-light](/assets/images/screenshots/kt-panel/background-patterns_smallconfetti-light.png?v=639233575687626693){ .light .snapshot} ![background-patterns_smallconfetti-dark](/assets/images/screenshots/kt-panel/background-patterns_smallconfetti-dark.png?v=639233575687626693){.dark .snapshot}
== slide
![background-patterns_largeconfetti-light](/assets/images/screenshots/kt-panel/background-patterns_largeconfetti-light.png?v=639233575694408234){ .light .snapshot} ![background-patterns_largeconfetti-dark](/assets/images/screenshots/kt-panel/background-patterns_largeconfetti-dark.png?v=639233575694408234){.dark .snapshot}
== slide
![background-patterns_zigzag-light](/assets/images/screenshots/kt-panel/background-patterns_zigzag-light.png?v=639233575701208549){ .light .snapshot} ![background-patterns_zigzag-dark](/assets/images/screenshots/kt-panel/background-patterns_zigzag-dark.png?v=639233575701208549){.dark .snapshot}
== slide
![background-patterns_wave-light](/assets/images/screenshots/kt-panel/background-patterns_wave-light.png?v=639233575707993379){ .light .snapshot} ![background-patterns_wave-dark](/assets/images/screenshots/kt-panel/background-patterns_wave-dark.png?v=639233575707993379){.dark .snapshot}
== slide
![background-patterns_diagonalbrick-light](/assets/images/screenshots/kt-panel/background-patterns_diagonalbrick-light.png?v=639233575714866677){ .light .snapshot} ![background-patterns_diagonalbrick-dark](/assets/images/screenshots/kt-panel/background-patterns_diagonalbrick-dark.png?v=639233575714866677){.dark .snapshot}
== slide
![background-patterns_horizontalbrick-light](/assets/images/screenshots/kt-panel/background-patterns_horizontalbrick-light.png?v=639233575721642679){ .light .snapshot} ![background-patterns_horizontalbrick-dark](/assets/images/screenshots/kt-panel/background-patterns_horizontalbrick-dark.png?v=639233575721642679){.dark .snapshot}
== slide
![background-patterns_weave-light](/assets/images/screenshots/kt-panel/background-patterns_weave-light.png?v=639233575728492455){ .light .snapshot} ![background-patterns_weave-dark](/assets/images/screenshots/kt-panel/background-patterns_weave-dark.png?v=639233575728492455){.dark .snapshot}
== slide
![background-patterns_plaid-light](/assets/images/screenshots/kt-panel/background-patterns_plaid-light.png?v=639233575735290362){ .light .snapshot} ![background-patterns_plaid-dark](/assets/images/screenshots/kt-panel/background-patterns_plaid-dark.png?v=639233575735290362){.dark .snapshot}
== slide
![background-patterns_divot-light](/assets/images/screenshots/kt-panel/background-patterns_divot-light.png?v=639233575742188201){ .light .snapshot} ![background-patterns_divot-dark](/assets/images/screenshots/kt-panel/background-patterns_divot-dark.png?v=639233575742188201){.dark .snapshot}
== slide
![background-patterns_dottedgrid-light](/assets/images/screenshots/kt-panel/background-patterns_dottedgrid-light.png?v=639233575749160596){ .light .snapshot} ![background-patterns_dottedgrid-dark](/assets/images/screenshots/kt-panel/background-patterns_dottedgrid-dark.png?v=639233575749160596){.dark .snapshot}
== slide
![background-patterns_dotteddiamond-light](/assets/images/screenshots/kt-panel/background-patterns_dotteddiamond-light.png?v=639233575756009639){ .light .snapshot} ![background-patterns_dotteddiamond-dark](/assets/images/screenshots/kt-panel/background-patterns_dotteddiamond-dark.png?v=639233575756009639){.dark .snapshot}
== slide
![background-patterns_shingle-light](/assets/images/screenshots/kt-panel/background-patterns_shingle-light.png?v=639233575762781909){ .light .snapshot} ![background-patterns_shingle-dark](/assets/images/screenshots/kt-panel/background-patterns_shingle-dark.png?v=639233575762781909){.dark .snapshot}
== slide
![background-patterns_trellis-light](/assets/images/screenshots/kt-panel/background-patterns_trellis-light.png?v=639233575769771248){ .light .snapshot} ![background-patterns_trellis-dark](/assets/images/screenshots/kt-panel/background-patterns_trellis-dark.png?v=639233575769771248){.dark .snapshot}
== slide
![background-patterns_sphere-light](/assets/images/screenshots/kt-panel/background-patterns_sphere-light.png?v=639233575776576315){ .light .snapshot} ![background-patterns_sphere-dark](/assets/images/screenshots/kt-panel/background-patterns_sphere-dark.png?v=639233575776576315){.dark .snapshot}
== slide
![background-patterns_smallgrid-light](/assets/images/screenshots/kt-panel/background-patterns_smallgrid-light.png?v=639233575783470236){ .light .snapshot} ![background-patterns_smallgrid-dark](/assets/images/screenshots/kt-panel/background-patterns_smallgrid-dark.png?v=639233575783470236){.dark .snapshot}
== slide
![background-patterns_smallcheckerboard-light](/assets/images/screenshots/kt-panel/background-patterns_smallcheckerboard-light.png?v=639233575790317207){ .light .snapshot} ![background-patterns_smallcheckerboard-dark](/assets/images/screenshots/kt-panel/background-patterns_smallcheckerboard-dark.png?v=639233575790317207){.dark .snapshot}
== slide
![background-patterns_largecheckerboard-light](/assets/images/screenshots/kt-panel/background-patterns_largecheckerboard-light.png?v=639233575797231189){ .light .snapshot} ![background-patterns_largecheckerboard-dark](/assets/images/screenshots/kt-panel/background-patterns_largecheckerboard-dark.png?v=639233575797231189){.dark .snapshot}
== slide
![background-patterns_outlineddiamond-light](/assets/images/screenshots/kt-panel/background-patterns_outlineddiamond-light.png?v=639233575804014332){ .light .snapshot} ![background-patterns_outlineddiamond-dark](/assets/images/screenshots/kt-panel/background-patterns_outlineddiamond-dark.png?v=639233575804014332){.dark .snapshot}
== slide
![background-patterns_soliddiamond-light](/assets/images/screenshots/kt-panel/background-patterns_soliddiamond-light.png?v=639233575811001577){ .light .snapshot} ![background-patterns_soliddiamond-dark](/assets/images/screenshots/kt-panel/background-patterns_soliddiamond-dark.png?v=639233575811001577){.dark .snapshot}
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
