---
type: concept
title: "KimTools / Controls / Panel"
description: "A modern, fully customizable panel control for WinForms. It is a container for grouping and styling related content."
source: "https://kimtoo.net/controls/kt-panel/"
path: /controls/kt-panel/
updated: 2026-08-29
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-29T11:13:49.706Z"
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
![kt-panel-light](/assets/images/screenshots/kt-panel/kt-panel-light.png?v=639234522961403176){ .light .snapshot} ![kt-panel-dark](/assets/images/screenshots/kt-panel/kt-panel-dark.png?v=639234522961403176){.dark .snapshot}
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
![gradient-background-light](/assets/images/screenshots/kt-panel/gradient-background-light.png?v=639234522983408055){ .light .snapshot} ![gradient-background-dark](/assets/images/screenshots/kt-panel/gradient-background-dark.png?v=639234522983408055){.dark .snapshot}

== tab "Light" icon:sun
![gradient-background-light](/assets/images/screenshots/kt-panel/gradient-background-light.png?v=639234522983408055){  .snapshot}

== tab "Dark" icon:moon
![gradient-background-dark](/assets/images/screenshots/kt-panel/gradient-background-dark.png?v=639234522983408055){ .snapshot}

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
![system-color-gradient-light](/assets/images/screenshots/kt-panel/system-color-gradient-light.png?v=639234522994089789){ .light .snapshot} ![system-color-gradient-dark](/assets/images/screenshots/kt-panel/system-color-gradient-dark.png?v=639234522994089789){.dark .snapshot}

== tab "Light" icon:sun
![system-color-gradient-light](/assets/images/screenshots/kt-panel/system-color-gradient-light.png?v=639234522994089789){  .snapshot}

== tab "Dark" icon:moon
![system-color-gradient-dark](/assets/images/screenshots/kt-panel/system-color-gradient-dark.png?v=639234522994089789){ .snapshot}

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
![opacity-gradient-light](/assets/images/screenshots/kt-panel/opacity-gradient-light.png?v=639234523005105785){ .light .snapshot} ![opacity-gradient-dark](/assets/images/screenshots/kt-panel/opacity-gradient-dark.png?v=639234523005105785){.dark .snapshot}

== tab "Light" icon:sun
![opacity-gradient-light](/assets/images/screenshots/kt-panel/opacity-gradient-light.png?v=639234523005105785){  .snapshot}

== tab "Dark" icon:moon
![opacity-gradient-dark](/assets/images/screenshots/kt-panel/opacity-gradient-dark.png?v=639234523005105785){ .snapshot}

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
![solid-background-light](/assets/images/screenshots/kt-panel/solid-background-light.png?v=639234523015925552){ .light .snapshot} ![solid-background-dark](/assets/images/screenshots/kt-panel/solid-background-dark.png?v=639234523015925552){.dark .snapshot}

== tab "Light" icon:sun
![solid-background-light](/assets/images/screenshots/kt-panel/solid-background-light.png?v=639234523015925552){  .snapshot}

== tab "Dark" icon:moon
![solid-background-dark](/assets/images/screenshots/kt-panel/solid-background-dark.png?v=639234523015925552){ .snapshot}

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
![background-patterns-light](/assets/images/screenshots/kt-panel/background-patterns-light.png?v=639234523422590968){ .light .snapshot} ![background-patterns-dark](/assets/images/screenshots/kt-panel/background-patterns-dark.png?v=639234523422590968){.dark .snapshot}

== tab "Light" icon:sun
![background-patterns-light](/assets/images/screenshots/kt-panel/background-patterns-light.png?v=639234523422590968){  .snapshot}

== tab "Dark" icon:moon
![background-patterns-dark](/assets/images/screenshots/kt-panel/background-patterns-dark.png?v=639234523422590968){ .snapshot}

:::
:::

::: hero layout:slider
== slide
![background-patterns_horizontal-light](/assets/images/screenshots/kt-panel/background-patterns_horizontal-light.png?v=639234523034455799){ .light .snapshot} ![background-patterns_horizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_horizontal-dark.png?v=639234523034455799){.dark .snapshot}
== slide
![background-patterns_min-light](/assets/images/screenshots/kt-panel/background-patterns_min-light.png?v=639234523041356860){ .light .snapshot} ![background-patterns_min-dark](/assets/images/screenshots/kt-panel/background-patterns_min-dark.png?v=639234523041356860){.dark .snapshot}
== slide
![background-patterns_vertical-light](/assets/images/screenshots/kt-panel/background-patterns_vertical-light.png?v=639234523048220866){ .light .snapshot} ![background-patterns_vertical-dark](/assets/images/screenshots/kt-panel/background-patterns_vertical-dark.png?v=639234523048220866){.dark .snapshot}
== slide
![background-patterns_forwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_forwarddiagonal-light.png?v=639234523055055661){ .light .snapshot} ![background-patterns_forwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_forwarddiagonal-dark.png?v=639234523055055661){.dark .snapshot}
== slide
![background-patterns_backwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_backwarddiagonal-light.png?v=639234523061912539){ .light .snapshot} ![background-patterns_backwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_backwarddiagonal-dark.png?v=639234523061912539){.dark .snapshot}
== slide
![background-patterns_cross-light](/assets/images/screenshots/kt-panel/background-patterns_cross-light.png?v=639234523068757965){ .light .snapshot} ![background-patterns_cross-dark](/assets/images/screenshots/kt-panel/background-patterns_cross-dark.png?v=639234523068757965){.dark .snapshot}
== slide
![background-patterns_largegrid-light](/assets/images/screenshots/kt-panel/background-patterns_largegrid-light.png?v=639234523075558243){ .light .snapshot} ![background-patterns_largegrid-dark](/assets/images/screenshots/kt-panel/background-patterns_largegrid-dark.png?v=639234523075558243){.dark .snapshot}
== slide
![background-patterns_max-light](/assets/images/screenshots/kt-panel/background-patterns_max-light.png?v=639234523082437662){ .light .snapshot} ![background-patterns_max-dark](/assets/images/screenshots/kt-panel/background-patterns_max-dark.png?v=639234523082437662){.dark .snapshot}
== slide
![background-patterns_diagonalcross-light](/assets/images/screenshots/kt-panel/background-patterns_diagonalcross-light.png?v=639234523089254257){ .light .snapshot} ![background-patterns_diagonalcross-dark](/assets/images/screenshots/kt-panel/background-patterns_diagonalcross-dark.png?v=639234523089254257){.dark .snapshot}
== slide
![background-patterns_percent05-light](/assets/images/screenshots/kt-panel/background-patterns_percent05-light.png?v=639234523096090375){ .light .snapshot} ![background-patterns_percent05-dark](/assets/images/screenshots/kt-panel/background-patterns_percent05-dark.png?v=639234523096090375){.dark .snapshot}
== slide
![background-patterns_percent10-light](/assets/images/screenshots/kt-panel/background-patterns_percent10-light.png?v=639234523103026763){ .light .snapshot} ![background-patterns_percent10-dark](/assets/images/screenshots/kt-panel/background-patterns_percent10-dark.png?v=639234523103026763){.dark .snapshot}
== slide
![background-patterns_percent20-light](/assets/images/screenshots/kt-panel/background-patterns_percent20-light.png?v=639234523109840081){ .light .snapshot} ![background-patterns_percent20-dark](/assets/images/screenshots/kt-panel/background-patterns_percent20-dark.png?v=639234523109840081){.dark .snapshot}
== slide
![background-patterns_percent25-light](/assets/images/screenshots/kt-panel/background-patterns_percent25-light.png?v=639234523116715922){ .light .snapshot} ![background-patterns_percent25-dark](/assets/images/screenshots/kt-panel/background-patterns_percent25-dark.png?v=639234523116715922){.dark .snapshot}
== slide
![background-patterns_percent30-light](/assets/images/screenshots/kt-panel/background-patterns_percent30-light.png?v=639234523123588480){ .light .snapshot} ![background-patterns_percent30-dark](/assets/images/screenshots/kt-panel/background-patterns_percent30-dark.png?v=639234523123588480){.dark .snapshot}
== slide
![background-patterns_percent40-light](/assets/images/screenshots/kt-panel/background-patterns_percent40-light.png?v=639234523130437289){ .light .snapshot} ![background-patterns_percent40-dark](/assets/images/screenshots/kt-panel/background-patterns_percent40-dark.png?v=639234523130437289){.dark .snapshot}
== slide
![background-patterns_percent50-light](/assets/images/screenshots/kt-panel/background-patterns_percent50-light.png?v=639234523137224762){ .light .snapshot} ![background-patterns_percent50-dark](/assets/images/screenshots/kt-panel/background-patterns_percent50-dark.png?v=639234523137224762){.dark .snapshot}
== slide
![background-patterns_percent60-light](/assets/images/screenshots/kt-panel/background-patterns_percent60-light.png?v=639234523144161055){ .light .snapshot} ![background-patterns_percent60-dark](/assets/images/screenshots/kt-panel/background-patterns_percent60-dark.png?v=639234523144161055){.dark .snapshot}
== slide
![background-patterns_percent70-light](/assets/images/screenshots/kt-panel/background-patterns_percent70-light.png?v=639234523151030063){ .light .snapshot} ![background-patterns_percent70-dark](/assets/images/screenshots/kt-panel/background-patterns_percent70-dark.png?v=639234523151030063){.dark .snapshot}
== slide
![background-patterns_percent75-light](/assets/images/screenshots/kt-panel/background-patterns_percent75-light.png?v=639234523157815554){ .light .snapshot} ![background-patterns_percent75-dark](/assets/images/screenshots/kt-panel/background-patterns_percent75-dark.png?v=639234523157815554){.dark .snapshot}
== slide
![background-patterns_percent80-light](/assets/images/screenshots/kt-panel/background-patterns_percent80-light.png?v=639234523164646576){ .light .snapshot} ![background-patterns_percent80-dark](/assets/images/screenshots/kt-panel/background-patterns_percent80-dark.png?v=639234523164646576){.dark .snapshot}
== slide
![background-patterns_percent90-light](/assets/images/screenshots/kt-panel/background-patterns_percent90-light.png?v=639234523171455844){ .light .snapshot} ![background-patterns_percent90-dark](/assets/images/screenshots/kt-panel/background-patterns_percent90-dark.png?v=639234523171455844){.dark .snapshot}
== slide
![background-patterns_lightdownwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_lightdownwarddiagonal-light.png?v=639234523178288404){ .light .snapshot} ![background-patterns_lightdownwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_lightdownwarddiagonal-dark.png?v=639234523178288404){.dark .snapshot}
== slide
![background-patterns_lightupwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_lightupwarddiagonal-light.png?v=639234523185267501){ .light .snapshot} ![background-patterns_lightupwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_lightupwarddiagonal-dark.png?v=639234523185267501){.dark .snapshot}
== slide
![background-patterns_darkdownwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_darkdownwarddiagonal-light.png?v=639234523192054003){ .light .snapshot} ![background-patterns_darkdownwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_darkdownwarddiagonal-dark.png?v=639234523192054003){.dark .snapshot}
== slide
![background-patterns_darkupwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_darkupwarddiagonal-light.png?v=639234523199007093){ .light .snapshot} ![background-patterns_darkupwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_darkupwarddiagonal-dark.png?v=639234523199007093){.dark .snapshot}
== slide
![background-patterns_widedownwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_widedownwarddiagonal-light.png?v=639234523205809269){ .light .snapshot} ![background-patterns_widedownwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_widedownwarddiagonal-dark.png?v=639234523205809269){.dark .snapshot}
== slide
![background-patterns_wideupwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_wideupwarddiagonal-light.png?v=639234523212648503){ .light .snapshot} ![background-patterns_wideupwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_wideupwarddiagonal-dark.png?v=639234523212648503){.dark .snapshot}
== slide
![background-patterns_lightvertical-light](/assets/images/screenshots/kt-panel/background-patterns_lightvertical-light.png?v=639234523219552592){ .light .snapshot} ![background-patterns_lightvertical-dark](/assets/images/screenshots/kt-panel/background-patterns_lightvertical-dark.png?v=639234523219552592){.dark .snapshot}
== slide
![background-patterns_lighthorizontal-light](/assets/images/screenshots/kt-panel/background-patterns_lighthorizontal-light.png?v=639234523226515625){ .light .snapshot} ![background-patterns_lighthorizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_lighthorizontal-dark.png?v=639234523226515625){.dark .snapshot}
== slide
![background-patterns_narrowvertical-light](/assets/images/screenshots/kt-panel/background-patterns_narrowvertical-light.png?v=639234523233368951){ .light .snapshot} ![background-patterns_narrowvertical-dark](/assets/images/screenshots/kt-panel/background-patterns_narrowvertical-dark.png?v=639234523233368951){.dark .snapshot}
== slide
![background-patterns_narrowhorizontal-light](/assets/images/screenshots/kt-panel/background-patterns_narrowhorizontal-light.png?v=639234523240221699){ .light .snapshot} ![background-patterns_narrowhorizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_narrowhorizontal-dark.png?v=639234523240221699){.dark .snapshot}
== slide
![background-patterns_darkvertical-light](/assets/images/screenshots/kt-panel/background-patterns_darkvertical-light.png?v=639234523246987868){ .light .snapshot} ![background-patterns_darkvertical-dark](/assets/images/screenshots/kt-panel/background-patterns_darkvertical-dark.png?v=639234523246987868){.dark .snapshot}
== slide
![background-patterns_darkhorizontal-light](/assets/images/screenshots/kt-panel/background-patterns_darkhorizontal-light.png?v=639234523253868042){ .light .snapshot} ![background-patterns_darkhorizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_darkhorizontal-dark.png?v=639234523253868042){.dark .snapshot}
== slide
![background-patterns_dasheddownwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_dasheddownwarddiagonal-light.png?v=639234523260689404){ .light .snapshot} ![background-patterns_dasheddownwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_dasheddownwarddiagonal-dark.png?v=639234523260689404){.dark .snapshot}
== slide
![background-patterns_dashedupwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_dashedupwarddiagonal-light.png?v=639234523267606896){ .light .snapshot} ![background-patterns_dashedupwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_dashedupwarddiagonal-dark.png?v=639234523267606896){.dark .snapshot}
== slide
![background-patterns_dashedhorizontal-light](/assets/images/screenshots/kt-panel/background-patterns_dashedhorizontal-light.png?v=639234523274435909){ .light .snapshot} ![background-patterns_dashedhorizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_dashedhorizontal-dark.png?v=639234523274435909){.dark .snapshot}
== slide
![background-patterns_dashedvertical-light](/assets/images/screenshots/kt-panel/background-patterns_dashedvertical-light.png?v=639234523281307194){ .light .snapshot} ![background-patterns_dashedvertical-dark](/assets/images/screenshots/kt-panel/background-patterns_dashedvertical-dark.png?v=639234523281307194){.dark .snapshot}
== slide
![background-patterns_smallconfetti-light](/assets/images/screenshots/kt-panel/background-patterns_smallconfetti-light.png?v=639234523288133092){ .light .snapshot} ![background-patterns_smallconfetti-dark](/assets/images/screenshots/kt-panel/background-patterns_smallconfetti-dark.png?v=639234523288133092){.dark .snapshot}
== slide
![background-patterns_largeconfetti-light](/assets/images/screenshots/kt-panel/background-patterns_largeconfetti-light.png?v=639234523294967530){ .light .snapshot} ![background-patterns_largeconfetti-dark](/assets/images/screenshots/kt-panel/background-patterns_largeconfetti-dark.png?v=639234523294967530){.dark .snapshot}
== slide
![background-patterns_zigzag-light](/assets/images/screenshots/kt-panel/background-patterns_zigzag-light.png?v=639234523301865995){ .light .snapshot} ![background-patterns_zigzag-dark](/assets/images/screenshots/kt-panel/background-patterns_zigzag-dark.png?v=639234523301865995){.dark .snapshot}
== slide
![background-patterns_wave-light](/assets/images/screenshots/kt-panel/background-patterns_wave-light.png?v=639234523308830153){ .light .snapshot} ![background-patterns_wave-dark](/assets/images/screenshots/kt-panel/background-patterns_wave-dark.png?v=639234523308830153){.dark .snapshot}
== slide
![background-patterns_diagonalbrick-light](/assets/images/screenshots/kt-panel/background-patterns_diagonalbrick-light.png?v=639234523315691069){ .light .snapshot} ![background-patterns_diagonalbrick-dark](/assets/images/screenshots/kt-panel/background-patterns_diagonalbrick-dark.png?v=639234523315691069){.dark .snapshot}
== slide
![background-patterns_horizontalbrick-light](/assets/images/screenshots/kt-panel/background-patterns_horizontalbrick-light.png?v=639234523322587657){ .light .snapshot} ![background-patterns_horizontalbrick-dark](/assets/images/screenshots/kt-panel/background-patterns_horizontalbrick-dark.png?v=639234523322587657){.dark .snapshot}
== slide
![background-patterns_weave-light](/assets/images/screenshots/kt-panel/background-patterns_weave-light.png?v=639234523329406997){ .light .snapshot} ![background-patterns_weave-dark](/assets/images/screenshots/kt-panel/background-patterns_weave-dark.png?v=639234523329406997){.dark .snapshot}
== slide
![background-patterns_plaid-light](/assets/images/screenshots/kt-panel/background-patterns_plaid-light.png?v=639234523336212337){ .light .snapshot} ![background-patterns_plaid-dark](/assets/images/screenshots/kt-panel/background-patterns_plaid-dark.png?v=639234523336212337){.dark .snapshot}
== slide
![background-patterns_divot-light](/assets/images/screenshots/kt-panel/background-patterns_divot-light.png?v=639234523343074311){ .light .snapshot} ![background-patterns_divot-dark](/assets/images/screenshots/kt-panel/background-patterns_divot-dark.png?v=639234523343074311){.dark .snapshot}
== slide
![background-patterns_dottedgrid-light](/assets/images/screenshots/kt-panel/background-patterns_dottedgrid-light.png?v=639234523349945255){ .light .snapshot} ![background-patterns_dottedgrid-dark](/assets/images/screenshots/kt-panel/background-patterns_dottedgrid-dark.png?v=639234523349945255){.dark .snapshot}
== slide
![background-patterns_dotteddiamond-light](/assets/images/screenshots/kt-panel/background-patterns_dotteddiamond-light.png?v=639234523356787191){ .light .snapshot} ![background-patterns_dotteddiamond-dark](/assets/images/screenshots/kt-panel/background-patterns_dotteddiamond-dark.png?v=639234523356787191){.dark .snapshot}
== slide
![background-patterns_shingle-light](/assets/images/screenshots/kt-panel/background-patterns_shingle-light.png?v=639234523363818614){ .light .snapshot} ![background-patterns_shingle-dark](/assets/images/screenshots/kt-panel/background-patterns_shingle-dark.png?v=639234523363818614){.dark .snapshot}
== slide
![background-patterns_trellis-light](/assets/images/screenshots/kt-panel/background-patterns_trellis-light.png?v=639234523370889715){ .light .snapshot} ![background-patterns_trellis-dark](/assets/images/screenshots/kt-panel/background-patterns_trellis-dark.png?v=639234523370889715){.dark .snapshot}
== slide
![background-patterns_sphere-light](/assets/images/screenshots/kt-panel/background-patterns_sphere-light.png?v=639234523377865250){ .light .snapshot} ![background-patterns_sphere-dark](/assets/images/screenshots/kt-panel/background-patterns_sphere-dark.png?v=639234523377865250){.dark .snapshot}
== slide
![background-patterns_smallgrid-light](/assets/images/screenshots/kt-panel/background-patterns_smallgrid-light.png?v=639234523384853318){ .light .snapshot} ![background-patterns_smallgrid-dark](/assets/images/screenshots/kt-panel/background-patterns_smallgrid-dark.png?v=639234523384853318){.dark .snapshot}
== slide
![background-patterns_smallcheckerboard-light](/assets/images/screenshots/kt-panel/background-patterns_smallcheckerboard-light.png?v=639234523391687719){ .light .snapshot} ![background-patterns_smallcheckerboard-dark](/assets/images/screenshots/kt-panel/background-patterns_smallcheckerboard-dark.png?v=639234523391687719){.dark .snapshot}
== slide
![background-patterns_largecheckerboard-light](/assets/images/screenshots/kt-panel/background-patterns_largecheckerboard-light.png?v=639234523398601655){ .light .snapshot} ![background-patterns_largecheckerboard-dark](/assets/images/screenshots/kt-panel/background-patterns_largecheckerboard-dark.png?v=639234523398601655){.dark .snapshot}
== slide
![background-patterns_outlineddiamond-light](/assets/images/screenshots/kt-panel/background-patterns_outlineddiamond-light.png?v=639234523405404100){ .light .snapshot} ![background-patterns_outlineddiamond-dark](/assets/images/screenshots/kt-panel/background-patterns_outlineddiamond-dark.png?v=639234523405404100){.dark .snapshot}
== slide
![background-patterns_soliddiamond-light](/assets/images/screenshots/kt-panel/background-patterns_soliddiamond-light.png?v=639234523412265637){ .light .snapshot} ![background-patterns_soliddiamond-dark](/assets/images/screenshots/kt-panel/background-patterns_soliddiamond-dark.png?v=639234523412265637){.dark .snapshot}
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
