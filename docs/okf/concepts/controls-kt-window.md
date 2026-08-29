---
type: concept
title: "KimTools / Controls / Window"
description: "A modern, theme-aware WinForms window with customizable backgrounds, styling, and layout support."
source: "https://kimtoo.net/controls/kt-window/"
path: /controls/kt-window/
updated: 2026-08-29
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-29T11:58:37.038Z"
---
---
title: "KimTools / Controls / Window"
description: "A modern, theme-aware WinForms window with customizable backgrounds, styling, and layout support."
keywords: ["KimTools", "Controls", "KtWindow", "Window", "Form"]
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
![kt-window-light](/assets/images/screenshots/kt-window/kt-window-light.png?v=639234526917551047){ .light .snapshot} ![kt-window-dark](/assets/images/screenshots/kt-window/kt-window-dark.png?v=639234526917551047){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::
## Form Inheritance Integration
To transform a standard WinForms window into a modern `KtWindow`, modify your code-behind inheritance target from `Form` to `KtWindow`.

::: steps
1. **Create Standard Form**
Add a standard Windows Form to your project using the Visual Studio designer.
2. **Open Code-Behind File**
Right-click the form designer surface and select **View Code** (F7) to open your `Form.cs` partial class.
3. **Update Base Class**
Change the base class inheritance from `: Form` to `: KtWindow` (ensure `using KimTools.WinForms;` is declared).
4. **Configure Window Properties**
Return to the Visual Studio designer to customize `KtWindow` properties like corner radius, border styling, shadow effects, and custom header controls.
:::
```csharp "🔴 🟡 🟢"
using KimTools.WinForms;
	
namespace MyApp
{
    public partial class MyAppWindow : KtWindow
    {
        public AppWindow()
        {
            InitializeComponent();
        }
    }
}
```

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
![kt-window-light](/assets/images/screenshots/kt-window/kt-window-light.png?v=639234526934738869){ .light .snapshot} ![kt-window-dark](/assets/images/screenshots/kt-window/kt-window-dark.png?v=639234526934738869){.dark .snapshot}

== tab "Light" icon:sun
![kt-window-light](/assets/images/screenshots/kt-window/kt-window-light.png?v=639234526934738869){  .snapshot}

== tab "Dark" icon:moon
![kt-window-dark](/assets/images/screenshots/kt-window/kt-window-dark.png?v=639234526934738869){ .snapshot}

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
![solid-backgrounds-light](/assets/images/screenshots/kt-window/solid-backgrounds-light.png?v=639234526952742608){ .light .snapshot} ![solid-backgrounds-dark](/assets/images/screenshots/kt-window/solid-backgrounds-dark.png?v=639234526952742608){.dark .snapshot}

== tab "Light" icon:sun
![solid-backgrounds-light](/assets/images/screenshots/kt-window/solid-backgrounds-light.png?v=639234526952742608){  .snapshot}

== tab "Dark" icon:moon
![solid-backgrounds-dark](/assets/images/screenshots/kt-window/solid-backgrounds-dark.png?v=639234526952742608){ .snapshot}

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
![gradient-backgrounds-light](/assets/images/screenshots/kt-window/gradient-backgrounds-light.png?v=639234526970438208){ .light .snapshot} ![gradient-backgrounds-dark](/assets/images/screenshots/kt-window/gradient-backgrounds-dark.png?v=639234526970438208){.dark .snapshot}

== tab "Light" icon:sun
![gradient-backgrounds-light](/assets/images/screenshots/kt-window/gradient-backgrounds-light.png?v=639234526970438208){  .snapshot}

== tab "Dark" icon:moon
![gradient-backgrounds-dark](/assets/images/screenshots/kt-window/gradient-backgrounds-dark.png?v=639234526970438208){ .snapshot}

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
![gradient-angles-light](/assets/images/screenshots/kt-window/gradient-angles-light.png?v=639234526988758750){ .light .snapshot} ![gradient-angles-dark](/assets/images/screenshots/kt-window/gradient-angles-dark.png?v=639234526988758750){.dark .snapshot}

== tab "Light" icon:sun
![gradient-angles-light](/assets/images/screenshots/kt-window/gradient-angles-light.png?v=639234526988758750){  .snapshot}

== tab "Dark" icon:moon
![gradient-angles-dark](/assets/images/screenshots/kt-window/gradient-angles-dark.png?v=639234526988758750){ .snapshot}

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
![semantic-backgrounds-light](/assets/images/screenshots/kt-window/semantic-backgrounds-light.png?v=639234527006723903){ .light .snapshot} ![semantic-backgrounds-dark](/assets/images/screenshots/kt-window/semantic-backgrounds-dark.png?v=639234527006723903){.dark .snapshot}

== tab "Light" icon:sun
![semantic-backgrounds-light](/assets/images/screenshots/kt-window/semantic-backgrounds-light.png?v=639234527006723903){  .snapshot}

== tab "Dark" icon:moon
![semantic-backgrounds-dark](/assets/images/screenshots/kt-window/semantic-backgrounds-dark.png?v=639234527006723903){ .snapshot}

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
![background-shades-light](/assets/images/screenshots/kt-window/background-shades-light.png?v=639234527024713753){ .light .snapshot} ![background-shades-dark](/assets/images/screenshots/kt-window/background-shades-dark.png?v=639234527024713753){.dark .snapshot}

== tab "Light" icon:sun
![background-shades-light](/assets/images/screenshots/kt-window/background-shades-light.png?v=639234527024713753){  .snapshot}

== tab "Dark" icon:moon
![background-shades-dark](/assets/images/screenshots/kt-window/background-shades-dark.png?v=639234527024713753){ .snapshot}

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
![custom-background-colors-light](/assets/images/screenshots/kt-window/custom-background-colors-light.png?v=639234527042760297){ .light .snapshot} ![custom-background-colors-dark](/assets/images/screenshots/kt-window/custom-background-colors-dark.png?v=639234527042760297){.dark .snapshot}

== tab "Light" icon:sun
![custom-background-colors-light](/assets/images/screenshots/kt-window/custom-background-colors-light.png?v=639234527042760297){  .snapshot}

== tab "Dark" icon:moon
![custom-background-colors-dark](/assets/images/screenshots/kt-window/custom-background-colors-dark.png?v=639234527042760297){ .snapshot}

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
window.PatternColor = KtColor.BASE_3; // Solid Color or 
window.PatternStyle = HatchStyle.LargeConfetti;
```
== side
::: tabs
== tab "Auto" icon:app-window
![background-patterns_largeconfetti-light](/assets/images/screenshots/kt-window/background-patterns_largeconfetti-light.png?v=639234527043189165){ .light .snapshot} ![background-patterns_largeconfetti-dark](/assets/images/screenshots/kt-window/background-patterns_largeconfetti-dark.png?v=639234527043189165){.dark .snapshot}

== tab "Light" icon:sun
![background-patterns_largeconfetti-light](/assets/images/screenshots/kt-window/background-patterns_largeconfetti-light.png?v=639234527043189165){  .snapshot}

== tab "Dark" icon:moon
![background-patterns_largeconfetti-dark](/assets/images/screenshots/kt-window/background-patterns_largeconfetti-dark.png?v=639234527043189165){ .snapshot}

:::
:::

::: collapsible "Pattern styles"

::: grids

::: grid
::: card "Horizontal"
![background-patterns_horizontal-light](/assets/images/screenshots/kt-window/background-patterns_horizontal-light.png?v=639234527061068647){ .light .snapshot} ![background-patterns_horizontal-dark](/assets/images/screenshots/kt-window/background-patterns_horizontal-dark.png?v=639234527061068647){.dark .snapshot}
:::
::: 


::: grid
::: card "Min"
![background-patterns_min-light](/assets/images/screenshots/kt-window/background-patterns_min-light.png?v=639234527078926871){ .light .snapshot} ![background-patterns_min-dark](/assets/images/screenshots/kt-window/background-patterns_min-dark.png?v=639234527078926871){.dark .snapshot}
:::
::: 


::: grid
::: card "Vertical"
![background-patterns_vertical-light](/assets/images/screenshots/kt-window/background-patterns_vertical-light.png?v=639234527096592683){ .light .snapshot} ![background-patterns_vertical-dark](/assets/images/screenshots/kt-window/background-patterns_vertical-dark.png?v=639234527096592683){.dark .snapshot}
:::
::: 


::: grid
::: card "ForwardDiagonal"
![background-patterns_forwarddiagonal-light](/assets/images/screenshots/kt-window/background-patterns_forwarddiagonal-light.png?v=639234527113889406){ .light .snapshot} ![background-patterns_forwarddiagonal-dark](/assets/images/screenshots/kt-window/background-patterns_forwarddiagonal-dark.png?v=639234527113889406){.dark .snapshot}
:::
::: 


::: grid
::: card "BackwardDiagonal"
![background-patterns_backwarddiagonal-light](/assets/images/screenshots/kt-window/background-patterns_backwarddiagonal-light.png?v=639234527131619003){ .light .snapshot} ![background-patterns_backwarddiagonal-dark](/assets/images/screenshots/kt-window/background-patterns_backwarddiagonal-dark.png?v=639234527131619003){.dark .snapshot}
:::
::: 


::: grid
::: card "Cross"
![background-patterns_cross-light](/assets/images/screenshots/kt-window/background-patterns_cross-light.png?v=639234527148707800){ .light .snapshot} ![background-patterns_cross-dark](/assets/images/screenshots/kt-window/background-patterns_cross-dark.png?v=639234527148707800){.dark .snapshot}
:::
::: 


::: grid
::: card "LargeGrid"
![background-patterns_largegrid-light](/assets/images/screenshots/kt-window/background-patterns_largegrid-light.png?v=639234527166369256){ .light .snapshot} ![background-patterns_largegrid-dark](/assets/images/screenshots/kt-window/background-patterns_largegrid-dark.png?v=639234527166369256){.dark .snapshot}
:::
::: 


::: grid
::: card "Max"
![background-patterns_max-light](/assets/images/screenshots/kt-window/background-patterns_max-light.png?v=639234527183715795){ .light .snapshot} ![background-patterns_max-dark](/assets/images/screenshots/kt-window/background-patterns_max-dark.png?v=639234527183715795){.dark .snapshot}
:::
::: 


::: grid
::: card "DiagonalCross"
![background-patterns_diagonalcross-light](/assets/images/screenshots/kt-window/background-patterns_diagonalcross-light.png?v=639234527200905987){ .light .snapshot} ![background-patterns_diagonalcross-dark](/assets/images/screenshots/kt-window/background-patterns_diagonalcross-dark.png?v=639234527200905987){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent05"
![background-patterns_percent05-light](/assets/images/screenshots/kt-window/background-patterns_percent05-light.png?v=639234527219382458){ .light .snapshot} ![background-patterns_percent05-dark](/assets/images/screenshots/kt-window/background-patterns_percent05-dark.png?v=639234527219382458){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent10"
![background-patterns_percent10-light](/assets/images/screenshots/kt-window/background-patterns_percent10-light.png?v=639234527236720537){ .light .snapshot} ![background-patterns_percent10-dark](/assets/images/screenshots/kt-window/background-patterns_percent10-dark.png?v=639234527236720537){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent20"
![background-patterns_percent20-light](/assets/images/screenshots/kt-window/background-patterns_percent20-light.png?v=639234527255053239){ .light .snapshot} ![background-patterns_percent20-dark](/assets/images/screenshots/kt-window/background-patterns_percent20-dark.png?v=639234527255053239){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent25"
![background-patterns_percent25-light](/assets/images/screenshots/kt-window/background-patterns_percent25-light.png?v=639234527273036838){ .light .snapshot} ![background-patterns_percent25-dark](/assets/images/screenshots/kt-window/background-patterns_percent25-dark.png?v=639234527273036838){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent30"
![background-patterns_percent30-light](/assets/images/screenshots/kt-window/background-patterns_percent30-light.png?v=639234527291712154){ .light .snapshot} ![background-patterns_percent30-dark](/assets/images/screenshots/kt-window/background-patterns_percent30-dark.png?v=639234527291712154){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent40"
![background-patterns_percent40-light](/assets/images/screenshots/kt-window/background-patterns_percent40-light.png?v=639234527311747991){ .light .snapshot} ![background-patterns_percent40-dark](/assets/images/screenshots/kt-window/background-patterns_percent40-dark.png?v=639234527311747991){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent50"
![background-patterns_percent50-light](/assets/images/screenshots/kt-window/background-patterns_percent50-light.png?v=639234527331410344){ .light .snapshot} ![background-patterns_percent50-dark](/assets/images/screenshots/kt-window/background-patterns_percent50-dark.png?v=639234527331410344){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent60"
![background-patterns_percent60-light](/assets/images/screenshots/kt-window/background-patterns_percent60-light.png?v=639234527349933991){ .light .snapshot} ![background-patterns_percent60-dark](/assets/images/screenshots/kt-window/background-patterns_percent60-dark.png?v=639234527349933991){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent70"
![background-patterns_percent70-light](/assets/images/screenshots/kt-window/background-patterns_percent70-light.png?v=639234527367202568){ .light .snapshot} ![background-patterns_percent70-dark](/assets/images/screenshots/kt-window/background-patterns_percent70-dark.png?v=639234527367202568){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent75"
![background-patterns_percent75-light](/assets/images/screenshots/kt-window/background-patterns_percent75-light.png?v=639234527384239467){ .light .snapshot} ![background-patterns_percent75-dark](/assets/images/screenshots/kt-window/background-patterns_percent75-dark.png?v=639234527384239467){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent80"
![background-patterns_percent80-light](/assets/images/screenshots/kt-window/background-patterns_percent80-light.png?v=639234527401873877){ .light .snapshot} ![background-patterns_percent80-dark](/assets/images/screenshots/kt-window/background-patterns_percent80-dark.png?v=639234527401873877){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent90"
![background-patterns_percent90-light](/assets/images/screenshots/kt-window/background-patterns_percent90-light.png?v=639234527419400973){ .light .snapshot} ![background-patterns_percent90-dark](/assets/images/screenshots/kt-window/background-patterns_percent90-dark.png?v=639234527419400973){.dark .snapshot}
:::
::: 


::: grid
::: card "LightDownwardDiagonal"
![background-patterns_lightdownwarddiagonal-light](/assets/images/screenshots/kt-window/background-patterns_lightdownwarddiagonal-light.png?v=639234527438065984){ .light .snapshot} ![background-patterns_lightdownwarddiagonal-dark](/assets/images/screenshots/kt-window/background-patterns_lightdownwarddiagonal-dark.png?v=639234527438065984){.dark .snapshot}
:::
::: 


::: grid
::: card "LightUpwardDiagonal"
![background-patterns_lightupwarddiagonal-light](/assets/images/screenshots/kt-window/background-patterns_lightupwarddiagonal-light.png?v=639234527456083350){ .light .snapshot} ![background-patterns_lightupwarddiagonal-dark](/assets/images/screenshots/kt-window/background-patterns_lightupwarddiagonal-dark.png?v=639234527456083350){.dark .snapshot}
:::
::: 


::: grid
::: card "DarkDownwardDiagonal"
![background-patterns_darkdownwarddiagonal-light](/assets/images/screenshots/kt-window/background-patterns_darkdownwarddiagonal-light.png?v=639234527473717905){ .light .snapshot} ![background-patterns_darkdownwarddiagonal-dark](/assets/images/screenshots/kt-window/background-patterns_darkdownwarddiagonal-dark.png?v=639234527473717905){.dark .snapshot}
:::
::: 


::: grid
::: card "DarkUpwardDiagonal"
![background-patterns_darkupwarddiagonal-light](/assets/images/screenshots/kt-window/background-patterns_darkupwarddiagonal-light.png?v=639234527491087869){ .light .snapshot} ![background-patterns_darkupwarddiagonal-dark](/assets/images/screenshots/kt-window/background-patterns_darkupwarddiagonal-dark.png?v=639234527491087869){.dark .snapshot}
:::
::: 


::: grid
::: card "WideDownwardDiagonal"
![background-patterns_widedownwarddiagonal-light](/assets/images/screenshots/kt-window/background-patterns_widedownwarddiagonal-light.png?v=639234527508569079){ .light .snapshot} ![background-patterns_widedownwarddiagonal-dark](/assets/images/screenshots/kt-window/background-patterns_widedownwarddiagonal-dark.png?v=639234527508569079){.dark .snapshot}
:::
::: 


::: grid
::: card "WideUpwardDiagonal"
![background-patterns_wideupwarddiagonal-light](/assets/images/screenshots/kt-window/background-patterns_wideupwarddiagonal-light.png?v=639234527525872021){ .light .snapshot} ![background-patterns_wideupwarddiagonal-dark](/assets/images/screenshots/kt-window/background-patterns_wideupwarddiagonal-dark.png?v=639234527525872021){.dark .snapshot}
:::
::: 


::: grid
::: card "LightVertical"
![background-patterns_lightvertical-light](/assets/images/screenshots/kt-window/background-patterns_lightvertical-light.png?v=639234527543735494){ .light .snapshot} ![background-patterns_lightvertical-dark](/assets/images/screenshots/kt-window/background-patterns_lightvertical-dark.png?v=639234527543735494){.dark .snapshot}
:::
::: 


::: grid
::: card "LightHorizontal"
![background-patterns_lighthorizontal-light](/assets/images/screenshots/kt-window/background-patterns_lighthorizontal-light.png?v=639234527561856311){ .light .snapshot} ![background-patterns_lighthorizontal-dark](/assets/images/screenshots/kt-window/background-patterns_lighthorizontal-dark.png?v=639234527561856311){.dark .snapshot}
:::
::: 


::: grid
::: card "NarrowVertical"
![background-patterns_narrowvertical-light](/assets/images/screenshots/kt-window/background-patterns_narrowvertical-light.png?v=639234527579583325){ .light .snapshot} ![background-patterns_narrowvertical-dark](/assets/images/screenshots/kt-window/background-patterns_narrowvertical-dark.png?v=639234527579583325){.dark .snapshot}
:::
::: 


::: grid
::: card "NarrowHorizontal"
![background-patterns_narrowhorizontal-light](/assets/images/screenshots/kt-window/background-patterns_narrowhorizontal-light.png?v=639234527597217903){ .light .snapshot} ![background-patterns_narrowhorizontal-dark](/assets/images/screenshots/kt-window/background-patterns_narrowhorizontal-dark.png?v=639234527597217903){.dark .snapshot}
:::
::: 


::: grid
::: card "DarkVertical"
![background-patterns_darkvertical-light](/assets/images/screenshots/kt-window/background-patterns_darkvertical-light.png?v=639234527614890026){ .light .snapshot} ![background-patterns_darkvertical-dark](/assets/images/screenshots/kt-window/background-patterns_darkvertical-dark.png?v=639234527614890026){.dark .snapshot}
:::
::: 


::: grid
::: card "DarkHorizontal"
![background-patterns_darkhorizontal-light](/assets/images/screenshots/kt-window/background-patterns_darkhorizontal-light.png?v=639234527632738842){ .light .snapshot} ![background-patterns_darkhorizontal-dark](/assets/images/screenshots/kt-window/background-patterns_darkhorizontal-dark.png?v=639234527632738842){.dark .snapshot}
:::
::: 


::: grid
::: card "DashedDownwardDiagonal"
![background-patterns_dasheddownwarddiagonal-light](/assets/images/screenshots/kt-window/background-patterns_dasheddownwarddiagonal-light.png?v=639234527650374415){ .light .snapshot} ![background-patterns_dasheddownwarddiagonal-dark](/assets/images/screenshots/kt-window/background-patterns_dasheddownwarddiagonal-dark.png?v=639234527650374415){.dark .snapshot}
:::
::: 


::: grid
::: card "DashedUpwardDiagonal"
![background-patterns_dashedupwarddiagonal-light](/assets/images/screenshots/kt-window/background-patterns_dashedupwarddiagonal-light.png?v=639234527667413956){ .light .snapshot} ![background-patterns_dashedupwarddiagonal-dark](/assets/images/screenshots/kt-window/background-patterns_dashedupwarddiagonal-dark.png?v=639234527667413956){.dark .snapshot}
:::
::: 


::: grid
::: card "DashedHorizontal"
![background-patterns_dashedhorizontal-light](/assets/images/screenshots/kt-window/background-patterns_dashedhorizontal-light.png?v=639234527684556773){ .light .snapshot} ![background-patterns_dashedhorizontal-dark](/assets/images/screenshots/kt-window/background-patterns_dashedhorizontal-dark.png?v=639234527684556773){.dark .snapshot}
:::
::: 


::: grid
::: card "DashedVertical"
![background-patterns_dashedvertical-light](/assets/images/screenshots/kt-window/background-patterns_dashedvertical-light.png?v=639234527702036099){ .light .snapshot} ![background-patterns_dashedvertical-dark](/assets/images/screenshots/kt-window/background-patterns_dashedvertical-dark.png?v=639234527702036099){.dark .snapshot}
:::
::: 


::: grid
::: card "SmallConfetti"
![background-patterns_smallconfetti-light](/assets/images/screenshots/kt-window/background-patterns_smallconfetti-light.png?v=639234527720198480){ .light .snapshot} ![background-patterns_smallconfetti-dark](/assets/images/screenshots/kt-window/background-patterns_smallconfetti-dark.png?v=639234527720198480){.dark .snapshot}
:::
::: 


::: grid
::: card "LargeConfetti"
![background-patterns_largeconfetti-light](/assets/images/screenshots/kt-window/background-patterns_largeconfetti-light.png?v=639234527737395855){ .light .snapshot} ![background-patterns_largeconfetti-dark](/assets/images/screenshots/kt-window/background-patterns_largeconfetti-dark.png?v=639234527737395855){.dark .snapshot}
:::
::: 


::: grid
::: card "ZigZag"
![background-patterns_zigzag-light](/assets/images/screenshots/kt-window/background-patterns_zigzag-light.png?v=639234527755408507){ .light .snapshot} ![background-patterns_zigzag-dark](/assets/images/screenshots/kt-window/background-patterns_zigzag-dark.png?v=639234527755408507){.dark .snapshot}
:::
::: 


::: grid
::: card "Wave"
![background-patterns_wave-light](/assets/images/screenshots/kt-window/background-patterns_wave-light.png?v=639234527772899410){ .light .snapshot} ![background-patterns_wave-dark](/assets/images/screenshots/kt-window/background-patterns_wave-dark.png?v=639234527772899410){.dark .snapshot}
:::
::: 


::: grid
::: card "DiagonalBrick"
![background-patterns_diagonalbrick-light](/assets/images/screenshots/kt-window/background-patterns_diagonalbrick-light.png?v=639234527790407134){ .light .snapshot} ![background-patterns_diagonalbrick-dark](/assets/images/screenshots/kt-window/background-patterns_diagonalbrick-dark.png?v=639234527790407134){.dark .snapshot}
:::
::: 


::: grid
::: card "HorizontalBrick"
![background-patterns_horizontalbrick-light](/assets/images/screenshots/kt-window/background-patterns_horizontalbrick-light.png?v=639234527807874610){ .light .snapshot} ![background-patterns_horizontalbrick-dark](/assets/images/screenshots/kt-window/background-patterns_horizontalbrick-dark.png?v=639234527807874610){.dark .snapshot}
:::
::: 


::: grid
::: card "Weave"
![background-patterns_weave-light](/assets/images/screenshots/kt-window/background-patterns_weave-light.png?v=639234527824897462){ .light .snapshot} ![background-patterns_weave-dark](/assets/images/screenshots/kt-window/background-patterns_weave-dark.png?v=639234527824897462){.dark .snapshot}
:::
::: 


::: grid
::: card "Plaid"
![background-patterns_plaid-light](/assets/images/screenshots/kt-window/background-patterns_plaid-light.png?v=639234527843018281){ .light .snapshot} ![background-patterns_plaid-dark](/assets/images/screenshots/kt-window/background-patterns_plaid-dark.png?v=639234527843018281){.dark .snapshot}
:::
::: 


::: grid
::: card "Divot"
![background-patterns_divot-light](/assets/images/screenshots/kt-window/background-patterns_divot-light.png?v=639234527861571651){ .light .snapshot} ![background-patterns_divot-dark](/assets/images/screenshots/kt-window/background-patterns_divot-dark.png?v=639234527861571651){.dark .snapshot}
:::
::: 


::: grid
::: card "DottedGrid"
![background-patterns_dottedgrid-light](/assets/images/screenshots/kt-window/background-patterns_dottedgrid-light.png?v=639234527879082780){ .light .snapshot} ![background-patterns_dottedgrid-dark](/assets/images/screenshots/kt-window/background-patterns_dottedgrid-dark.png?v=639234527879082780){.dark .snapshot}
:::
::: 


::: grid
::: card "DottedDiamond"
![background-patterns_dotteddiamond-light](/assets/images/screenshots/kt-window/background-patterns_dotteddiamond-light.png?v=639234527896528428){ .light .snapshot} ![background-patterns_dotteddiamond-dark](/assets/images/screenshots/kt-window/background-patterns_dotteddiamond-dark.png?v=639234527896528428){.dark .snapshot}
:::
::: 


::: grid
::: card "Shingle"
![background-patterns_shingle-light](/assets/images/screenshots/kt-window/background-patterns_shingle-light.png?v=639234527914205605){ .light .snapshot} ![background-patterns_shingle-dark](/assets/images/screenshots/kt-window/background-patterns_shingle-dark.png?v=639234527914205605){.dark .snapshot}
:::
::: 


::: grid
::: card "Trellis"
![background-patterns_trellis-light](/assets/images/screenshots/kt-window/background-patterns_trellis-light.png?v=639234527931725066){ .light .snapshot} ![background-patterns_trellis-dark](/assets/images/screenshots/kt-window/background-patterns_trellis-dark.png?v=639234527931725066){.dark .snapshot}
:::
::: 


::: grid
::: card "Sphere"
![background-patterns_sphere-light](/assets/images/screenshots/kt-window/background-patterns_sphere-light.png?v=639234527950232517){ .light .snapshot} ![background-patterns_sphere-dark](/assets/images/screenshots/kt-window/background-patterns_sphere-dark.png?v=639234527950232517){.dark .snapshot}
:::
::: 


::: grid
::: card "SmallGrid"
![background-patterns_smallgrid-light](/assets/images/screenshots/kt-window/background-patterns_smallgrid-light.png?v=639234527969187035){ .light .snapshot} ![background-patterns_smallgrid-dark](/assets/images/screenshots/kt-window/background-patterns_smallgrid-dark.png?v=639234527969187035){.dark .snapshot}
:::
::: 


::: grid
::: card "SmallCheckerBoard"
![background-patterns_smallcheckerboard-light](/assets/images/screenshots/kt-window/background-patterns_smallcheckerboard-light.png?v=639234527988670124){ .light .snapshot} ![background-patterns_smallcheckerboard-dark](/assets/images/screenshots/kt-window/background-patterns_smallcheckerboard-dark.png?v=639234527988670124){.dark .snapshot}
:::
::: 


::: grid
::: card "LargeCheckerBoard"
![background-patterns_largecheckerboard-light](/assets/images/screenshots/kt-window/background-patterns_largecheckerboard-light.png?v=639234528007522792){ .light .snapshot} ![background-patterns_largecheckerboard-dark](/assets/images/screenshots/kt-window/background-patterns_largecheckerboard-dark.png?v=639234528007522792){.dark .snapshot}
:::
::: 


::: grid
::: card "OutlinedDiamond"
![background-patterns_outlineddiamond-light](/assets/images/screenshots/kt-window/background-patterns_outlineddiamond-light.png?v=639234528025016136){ .light .snapshot} ![background-patterns_outlineddiamond-dark](/assets/images/screenshots/kt-window/background-patterns_outlineddiamond-dark.png?v=639234528025016136){.dark .snapshot}
:::
::: 


::: grid
::: card "SolidDiamond"
![background-patterns_soliddiamond-light](/assets/images/screenshots/kt-window/background-patterns_soliddiamond-light.png?v=639234528042507526){ .light .snapshot} ![background-patterns_soliddiamond-dark](/assets/images/screenshots/kt-window/background-patterns_soliddiamond-dark.png?v=639234528042507526){.dark .snapshot}
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
