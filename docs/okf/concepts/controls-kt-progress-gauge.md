---
type: concept
title: "KimTools / Controls / ProgressGauge"
description: "An arc-based gauge meter with dual-range color support, automatic background generation, cap style control, and smooth value transitions."
source: "https://kimtoo.net/controls/kt-progress-gauge/"
path: /controls/kt-progress-gauge/
updated: 2026-08-29
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-29T20:11:34.591Z"
---
---
title: "KimTools / Controls / ProgressGauge"
description: "An arc-based gauge meter with dual-range color support, automatic background generation, cap style control, and smooth value transitions."
keywords: ["KimTools", "Controls", "KtProgressGauge", "ProgressGauge", "UserControl"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `ProgressGauge`
An arc-based gauge meter with dual-range color support, automatic background generation, cap style control, and smooth value transitions.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-progress-gauge-light](/assets/images/screenshots/kt-progress-gauge/kt-progress-gauge-light.png?v=639234523579673539){ .light .snapshot} ![kt-progress-gauge-dark](/assets/images/screenshots/kt-progress-gauge/kt-progress-gauge-dark.png?v=639234523579673539){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::

::: hero layout:split glow:true
## Flat / Minimal Gauge
A clean semicircular arc with flat line caps and a uniform success color. No range labels — just the value arc and a subtle track for uncluttered dashboards.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 260,
    Height = 180,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var gauge = new KtProgressGauge
{
    Width = 220,
    Height = 140,
    Margin = new Padding(5),
    Value = 55,
    Minimum = 0,
    Maximum = 100,
    Thickness = 16,
    ProgressColorLow = KtColor.SUCCESS,
    ProgressColorHigh = KtColor.SUCCESS,
    ProgressBackColor = KtColor.BASE_3,
    ProgressCap = KtProgressGauge.CapStyles.Flat,
    ShowValueLabel = true,
    ShowRangeLabels = false,
    TextValueColor = KtColor.CONTENT,
};
	
panel.Controls.Add(gauge);
```
== side
::: tabs
== tab "Auto" icon:app-window
![gauge-flat-light](/assets/images/screenshots/kt-progress-gauge/gauge-flat-light.png?v=639234523613226743){ .light .snapshot} ![gauge-flat-dark](/assets/images/screenshots/kt-progress-gauge/gauge-flat-dark.png?v=639234523613226743){.dark .snapshot}

== tab "Light" icon:sun
![gauge-flat-light](/assets/images/screenshots/kt-progress-gauge/gauge-flat-light.png?v=639234523613226743){  .snapshot}

== tab "Dark" icon:moon
![gauge-flat-dark](/assets/images/screenshots/kt-progress-gauge/gauge-flat-dark.png?v=639234523613226743){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Dual-Range Colors (`ProgressColorLow`, `ProgressColorHigh`, `WarningMark`)
Set `WarningMark` to define the threshold between low and high ranges. Below the mark the arc renders `ProgressColorLow`; above it switches to `ProgressColorHigh`. Useful for health, load, or risk indicators that need immediate visual state changes.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 260,
    Height = 180,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var gauge = new KtProgressGauge
{
    Width = 220,
    Height = 140,
    Margin = new Padding(5),
    Value = 82,
    Minimum = 0,
    Maximum = 100,
    Thickness = 20,
    ProgressColorLow = KtColor.SUCCESS,
    ProgressColorHigh = KtColor.ERROR,
    ProgressBackColor = KtColor.BASE_3,
    ProgressCap = KtProgressGauge.CapStyles.Round,
    WarningMark = 70,
    ShowValueLabel = true,
    ShowRangeLabels = true,
    TextValueColor = KtColor.CONTENT,
    TextRangeColor = KtColor.CONTENT % 50,
};
	
panel.Controls.Add(gauge);
```
== side
::: tabs
== tab "Auto" icon:app-window
![gauge-dual-range-light](/assets/images/screenshots/kt-progress-gauge/gauge-dual-range-light.png?v=639234523629716492){ .light .snapshot} ![gauge-dual-range-dark](/assets/images/screenshots/kt-progress-gauge/gauge-dual-range-dark.png?v=639234523629716492){.dark .snapshot}

== tab "Light" icon:sun
![gauge-dual-range-light](/assets/images/screenshots/kt-progress-gauge/gauge-dual-range-light.png?v=639234523629716492){  .snapshot}

== tab "Dark" icon:moon
![gauge-dual-range-dark](/assets/images/screenshots/kt-progress-gauge/gauge-dual-range-dark.png?v=639234523629716492){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Arc Thickness (`Thickness`)
Scale the gauge weight from a hairline 8 px to a bold 28 px. Thicker arcs feel more prominent and tactile; thinner arcs suit dense dashboard grids.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 320,
    Height = 180,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.LeftToRight
};
	
var thin = new KtProgressGauge
{
    Width = 90,
    Height = 120,
    Margin = new Padding(5),
    Value = 60,
    Minimum = 0,
    Maximum = 100,
    Thickness = 8,
    ProgressColorLow = KtColor.PRIMARY,
    ProgressColorHigh = KtColor.PRIMARY,
    ProgressBackColor = KtColor.BASE_3,
    ProgressCap = KtProgressGauge.CapStyles.Round,
    ShowValueLabel = false,
    ShowRangeLabels = false,
};
	
var medium = new KtProgressGauge
{
    Width = 90,
    Height = 120,
    Margin = new Padding(5),
    Value = 60,
    Minimum = 0,
    Maximum = 100,
    Thickness = 16,
    ProgressColorLow = KtColor.PRIMARY,
    ProgressColorHigh = KtColor.PRIMARY,
    ProgressBackColor = KtColor.BASE_3,
    ProgressCap = KtProgressGauge.CapStyles.Round,
    ShowValueLabel = false,
    ShowRangeLabels = false,
};
	
var thick = new KtProgressGauge
{
    Width = 90,
    Height = 120,
    Margin = new Padding(5),
    Value = 60,
    Minimum = 0,
    Maximum = 100,
    Thickness = 28,
    ProgressColorLow = KtColor.PRIMARY,
    ProgressColorHigh = KtColor.PRIMARY,
    ProgressBackColor = KtColor.BASE_3,
    ProgressCap = KtProgressGauge.CapStyles.Round,
    ShowValueLabel = false,
    ShowRangeLabels = false,
};
	
panel.Controls.Add(thin);
panel.Controls.Add(medium);
panel.Controls.Add(thick);
```
== side
::: tabs
== tab "Auto" icon:app-window
![gauge-thickness-light](/assets/images/screenshots/kt-progress-gauge/gauge-thickness-light.png?v=639234523646758995){ .light .snapshot} ![gauge-thickness-dark](/assets/images/screenshots/kt-progress-gauge/gauge-thickness-dark.png?v=639234523646758995){.dark .snapshot}

== tab "Light" icon:sun
![gauge-thickness-light](/assets/images/screenshots/kt-progress-gauge/gauge-thickness-light.png?v=639234523646748976){  .snapshot}

== tab "Dark" icon:moon
![gauge-thickness-dark](/assets/images/screenshots/kt-progress-gauge/gauge-thickness-dark.png?v=639234523646748976){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Value & Range Labels (`ShowValueLabel`, `ShowRangeLabels`, `Prefix`, `Suffix`)
Toggle the center value label and the min/max range labels independently. Use `Prefix` and `Suffix` to format the reading (e.g., `$`, `%`, `°C`).
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 320,
    Height = 200,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.LeftToRight
};
	
var valueOnly = new KtProgressGauge
{
    Width = 130,
    Height = 140,
    Margin = new Padding(5),
    Value = 45,
    Minimum = 0,
    Maximum = 100,
    Thickness = 18,
    ProgressColorLow = KtColor.INFO,
    ProgressColorHigh = KtColor.INFO,
    ProgressBackColor = KtColor.BASE_3,
    ProgressCap = KtProgressGauge.CapStyles.Round,
    ShowValueLabel = true,
    ShowRangeLabels = false,
    Prefix = "",
    Suffix = "%",
    TextValueColor = KtColor.CONTENT,
};
	
var fullLabels = new KtProgressGauge
{
    Width = 130,
    Height = 140,
    Margin = new Padding(5),
    Value = 78,
    Minimum = 0,
    Maximum = 100,
    Thickness = 18,
    ProgressColorLow = KtColor.WARNING,
    ProgressColorHigh = KtColor.WARNING,
    ProgressBackColor = KtColor.BASE_3,
    ProgressCap = KtProgressGauge.CapStyles.Round,
    ShowValueLabel = true,
    ShowRangeLabels = true,
    Prefix = "",
    Suffix = "",
    TextValueColor = KtColor.CONTENT,
    TextRangeColor = KtColor.CONTENT % 50,
};
	
panel.Controls.Add(valueOnly);
panel.Controls.Add(fullLabels);
```
== side
::: tabs
== tab "Auto" icon:app-window
![gauge-labels-light](/assets/images/screenshots/kt-progress-gauge/gauge-labels-light.png?v=639234523664214089){ .light .snapshot} ![gauge-labels-dark](/assets/images/screenshots/kt-progress-gauge/gauge-labels-dark.png?v=639234523664214089){.dark .snapshot}

== tab "Light" icon:sun
![gauge-labels-light](/assets/images/screenshots/kt-progress-gauge/gauge-labels-light.png?v=639234523664214089){  .snapshot}

== tab "Dark" icon:moon
![gauge-labels-dark](/assets/images/screenshots/kt-progress-gauge/gauge-labels-dark.png?v=639234523664214089){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Auto-Generated Track (`AutoGenerateProgressColorWhenLow`, `LighteningFactor`)
When `AutoGenerateProgressColorWhenLow = true`, the background track is automatically tinted from `ProgressColorLow` using `LighteningFactor` (default 70). This keeps the track visually related to the fill without manual color management.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 260,
    Height = 180,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var gauge = new KtProgressGauge
{
    Width = 220,
    Height = 140,
    Margin = new Padding(5),
    Value = 35,
    Minimum = 0,
    Maximum = 100,
    Thickness = 20,
    ProgressColorLow = KtColor.PRIMARY,
    ProgressColorHigh = KtColor.ERROR,
    ProgressBackColor = KtColor.BASE_3,
    ProgressCap = KtProgressGauge.CapStyles.Round,
    WarningMark = 70,
    AutoGenerateProgressColorWhenLow = true,
    AutoGenerateProgressColorWhenHigh = false,
    LighteningFactor = 70,
    ShowValueLabel = true,
    ShowRangeLabels = true,
    TextValueColor = KtColor.CONTENT,
    TextRangeColor = KtColor.CONTENT % 50,
};
	
panel.Controls.Add(gauge);
```
== side
::: tabs
== tab "Auto" icon:app-window
![gauge-auto-color-light](/assets/images/screenshots/kt-progress-gauge/gauge-auto-color-light.png?v=639234523681244893){ .light .snapshot} ![gauge-auto-color-dark](/assets/images/screenshots/kt-progress-gauge/gauge-auto-color-dark.png?v=639234523681244893){.dark .snapshot}

== tab "Light" icon:sun
![gauge-auto-color-light](/assets/images/screenshots/kt-progress-gauge/gauge-auto-color-light.png?v=639234523681244893){  .snapshot}

== tab "Dark" icon:moon
![gauge-auto-color-dark](/assets/images/screenshots/kt-progress-gauge/gauge-auto-color-dark.png?v=639234523681244893){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Cap Styles (`ProgressCap`)
`Flat` produces a hard-edged arc termination; `Round` softens the ends with circular caps. Round caps feel friendlier and more modern; flat caps read as precise and technical.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 260,
    Height = 180,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.LeftToRight
};
	
var flat = new KtProgressGauge
{
    Width = 100,
    Height = 120,
    Margin = new Padding(5),
    Value = 60,
    Minimum = 0,
    Maximum = 100,
    Thickness = 18,
    ProgressColorLow = KtColor.SUCCESS,
    ProgressColorHigh = KtColor.SUCCESS,
    ProgressBackColor = KtColor.BASE_3,
    ProgressCap = KtProgressGauge.CapStyles.Flat,
    ShowValueLabel = false,
    ShowRangeLabels = false,
};
	
var round = new KtProgressGauge
{
    Width = 100,
    Height = 120,
    Margin = new Padding(5),
    Value = 60,
    Minimum = 0,
    Maximum = 100,
    Thickness = 18,
    ProgressColorLow = KtColor.SUCCESS,
    ProgressColorHigh = KtColor.SUCCESS,
    ProgressBackColor = KtColor.BASE_3,
    ProgressCap = KtProgressGauge.CapStyles.Round,
    ShowValueLabel = false,
    ShowRangeLabels = false,
};
	
panel.Controls.Add(flat);
panel.Controls.Add(round);
```
== side
::: tabs
== tab "Auto" icon:app-window
![gauge-caps-light](/assets/images/screenshots/kt-progress-gauge/gauge-caps-light.png?v=639234523698079984){ .light .snapshot} ![gauge-caps-dark](/assets/images/screenshots/kt-progress-gauge/gauge-caps-dark.png?v=639234523698079984){.dark .snapshot}

== tab "Light" icon:sun
![gauge-caps-light](/assets/images/screenshots/kt-progress-gauge/gauge-caps-light.png?v=639234523698079984){  .snapshot}

== tab "Dark" icon:moon
![gauge-caps-dark](/assets/images/screenshots/kt-progress-gauge/gauge-caps-dark.png?v=639234523698079984){ .snapshot}

:::
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "ProgressColorLow" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Gauge's progress color whenever it is within the low or minimum value ranges.* |
| ::: tag "ProgressColorHigh" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the gauge's progress color whenever it is within the high or maximum value ranges as specified by the property 'ProgressHighValueMark'.* |
| ::: tag "TextRangeColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the gauge's range labels' color.* |
| ::: tag "TextValueColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the gauge's value label color.* |
| ::: tag "ProgressBackColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the gauge's progress bakcground color.* |
| ::: tag "ProgressCap" icon:wrench | ::: tag "CapStyles" color:#6B7C94 icon:check-check  | *Sets the rendering style of the progress edges.* |
| ::: tag "ShowRangeLabels" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether the gauge's range labels will be displayed.* |
| ::: tag "ShowValueLabel" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether the gauge's value label will be displayed.* |
| ::: tag "AutoGenerateProgressColorWhenLow" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *When set to true, a lighter background color will be automatically generated for the progress background color that is based on the set 'ProgressColorLow' color.* |
| ::: tag "AutoGenerateProgressColorWhenHigh" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *When set to true, a lighter background color will be automatically generated for the progress background color that is based on the set 'ProgressColorHigh' color.* |
| ::: tag "Font" icon:wrench | ::: tag "Font" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.font?view=netframework-4.8  | *Sets the gauge's standard font.* |
| ::: tag "RangeLabelsFont" icon:wrench | ::: tag "Font" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.font?view=netframework-4.8  | *Sets the Range labels font.* |
| ::: tag "Value" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the gauge's pointer value.* |
| ::: tag "Minimum" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the minimum range value.* |
| ::: tag "Maximum" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the maximum range value.* |
| ::: tag "WarningMark" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the point at which the gauge should mark as the beginning of high value ranges.* |
| ::: tag "LighteningFactor" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Applies a lightening value/factor that will be used to generate the progress background color when the value set is either high or low. (Default is 70)* |
| ::: tag "Thickness" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the gauge's progress thickness.* |
| ::: tag "RangeEnd" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the Range end.* |
| ::: tag "RangeStart" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the Range start.* |
| ::: tag "ProgressHighValueMark" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the Progress high value mark.* |
| ::: tag "Prefix" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the gauge's prefix text that precedes the gauge value.* |
| ::: tag "Suffix" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the gauge's suffix text that is displayed besides the gauge value.* |
