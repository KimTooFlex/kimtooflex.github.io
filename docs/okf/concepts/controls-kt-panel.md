---
type: concept
title: "KimTools / Controls / Panel"
description: "A modern, fully customizable panel control for WinForms. It acts as an advanced container for grouping and styling related content."
source: "https://kimtoo.net/controls/kt-panel/"
path: /controls/kt-panel/
updated: 2026-08-30
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-30T11:14:12.503Z"
---
---
title: "KimTools / Controls / Panel"
description: "A modern, fully customizable panel control for WinForms. It acts as an advanced container for grouping and styling related content."
keywords: ["KimTools", "Controls", "KtPanel", "Panel"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `Panel`
A modern, fully customizable panel control for WinForms. It acts as an advanced container for grouping and styling related content.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-panel-light](/assets/images/screenshots/kt-panel/kt-panel-light.png?v=639236188056045475){ .light .snapshot} ![kt-panel-dark](/assets/images/screenshots/kt-panel/kt-panel-dark.png?v=639236188056045475){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::
```csharp "🔴 🟡 🟢"
var panel = new KtPanel
{
    Background = (
        KtColor.PRIMARY % 50,
        KtColor.SECONDARY % 50
    ),
    Border = (
        KtColor.PRIMARY,
        KtColor.SECONDARY,
        45
    ),
    BorderRadius = .5f,
    BorderWidth = 3,
    BorderEdges =
    {
        TopLeft = true,
        TopRight = true,
        BottomLeft = true,
        BottomRight = false
    },
    BorderStyle = DashStyle.DashDotDot,
    PatternStyle = HatchStyle.LargeConfetti,
    PatternColor = KtColor.CONTENT % 10
};
```
| ::: tag "Background" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the panel's background color.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Solid `Background`
Supports plain `System.Drawing.Color`, dynamic `KtColor`, hex values (`#1E90FF`), or web-formatted colors (`rgb` / `hsl`).
```csharp "🔴 🟡 🟢"
var panel = new KtPanel
{
    Background = KtColor.PRIMARY,
    Border = KtBrush.None
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![solid-background-light](/assets/images/screenshots/kt-panel/solid-background-light.png?v=639236188083591520){ .light .snapshot} ![solid-background-dark](/assets/images/screenshots/kt-panel/solid-background-dark.png?v=639236188083591520){.dark .snapshot}

== tab "Light" icon:sun
![solid-background-light](/assets/images/screenshots/kt-panel/solid-background-light.png?v=639236188083581331){  .snapshot}

== tab "Dark" icon:moon
![solid-background-dark](/assets/images/screenshots/kt-panel/solid-background-dark.png?v=639236188083581331){ .snapshot}

:::
:::
| ::: tag "BackgroundMargin" icon:wrench | ::: tag "Padding" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.padding?view=netframework-4.8  | *Sets the panel's border Margin.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## `Background Margin`
Defines internal padding offsets applied exclusively to the background fill brush.
```csharp "🔴 🟡 🟢"
var panel = new KtPanel
{
    Background = KtColor.PRIMARY,
    BackgroundMargin = new Padding(10, 10, 0, 0),
    Border = KtColor.SECONDARY,
    BorderWidth = 2
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![background-margin-light](/assets/images/screenshots/kt-panel/background-margin-light.png?v=639236188105893473){ .light .snapshot} ![background-margin-dark](/assets/images/screenshots/kt-panel/background-margin-dark.png?v=639236188105893473){.dark .snapshot}

== tab "Light" icon:sun
![background-margin-light](/assets/images/screenshots/kt-panel/background-margin-light.png?v=639236188105883398){  .snapshot}

== tab "Dark" icon:moon
![background-margin-dark](/assets/images/screenshots/kt-panel/background-margin-dark.png?v=639236188105883398){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Gradient `Background` with `KtColor`
Pass a tuple defining start color, stop color, and an optional gradient angle (0-360 degrees).
```csharp "🔴 🟡 🟢"
var panel = new KtPanel
{
    Background = (
        startColor: KtColor.PRIMARY[50],
        stopColor: KtColor.SECONDARY[50],
        angle: 45
    ),
    Border = KtBrush.None
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![gradient-background-light](/assets/images/screenshots/kt-panel/gradient-background-light.png?v=639236188126800144){ .light .snapshot} ![gradient-background-dark](/assets/images/screenshots/kt-panel/gradient-background-dark.png?v=639236188126800144){.dark .snapshot}

== tab "Light" icon:sun
![gradient-background-light](/assets/images/screenshots/kt-panel/gradient-background-light.png?v=639236188126789278){  .snapshot}

== tab "Dark" icon:moon
![gradient-background-dark](/assets/images/screenshots/kt-panel/gradient-background-dark.png?v=639236188126789278){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Gradient `Background` with `System.Drawing.Color`
Mix standard GDI system colors or combine them with semantic `KtColor` instances.
```csharp "🔴 🟡 🟢"
var panel = new KtPanel
{
    Background = (
        startColor: Color.CadetBlue,
        stopColor: Color.DodgerBlue,
        angle: 90
    ),
    Border = KtBrush.None
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![system-color-gradient-light](/assets/images/screenshots/kt-panel/system-color-gradient-light.png?v=639236188147459902){ .light .snapshot} ![system-color-gradient-dark](/assets/images/screenshots/kt-panel/system-color-gradient-dark.png?v=639236188147459902){.dark .snapshot}

== tab "Light" icon:sun
![system-color-gradient-light](/assets/images/screenshots/kt-panel/system-color-gradient-light.png?v=639236188147459902){  .snapshot}

== tab "Dark" icon:moon
![system-color-gradient-dark](/assets/images/screenshots/kt-panel/system-color-gradient-dark.png?v=639236188147459902){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Translucent Gradient `Background`
Apply transparency to colors using the `%` operator on `KtColor` instances within gradient tuples.
```csharp "🔴 🟡 🟢"
var panel = new KtPanel
{
    Background = (
        startColor: KtColor.Teal % 40,  // 40% Opacity
        stopColor: KtColor.Emerald % 60 // 60% Opacity
    ),
    Border = KtBrush.None
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![opacity-gradient-light](/assets/images/screenshots/kt-panel/opacity-gradient-light.png?v=639236188168370500){ .light .snapshot} ![opacity-gradient-dark](/assets/images/screenshots/kt-panel/opacity-gradient-dark.png?v=639236188168370500){.dark .snapshot}

== tab "Light" icon:sun
![opacity-gradient-light](/assets/images/screenshots/kt-panel/opacity-gradient-light.png?v=639236188168360390){  .snapshot}

== tab "Dark" icon:moon
![opacity-gradient-dark](/assets/images/screenshots/kt-panel/opacity-gradient-dark.png?v=639236188168360390){ .snapshot}

:::
:::
| ::: tag "Border" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the panel's border color.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Solid `Border` Color
Assign a single `KtColor` or `Color` to the `Border` property for a uniform outline.
```csharp "🔴 🟡 🟢"
var panel = new KtPanel
{
    Background = KtColor.Transparent,
    Border = KtColor.PRIMARY,
    BorderWidth = 2
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![solid-border-light](/assets/images/screenshots/kt-panel/solid-border-light.png?v=639236188190717476){ .light .snapshot} ![solid-border-dark](/assets/images/screenshots/kt-panel/solid-border-dark.png?v=639236188190717476){.dark .snapshot}

== tab "Light" icon:sun
![solid-border-light](/assets/images/screenshots/kt-panel/solid-border-light.png?v=639236188190717476){  .snapshot}

== tab "Dark" icon:moon
![solid-border-dark](/assets/images/screenshots/kt-panel/solid-border-dark.png?v=639236188190717476){ .snapshot}

:::
:::
| ::: tag "BorderWidth" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the panel's border thickness.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## `BorderWidth`
Defines the thickness of the panel border stroke.
```csharp "🔴 🟡 🟢"
var panel = new KtPanel
{
    Background = KtColor.Transparent,
    Border = KtColor.PRIMARY,
    BorderWidth = 4
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![border-width-light](/assets/images/screenshots/kt-panel/border-width-light.png?v=639236188212999884){ .light .snapshot} ![border-width-dark](/assets/images/screenshots/kt-panel/border-width-dark.png?v=639236188212999884){.dark .snapshot}

== tab "Light" icon:sun
![border-width-light](/assets/images/screenshots/kt-panel/border-width-light.png?v=639236188212999884){  .snapshot}

== tab "Dark" icon:moon
![border-width-dark](/assets/images/screenshots/kt-panel/border-width-dark.png?v=639236188212999884){ .snapshot}

:::
:::
| ::: tag "BorderMargin" icon:wrench | ::: tag "Padding" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.padding?view=netframework-4.8  | *Sets the panel's border Margin.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## `BorderMargin`
Applies positional offsets to the border rendering area relative to the control bounds.
```csharp "🔴 🟡 🟢"
var panel = new KtPanel
{
    Background = KtColor.Transparent,
    Border = KtColor.PRIMARY,
    BorderWidth = 2,
    BorderMargin = new Padding(10, 10, 0, 0)
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![border-margin-light](/assets/images/screenshots/kt-panel/border-margin-light.png?v=639236188235351965){ .light .snapshot} ![border-margin-dark](/assets/images/screenshots/kt-panel/border-margin-dark.png?v=639236188235351965){.dark .snapshot}

== tab "Light" icon:sun
![border-margin-light](/assets/images/screenshots/kt-panel/border-margin-light.png?v=639236188235343000){  .snapshot}

== tab "Dark" icon:moon
![border-margin-dark](/assets/images/screenshots/kt-panel/border-margin-dark.png?v=639236188235343000){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Gradient `Border` Brush
Construct multi-tone borders using tuple definitions containing start color, stop color, and angle.
```csharp "🔴 🟡 🟢"
var panel = new KtPanel
{
    Background = KtColor.Transparent,
    Border = (
        startColor: KtColor.PRIMARY,
        stopColor: KtColor.SECONDARY,
        angle: 90
    ),
    BorderWidth = 4
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![gradient-border-light](/assets/images/screenshots/kt-panel/gradient-border-light.png?v=639236188256065613){ .light .snapshot} ![gradient-border-dark](/assets/images/screenshots/kt-panel/gradient-border-dark.png?v=639236188256065613){.dark .snapshot}

== tab "Light" icon:sun
![gradient-border-light](/assets/images/screenshots/kt-panel/gradient-border-light.png?v=639236188256065613){  .snapshot}

== tab "Dark" icon:moon
![gradient-border-dark](/assets/images/screenshots/kt-panel/gradient-border-dark.png?v=639236188256065613){ .snapshot}

:::
:::
| ::: tag "BorderStyle" icon:wrench | ::: tag "DashStyle" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.drawing2d.dashstyle?view=netframework-4.8  | *Sets the panel's border style.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## `BorderStyle` Variants
Configure standard GDI dash patterns using `System.Drawing.Drawing2D.DashStyle`.
```csharp "🔴 🟡 🟢"
var panel = new KtPanel
{
    Background = KtColor.Transparent,
    Border = KtColor.PRIMARY,
    BorderWidth = 3,
    BorderStyle = DashStyle.DashDot
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![border-styles-light](/assets/images/screenshots/kt-panel/border-styles-light.png?v=639236188278483833){ .light .snapshot} ![border-styles-dark](/assets/images/screenshots/kt-panel/border-styles-dark.png?v=639236188278483833){.dark .snapshot}

== tab "Light" icon:sun
![border-styles-light](/assets/images/screenshots/kt-panel/border-styles-light.png?v=639236188278483833){  .snapshot}

== tab "Dark" icon:moon
![border-styles-dark](/assets/images/screenshots/kt-panel/border-styles-dark.png?v=639236188278483833){ .snapshot}

:::
:::

::: collapsible "Dash Styles Gallery"

::: grids

::: grid
::: card "Solid"
![border-styles_solid-light](/assets/images/screenshots/kt-panel/border-styles_solid-light.png?v=639236188278326058){ .light .snapshot} ![border-styles_solid-dark](/assets/images/screenshots/kt-panel/border-styles_solid-dark.png?v=639236188278326058){.dark .snapshot}
:::
::: 


::: grid
::: card "Dash"
![border-styles_dash-light](/assets/images/screenshots/kt-panel/border-styles_dash-light.png?v=639236188278354525){ .light .snapshot} ![border-styles_dash-dark](/assets/images/screenshots/kt-panel/border-styles_dash-dark.png?v=639236188278354525){.dark .snapshot}
:::
::: 


::: grid
::: card "Dot"
![border-styles_dot-light](/assets/images/screenshots/kt-panel/border-styles_dot-light.png?v=639236188278384622){ .light .snapshot} ![border-styles_dot-dark](/assets/images/screenshots/kt-panel/border-styles_dot-dark.png?v=639236188278384622){.dark .snapshot}
:::
::: 


::: grid
::: card "DashDot"
![border-styles_dashdot-light](/assets/images/screenshots/kt-panel/border-styles_dashdot-light.png?v=639236188278442469){ .light .snapshot} ![border-styles_dashdot-dark](/assets/images/screenshots/kt-panel/border-styles_dashdot-dark.png?v=639236188278442469){.dark .snapshot}
:::
::: 


::: grid
::: card "DashDotDot"
![border-styles_dashdotdot-light](/assets/images/screenshots/kt-panel/border-styles_dashdotdot-light.png?v=639236188278483833){ .light .snapshot} ![border-styles_dashdotdot-dark](/assets/images/screenshots/kt-panel/border-styles_dashdotdot-dark.png?v=639236188278483833){.dark .snapshot}
:::
::: 

:::

:::
| ::: tag "BorderEdges" icon:wrench | ::: tag "Edges" color:#6B7C94 icon:check-check  | *Sets the Border edges.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Selective `BorderEdges`
Toggle visibility for specific border edges individually using the `BorderEdges` sub-properties.
```csharp "🔴 🟡 🟢"
var panel = new KtPanel
{
    Background = KtColor.Transparent,
    Border = KtColor.ERROR,
    BorderWidth = 3,
    BorderEdges =
    {
        TopLeft = true,
        TopRight = false,
        BottomLeft = true,
        BottomRight = false
    }
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![border-edges-light](/assets/images/screenshots/kt-panel/border-edges-light.png?v=639236188341266547){ .light .snapshot} ![border-edges-dark](/assets/images/screenshots/kt-panel/border-edges-dark.png?v=639236188341266547){.dark .snapshot}

== tab "Light" icon:sun
![border-edges-light](/assets/images/screenshots/kt-panel/border-edges-light.png?v=639236188341254980){  .snapshot}

== tab "Dark" icon:moon
![border-edges-dark](/assets/images/screenshots/kt-panel/border-edges-dark.png?v=639236188341254980){ .snapshot}

:::
:::
| ::: tag "BorderRadius" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the panel's border radius.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Corner Rounding with `BorderRadius`
Control relative corner rounding with a floating point ratio value.
```csharp "🔴 🟡 🟢"
var panel = new KtPanel
{
    Background = KtColor.PRIMARY % 20,
    Border = KtColor.PRIMARY,
    BorderWidth = 2,
    BorderRadius = 0.75f // Fractional rounding scale
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![border-radius-light](/assets/images/screenshots/kt-panel/border-radius-light.png?v=639236188355668683){ .light .snapshot} ![border-radius-dark](/assets/images/screenshots/kt-panel/border-radius-dark.png?v=639236188355668683){.dark .snapshot}

== tab "Light" icon:sun
![border-radius-light](/assets/images/screenshots/kt-panel/border-radius-light.png?v=639236188355668683){  .snapshot}

== tab "Dark" icon:moon
![border-radius-dark](/assets/images/screenshots/kt-panel/border-radius-dark.png?v=639236188355668683){ .snapshot}

:::
:::
| ::: tag "PatternStyle" icon:wrench | ::: tag "HatchStyle" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.drawing2d.hatchstyle?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Pattern style.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Pattern `Style` & `Color` 
Overlay `HatchStyle` patterns over solid or gradient background fills. Set `PatternStyle` to `null` to disable.
```csharp "🔴 🟡 🟢"
var panel = new KtPanel
{
    Background = KtColor.PRIMARY,
    PatternColor = KtColor.SECONDARY % 50,
    PatternStyle = HatchStyle.LargeConfetti,
    Border = KtBrush.Solid,
    BorderRadius = 0f
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![background-patterns-light](/assets/images/screenshots/kt-panel/background-patterns-light.png?v=639236188482018426){ .light .snapshot} ![background-patterns-dark](/assets/images/screenshots/kt-panel/background-patterns-dark.png?v=639236188482018426){.dark .snapshot}

== tab "Light" icon:sun
![background-patterns-light](/assets/images/screenshots/kt-panel/background-patterns-light.png?v=639236188482018426){  .snapshot}

== tab "Dark" icon:moon
![background-patterns-dark](/assets/images/screenshots/kt-panel/background-patterns-dark.png?v=639236188482018426){ .snapshot}

:::
:::

::: collapsible "Pattern styles"

::: grids

::: grid
::: card "Horizontal"
![background-patterns_horizontal-light](/assets/images/screenshots/kt-panel/background-patterns_horizontal-light.png?v=639236188370560528){ .light .snapshot} ![background-patterns_horizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_horizontal-dark.png?v=639236188370560528){.dark .snapshot}
:::
::: 


::: grid
::: card "Horizontal"
![background-patterns_horizontal-light](/assets/images/screenshots/kt-panel/background-patterns_horizontal-light.png?v=639236188370842568){ .light .snapshot} ![background-patterns_horizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_horizontal-dark.png?v=639236188370842568){.dark .snapshot}
:::
::: 


::: grid
::: card "Vertical"
![background-patterns_vertical-light](/assets/images/screenshots/kt-panel/background-patterns_vertical-light.png?v=639236188371152466){ .light .snapshot} ![background-patterns_vertical-dark](/assets/images/screenshots/kt-panel/background-patterns_vertical-dark.png?v=639236188371152466){.dark .snapshot}
:::
::: 


::: grid
::: card "ForwardDiagonal"
![background-patterns_forwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_forwarddiagonal-light.png?v=639236188371450262){ .light .snapshot} ![background-patterns_forwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_forwarddiagonal-dark.png?v=639236188371450262){.dark .snapshot}
:::
::: 


::: grid
::: card "BackwardDiagonal"
![background-patterns_backwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_backwarddiagonal-light.png?v=639236188371734504){ .light .snapshot} ![background-patterns_backwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_backwarddiagonal-dark.png?v=639236188371734504){.dark .snapshot}
:::
::: 


::: grid
::: card "LargeGrid"
![background-patterns_largegrid-light](/assets/images/screenshots/kt-panel/background-patterns_largegrid-light.png?v=639236188381921617){ .light .snapshot} ![background-patterns_largegrid-dark](/assets/images/screenshots/kt-panel/background-patterns_largegrid-dark.png?v=639236188381921617){.dark .snapshot}
:::
::: 


::: grid
::: card "LargeGrid"
![background-patterns_largegrid-light](/assets/images/screenshots/kt-panel/background-patterns_largegrid-light.png?v=639236188382236941){ .light .snapshot} ![background-patterns_largegrid-dark](/assets/images/screenshots/kt-panel/background-patterns_largegrid-dark.png?v=639236188382236941){.dark .snapshot}
:::
::: 


::: grid
::: card "LargeGrid"
![background-patterns_largegrid-light](/assets/images/screenshots/kt-panel/background-patterns_largegrid-light.png?v=639236188382517995){ .light .snapshot} ![background-patterns_largegrid-dark](/assets/images/screenshots/kt-panel/background-patterns_largegrid-dark.png?v=639236188382517995){.dark .snapshot}
:::
::: 


::: grid
::: card "DiagonalCross"
![background-patterns_diagonalcross-light](/assets/images/screenshots/kt-panel/background-patterns_diagonalcross-light.png?v=639236188382818109){ .light .snapshot} ![background-patterns_diagonalcross-dark](/assets/images/screenshots/kt-panel/background-patterns_diagonalcross-dark.png?v=639236188382818109){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent05"
![background-patterns_percent05-light](/assets/images/screenshots/kt-panel/background-patterns_percent05-light.png?v=639236188383296223){ .light .snapshot} ![background-patterns_percent05-dark](/assets/images/screenshots/kt-panel/background-patterns_percent05-dark.png?v=639236188383296223){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent10"
![background-patterns_percent10-light](/assets/images/screenshots/kt-panel/background-patterns_percent10-light.png?v=639236188390142761){ .light .snapshot} ![background-patterns_percent10-dark](/assets/images/screenshots/kt-panel/background-patterns_percent10-dark.png?v=639236188390142761){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent20"
![background-patterns_percent20-light](/assets/images/screenshots/kt-panel/background-patterns_percent20-light.png?v=639236188390515887){ .light .snapshot} ![background-patterns_percent20-dark](/assets/images/screenshots/kt-panel/background-patterns_percent20-dark.png?v=639236188390515887){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent25"
![background-patterns_percent25-light](/assets/images/screenshots/kt-panel/background-patterns_percent25-light.png?v=639236188390899688){ .light .snapshot} ![background-patterns_percent25-dark](/assets/images/screenshots/kt-panel/background-patterns_percent25-dark.png?v=639236188390899688){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent30"
![background-patterns_percent30-light](/assets/images/screenshots/kt-panel/background-patterns_percent30-light.png?v=639236188391341861){ .light .snapshot} ![background-patterns_percent30-dark](/assets/images/screenshots/kt-panel/background-patterns_percent30-dark.png?v=639236188391341861){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent40"
![background-patterns_percent40-light](/assets/images/screenshots/kt-panel/background-patterns_percent40-light.png?v=639236188398385816){ .light .snapshot} ![background-patterns_percent40-dark](/assets/images/screenshots/kt-panel/background-patterns_percent40-dark.png?v=639236188398385816){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent50"
![background-patterns_percent50-light](/assets/images/screenshots/kt-panel/background-patterns_percent50-light.png?v=639236188398819365){ .light .snapshot} ![background-patterns_percent50-dark](/assets/images/screenshots/kt-panel/background-patterns_percent50-dark.png?v=639236188398819365){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent60"
![background-patterns_percent60-light](/assets/images/screenshots/kt-panel/background-patterns_percent60-light.png?v=639236188399405622){ .light .snapshot} ![background-patterns_percent60-dark](/assets/images/screenshots/kt-panel/background-patterns_percent60-dark.png?v=639236188399405622){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent70"
![background-patterns_percent70-light](/assets/images/screenshots/kt-panel/background-patterns_percent70-light.png?v=639236188406697828){ .light .snapshot} ![background-patterns_percent70-dark](/assets/images/screenshots/kt-panel/background-patterns_percent70-dark.png?v=639236188406697828){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent75"
![background-patterns_percent75-light](/assets/images/screenshots/kt-panel/background-patterns_percent75-light.png?v=639236188407120200){ .light .snapshot} ![background-patterns_percent75-dark](/assets/images/screenshots/kt-panel/background-patterns_percent75-dark.png?v=639236188407120200){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent80"
![background-patterns_percent80-light](/assets/images/screenshots/kt-panel/background-patterns_percent80-light.png?v=639236188407506296){ .light .snapshot} ![background-patterns_percent80-dark](/assets/images/screenshots/kt-panel/background-patterns_percent80-dark.png?v=639236188407506296){.dark .snapshot}
:::
::: 


::: grid
::: card "Percent90"
![background-patterns_percent90-light](/assets/images/screenshots/kt-panel/background-patterns_percent90-light.png?v=639236188407994953){ .light .snapshot} ![background-patterns_percent90-dark](/assets/images/screenshots/kt-panel/background-patterns_percent90-dark.png?v=639236188407994953){.dark .snapshot}
:::
::: 


::: grid
::: card "LightDownwardDiagonal"
![background-patterns_lightdownwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_lightdownwarddiagonal-light.png?v=639236188415264208){ .light .snapshot} ![background-patterns_lightdownwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_lightdownwarddiagonal-dark.png?v=639236188415264208){.dark .snapshot}
:::
::: 


::: grid
::: card "LightUpwardDiagonal"
![background-patterns_lightupwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_lightupwarddiagonal-light.png?v=639236188415643812){ .light .snapshot} ![background-patterns_lightupwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_lightupwarddiagonal-dark.png?v=639236188415643812){.dark .snapshot}
:::
::: 


::: grid
::: card "DarkDownwardDiagonal"
![background-patterns_darkdownwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_darkdownwarddiagonal-light.png?v=639236188415992925){ .light .snapshot} ![background-patterns_darkdownwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_darkdownwarddiagonal-dark.png?v=639236188415992925){.dark .snapshot}
:::
::: 


::: grid
::: card "DarkUpwardDiagonal"
![background-patterns_darkupwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_darkupwarddiagonal-light.png?v=639236188416427896){ .light .snapshot} ![background-patterns_darkupwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_darkupwarddiagonal-dark.png?v=639236188416427896){.dark .snapshot}
:::
::: 


::: grid
::: card "WideDownwardDiagonal"
![background-patterns_widedownwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_widedownwarddiagonal-light.png?v=639236188423406320){ .light .snapshot} ![background-patterns_widedownwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_widedownwarddiagonal-dark.png?v=639236188423406320){.dark .snapshot}
:::
::: 


::: grid
::: card "WideUpwardDiagonal"
![background-patterns_wideupwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_wideupwarddiagonal-light.png?v=639236188423774280){ .light .snapshot} ![background-patterns_wideupwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_wideupwarddiagonal-dark.png?v=639236188423774280){.dark .snapshot}
:::
::: 


::: grid
::: card "LightVertical"
![background-patterns_lightvertical-light](/assets/images/screenshots/kt-panel/background-patterns_lightvertical-light.png?v=639236188424249986){ .light .snapshot} ![background-patterns_lightvertical-dark](/assets/images/screenshots/kt-panel/background-patterns_lightvertical-dark.png?v=639236188424249986){.dark .snapshot}
:::
::: 


::: grid
::: card "LightHorizontal"
![background-patterns_lighthorizontal-light](/assets/images/screenshots/kt-panel/background-patterns_lighthorizontal-light.png?v=639236188424673320){ .light .snapshot} ![background-patterns_lighthorizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_lighthorizontal-dark.png?v=639236188424673320){.dark .snapshot}
:::
::: 


::: grid
::: card "NarrowVertical"
![background-patterns_narrowvertical-light](/assets/images/screenshots/kt-panel/background-patterns_narrowvertical-light.png?v=639236188431821359){ .light .snapshot} ![background-patterns_narrowvertical-dark](/assets/images/screenshots/kt-panel/background-patterns_narrowvertical-dark.png?v=639236188431821359){.dark .snapshot}
:::
::: 


::: grid
::: card "NarrowHorizontal"
![background-patterns_narrowhorizontal-light](/assets/images/screenshots/kt-panel/background-patterns_narrowhorizontal-light.png?v=639236188432123553){ .light .snapshot} ![background-patterns_narrowhorizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_narrowhorizontal-dark.png?v=639236188432123553){.dark .snapshot}
:::
::: 


::: grid
::: card "DarkVertical"
![background-patterns_darkvertical-light](/assets/images/screenshots/kt-panel/background-patterns_darkvertical-light.png?v=639236188432444414){ .light .snapshot} ![background-patterns_darkvertical-dark](/assets/images/screenshots/kt-panel/background-patterns_darkvertical-dark.png?v=639236188432444414){.dark .snapshot}
:::
::: 


::: grid
::: card "DarkHorizontal"
![background-patterns_darkhorizontal-light](/assets/images/screenshots/kt-panel/background-patterns_darkhorizontal-light.png?v=639236188432842586){ .light .snapshot} ![background-patterns_darkhorizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_darkhorizontal-dark.png?v=639236188432842586){.dark .snapshot}
:::
::: 


::: grid
::: card "DashedDownwardDiagonal"
![background-patterns_dasheddownwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_dasheddownwarddiagonal-light.png?v=639236188433183687){ .light .snapshot} ![background-patterns_dasheddownwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_dasheddownwarddiagonal-dark.png?v=639236188433183687){.dark .snapshot}
:::
::: 


::: grid
::: card "DashedUpwardDiagonal"
![background-patterns_dashedupwarddiagonal-light](/assets/images/screenshots/kt-panel/background-patterns_dashedupwarddiagonal-light.png?v=639236188440193604){ .light .snapshot} ![background-patterns_dashedupwarddiagonal-dark](/assets/images/screenshots/kt-panel/background-patterns_dashedupwarddiagonal-dark.png?v=639236188440193604){.dark .snapshot}
:::
::: 


::: grid
::: card "DashedHorizontal"
![background-patterns_dashedhorizontal-light](/assets/images/screenshots/kt-panel/background-patterns_dashedhorizontal-light.png?v=639236188440588983){ .light .snapshot} ![background-patterns_dashedhorizontal-dark](/assets/images/screenshots/kt-panel/background-patterns_dashedhorizontal-dark.png?v=639236188440588983){.dark .snapshot}
:::
::: 


::: grid
::: card "DashedVertical"
![background-patterns_dashedvertical-light](/assets/images/screenshots/kt-panel/background-patterns_dashedvertical-light.png?v=639236188440891368){ .light .snapshot} ![background-patterns_dashedvertical-dark](/assets/images/screenshots/kt-panel/background-patterns_dashedvertical-dark.png?v=639236188440891368){.dark .snapshot}
:::
::: 


::: grid
::: card "SmallConfetti"
![background-patterns_smallconfetti-light](/assets/images/screenshots/kt-panel/background-patterns_smallconfetti-light.png?v=639236188441205256){ .light .snapshot} ![background-patterns_smallconfetti-dark](/assets/images/screenshots/kt-panel/background-patterns_smallconfetti-dark.png?v=639236188441205256){.dark .snapshot}
:::
::: 


::: grid
::: card "LargeConfetti"
![background-patterns_largeconfetti-light](/assets/images/screenshots/kt-panel/background-patterns_largeconfetti-light.png?v=639236188441562467){ .light .snapshot} ![background-patterns_largeconfetti-dark](/assets/images/screenshots/kt-panel/background-patterns_largeconfetti-dark.png?v=639236188441562467){.dark .snapshot}
:::
::: 


::: grid
::: card "ZigZag"
![background-patterns_zigzag-light](/assets/images/screenshots/kt-panel/background-patterns_zigzag-light.png?v=639236188448807799){ .light .snapshot} ![background-patterns_zigzag-dark](/assets/images/screenshots/kt-panel/background-patterns_zigzag-dark.png?v=639236188448807799){.dark .snapshot}
:::
::: 


::: grid
::: card "Wave"
![background-patterns_wave-light](/assets/images/screenshots/kt-panel/background-patterns_wave-light.png?v=639236188449461156){ .light .snapshot} ![background-patterns_wave-dark](/assets/images/screenshots/kt-panel/background-patterns_wave-dark.png?v=639236188449461156){.dark .snapshot}
:::
::: 


::: grid
::: card "DiagonalBrick"
![background-patterns_diagonalbrick-light](/assets/images/screenshots/kt-panel/background-patterns_diagonalbrick-light.png?v=639236188449994486){ .light .snapshot} ![background-patterns_diagonalbrick-dark](/assets/images/screenshots/kt-panel/background-patterns_diagonalbrick-dark.png?v=639236188449994486){.dark .snapshot}
:::
::: 


::: grid
::: card "HorizontalBrick"
![background-patterns_horizontalbrick-light](/assets/images/screenshots/kt-panel/background-patterns_horizontalbrick-light.png?v=639236188457316474){ .light .snapshot} ![background-patterns_horizontalbrick-dark](/assets/images/screenshots/kt-panel/background-patterns_horizontalbrick-dark.png?v=639236188457316474){.dark .snapshot}
:::
::: 


::: grid
::: card "Weave"
![background-patterns_weave-light](/assets/images/screenshots/kt-panel/background-patterns_weave-light.png?v=639236188457682568){ .light .snapshot} ![background-patterns_weave-dark](/assets/images/screenshots/kt-panel/background-patterns_weave-dark.png?v=639236188457682568){.dark .snapshot}
:::
::: 


::: grid
::: card "Plaid"
![background-patterns_plaid-light](/assets/images/screenshots/kt-panel/background-patterns_plaid-light.png?v=639236188458014794){ .light .snapshot} ![background-patterns_plaid-dark](/assets/images/screenshots/kt-panel/background-patterns_plaid-dark.png?v=639236188458014794){.dark .snapshot}
:::
::: 


::: grid
::: card "Divot"
![background-patterns_divot-light](/assets/images/screenshots/kt-panel/background-patterns_divot-light.png?v=639236188458437340){ .light .snapshot} ![background-patterns_divot-dark](/assets/images/screenshots/kt-panel/background-patterns_divot-dark.png?v=639236188458437340){.dark .snapshot}
:::
::: 


::: grid
::: card "DottedGrid"
![background-patterns_dottedgrid-light](/assets/images/screenshots/kt-panel/background-patterns_dottedgrid-light.png?v=639236188465384794){ .light .snapshot} ![background-patterns_dottedgrid-dark](/assets/images/screenshots/kt-panel/background-patterns_dottedgrid-dark.png?v=639236188465384794){.dark .snapshot}
:::
::: 


::: grid
::: card "DottedDiamond"
![background-patterns_dotteddiamond-light](/assets/images/screenshots/kt-panel/background-patterns_dotteddiamond-light.png?v=639236188465800767){ .light .snapshot} ![background-patterns_dotteddiamond-dark](/assets/images/screenshots/kt-panel/background-patterns_dotteddiamond-dark.png?v=639236188465800767){.dark .snapshot}
:::
::: 


::: grid
::: card "Shingle"
![background-patterns_shingle-light](/assets/images/screenshots/kt-panel/background-patterns_shingle-light.png?v=639236188466220320){ .light .snapshot} ![background-patterns_shingle-dark](/assets/images/screenshots/kt-panel/background-patterns_shingle-dark.png?v=639236188466220320){.dark .snapshot}
:::
::: 


::: grid
::: card "Trellis"
![background-patterns_trellis-light](/assets/images/screenshots/kt-panel/background-patterns_trellis-light.png?v=639236188466677740){ .light .snapshot} ![background-patterns_trellis-dark](/assets/images/screenshots/kt-panel/background-patterns_trellis-dark.png?v=639236188466677740){.dark .snapshot}
:::
::: 


::: grid
::: card "Sphere"
![background-patterns_sphere-light](/assets/images/screenshots/kt-panel/background-patterns_sphere-light.png?v=639236188473817700){ .light .snapshot} ![background-patterns_sphere-dark](/assets/images/screenshots/kt-panel/background-patterns_sphere-dark.png?v=639236188473817700){.dark .snapshot}
:::
::: 


::: grid
::: card "SmallGrid"
![background-patterns_smallgrid-light](/assets/images/screenshots/kt-panel/background-patterns_smallgrid-light.png?v=639236188474111053){ .light .snapshot} ![background-patterns_smallgrid-dark](/assets/images/screenshots/kt-panel/background-patterns_smallgrid-dark.png?v=639236188474111053){.dark .snapshot}
:::
::: 


::: grid
::: card "SmallCheckerBoard"
![background-patterns_smallcheckerboard-light](/assets/images/screenshots/kt-panel/background-patterns_smallcheckerboard-light.png?v=639236188474435204){ .light .snapshot} ![background-patterns_smallcheckerboard-dark](/assets/images/screenshots/kt-panel/background-patterns_smallcheckerboard-dark.png?v=639236188474435204){.dark .snapshot}
:::
::: 


::: grid
::: card "LargeCheckerBoard"
![background-patterns_largecheckerboard-light](/assets/images/screenshots/kt-panel/background-patterns_largecheckerboard-light.png?v=639236188474738053){ .light .snapshot} ![background-patterns_largecheckerboard-dark](/assets/images/screenshots/kt-panel/background-patterns_largecheckerboard-dark.png?v=639236188474738053){.dark .snapshot}
:::
::: 


::: grid
::: card "OutlinedDiamond"
![background-patterns_outlineddiamond-light](/assets/images/screenshots/kt-panel/background-patterns_outlineddiamond-light.png?v=639236188475129540){ .light .snapshot} ![background-patterns_outlineddiamond-dark](/assets/images/screenshots/kt-panel/background-patterns_outlineddiamond-dark.png?v=639236188475129540){.dark .snapshot}
:::
::: 


::: grid
::: card "SolidDiamond"
![background-patterns_soliddiamond-light](/assets/images/screenshots/kt-panel/background-patterns_soliddiamond-light.png?v=639236188482018426){ .light .snapshot} ![background-patterns_soliddiamond-dark](/assets/images/screenshots/kt-panel/background-patterns_soliddiamond-dark.png?v=639236188482018426){.dark .snapshot}
:::
::: 

:::

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

