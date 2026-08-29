---
type: concept
title: "KimTools / Controls / ProgressRadial"
description: "A customizable circular progress indicator with gradient arcs, independent cap styles, sub/superscript annotations, and smooth animation support."
source: "https://kimtoo.net/controls/kt-progress-radial/"
path: /controls/kt-progress-radial/
updated: 2026-08-29
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-29T11:03:15.723Z"
---
---
title: "KimTools / Controls / ProgressRadial"
description: "A customizable circular progress indicator with gradient arcs, independent cap styles, sub/superscript annotations, and smooth animation support."
keywords: ["KimTools", "Controls", "KtProgressRadial", "ProgressRadial", "ProgressBar"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `ProgressRadial`
A customizable circular progress indicator with gradient arcs, independent cap styles, sub/superscript annotations, and smooth animation support.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-progress-radial-light](/assets/images/screenshots/kt-progress-radial/kt-progress-radial-light.png?v=639234523710182812){ .light .snapshot} ![kt-progress-radial-dark](/assets/images/screenshots/kt-progress-radial/kt-progress-radial-dark.png?v=639234523710182812){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::

::: hero layout:split glow:true
## Flat / Minimal Radial
A clean solid-color ring with uniform track thickness and flat caps. No gradients, no ornamentation — just a precise arc against a subtle track.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 240,
    Height = 240,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var radial = new KtProgressRadial
{
    Width = 180,
    Height = 180,
    Margin = new Padding(10),
    Value = 42,
    Minimum = 0,
    Maximum = 100,
    Background = KtColor.BASE_2,
    Foreground = KtColor.PRIMARY % 80,
    Thickness = 6,
    CircleMargin = 10,
    CapStart = KtProgressRadial.CapStyles.Flat,
    CapEnd = KtProgressRadial.CapStyles.Flat,
    ValueColor = KtColor.CONTENT,
    ValueMargin = new Padding(0)
};
	
panel.Controls.Add(radial);
```
== side
::: tabs
== tab "Auto" icon:app-window
![radial-flat-light](/assets/images/screenshots/kt-progress-radial/radial-flat-light.png?v=639234523798446983){ .light .snapshot} ![radial-flat-dark](/assets/images/screenshots/kt-progress-radial/radial-flat-dark.png?v=639234523798446983){.dark .snapshot}

== tab "Light" icon:sun
![radial-flat-light](/assets/images/screenshots/kt-progress-radial/radial-flat-light.png?v=639234523798446983){  .snapshot}

== tab "Dark" icon:moon
![radial-flat-dark](/assets/images/screenshots/kt-progress-radial/radial-flat-dark.png?v=639234523798446983){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Gradient / Neon Radial
A vivid Fuchsia-to-Violet gradient sweep with a thick, rounded progress arc. High contrast against a deep base makes the ring feel electric and modern.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 240,
    Height = 240,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var radial = new KtProgressRadial
{
    Width = 180,
    Height = 180,
    Margin = new Padding(10),
    Value = 78,
    Minimum = 0,
    Maximum = 100,
    Background = KtColor.BASE_1,
    Foreground = (KtColor.Fuchsia, KtColor.Violet, 45),
    Thickness = 6,
    CircleMargin = 10,
    CapStart = KtProgressRadial.CapStyles.Round,
    CapEnd = KtProgressRadial.CapStyles.Round,
    ValueColor = KtColor.White,
    ValueMargin = new Padding(0)
};
	
panel.Controls.Add(radial);
```
== side
::: tabs
== tab "Auto" icon:app-window
![radial-gradient-light](/assets/images/screenshots/kt-progress-radial/radial-gradient-light.png?v=639234523842388239){ .light .snapshot} ![radial-gradient-dark](/assets/images/screenshots/kt-progress-radial/radial-gradient-dark.png?v=639234523842388239){.dark .snapshot}

== tab "Light" icon:sun
![radial-gradient-light](/assets/images/screenshots/kt-progress-radial/radial-gradient-light.png?v=639234523842382224){  .snapshot}

== tab "Dark" icon:moon
![radial-gradient-dark](/assets/images/screenshots/kt-progress-radial/radial-gradient-dark.png?v=639234523842382224){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Cap Styles (`CapStart`, `CapEnd`)
Individual control over the start and end line caps: `Flat`, `Round`, `Arrow`, or `Triangle`. Here the arc begins with an arrow and terminates in a triangle for a directional, gauge-like read.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 240,
    Height = 240,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var radial = new KtProgressRadial
{
    Width = 180,
    Height = 180,
    Margin = new Padding(10),
    Value = 60,
    Minimum = 0,
    Maximum = 100,
    Background = KtColor.BASE_2,
    Foreground = KtColor.WARNING,
    Thickness = 6,
    CircleMargin = 10,
    CapStart = KtProgressRadial.CapStyles.Arrow,
    CapEnd = KtProgressRadial.CapStyles.Triangle,
    ValueColor = KtColor.CONTENT,
    ValueMargin = new Padding(0)
};
	
panel.Controls.Add(radial);
```
== side
::: tabs
== tab "Auto" icon:app-window
![radial-caps-light](/assets/images/screenshots/kt-progress-radial/radial-caps-light.png?v=639234523886087418){ .light .snapshot} ![radial-caps-dark](/assets/images/screenshots/kt-progress-radial/radial-caps-dark.png?v=639234523886087418){.dark .snapshot}

== tab "Light" icon:sun
![radial-caps-light](/assets/images/screenshots/kt-progress-radial/radial-caps-light.png?v=639234523886087418){  .snapshot}

== tab "Dark" icon:moon
![radial-caps-dark](/assets/images/screenshots/kt-progress-radial/radial-caps-dark.png?v=639234523886087418){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Track Thickness (`Thickness`)
Control the background track weight independently. A thin 3 px track beneath the default bold fill creates strong hierarchical focus on the current value.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 240,
    Height = 240,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var radial = new KtProgressRadial
{
    Width = 180,
    Height = 180,
    Margin = new Padding(10),
    Value = 55,
    Minimum = 0,
    Maximum = 100,
    Background = KtColor.BASE_2,
    Foreground = (KtColor.INFO, KtColor.PRIMARY),
    Thickness = 3,
    CircleMargin = 10,
    CapStart = KtProgressRadial.CapStyles.Round,
    CapEnd = KtProgressRadial.CapStyles.Round,
    ValueColor = KtColor.CONTENT,
    ValueMargin = new Padding(0)
};
	
panel.Controls.Add(radial);
```
== side
::: tabs
== tab "Auto" icon:app-window
![radial-thickness-light](/assets/images/screenshots/kt-progress-radial/radial-thickness-light.png?v=639234523929883173){ .light .snapshot} ![radial-thickness-dark](/assets/images/screenshots/kt-progress-radial/radial-thickness-dark.png?v=639234523929883173){.dark .snapshot}

== tab "Light" icon:sun
![radial-thickness-light](/assets/images/screenshots/kt-progress-radial/radial-thickness-light.png?v=639234523929883173){  .snapshot}

== tab "Dark" icon:moon
![radial-thickness-dark](/assets/images/screenshots/kt-progress-radial/radial-thickness-dark.png?v=639234523929883173){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Percentage Mode (`IsPercentage`)
Set `IsPercentage = true` to display the value as a percent with a `%` superscript. The superscript is automatically positioned and tinted via `SuperScriptColor`.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 240,
    Height = 240,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var radial = new KtProgressRadial
{
    Width = 180,
    Height = 180,
    Margin = new Padding(10),
    Value = 65,
    Minimum = 0,
    Maximum = 100,
    IsPercentage = true,
    Background = KtColor.BASE_2,
    Foreground = KtColor.SUCCESS,
    Thickness = 8,
    CircleMargin = 10,
    CapStart = KtProgressRadial.CapStyles.Round,
    CapEnd = KtProgressRadial.CapStyles.Round,
    ValueColor = KtColor.CONTENT,
    SuperScriptColor = KtColor.CONTENT % 70,
    ValueMargin = new Padding(0)
};
	
panel.Controls.Add(radial);
```
== side
::: tabs
== tab "Auto" icon:app-window
![radial-percentage-light](/assets/images/screenshots/kt-progress-radial/radial-percentage-light.png?v=639234523973901549){ .light .snapshot} ![radial-percentage-dark](/assets/images/screenshots/kt-progress-radial/radial-percentage-dark.png?v=639234523973901549){.dark .snapshot}

== tab "Light" icon:sun
![radial-percentage-light](/assets/images/screenshots/kt-progress-radial/radial-percentage-light.png?v=639234523973901549){  .snapshot}

== tab "Dark" icon:moon
![radial-percentage-dark](/assets/images/screenshots/kt-progress-radial/radial-percentage-dark.png?v=639234523973901549){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Subscript & Superscript (`SubScriptText`, `SuperScriptText`)
Annotate the center value with secondary labels. `SuperScriptText` sits above-right, `SubScriptText` sits below-right — each with independent margins, colors, and a shared `SecondaryFont`.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 260,
    Height = 260,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var radial = new KtProgressRadial
{
    Width = 200,
    Height = 200,
    Margin = new Padding(10),
    Value = 12,
    Minimum = 0,
    Maximum = 32,
    Background = KtColor.BASE_2,
    Foreground = (KtColor.Rose, KtColor.Pink),
    Thickness = 6,
    CircleMargin = 10,
    CapStart = KtProgressRadial.CapStyles.Round,
    CapEnd = KtProgressRadial.CapStyles.Round,
    ValueColor = KtColor.CONTENT,
    SuperScriptText = "GB",
    SuperScriptColor = KtColor.CONTENT % 70,
    SuperScriptMargin = new Padding(5, 20, 0, 0),
    SubScriptText = "used",
    SubScriptColor = KtColor.CONTENT % 50,
    SubScriptMargin = new Padding(5, -20, 0, 0),
    SecondaryFont = new Font("Segoe UI", 8f),
    ValueMargin = new Padding(0)
};
	
panel.Controls.Add(radial);
```
== side
::: tabs
== tab "Auto" icon:app-window
![radial-sub-superscript-light](/assets/images/screenshots/kt-progress-radial/radial-sub-superscript-light.png?v=639234524018199279){ .light .snapshot} ![radial-sub-superscript-dark](/assets/images/screenshots/kt-progress-radial/radial-sub-superscript-dark.png?v=639234524018199279){.dark .snapshot}

== tab "Light" icon:sun
![radial-sub-superscript-light](/assets/images/screenshots/kt-progress-radial/radial-sub-superscript-light.png?v=639234524018199279){  .snapshot}

== tab "Dark" icon:moon
![radial-sub-superscript-dark](/assets/images/screenshots/kt-progress-radial/radial-sub-superscript-dark.png?v=639234524018199279){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Animated / Indeterminate (`Animated`, `AnimationInterval`, `AnimationSpeed`)
When `Animated = true` and the value is between min and max, the arc continuously rotates. Control the spin speed with `AnimationInterval` (degrees per tick) and `AnimationSpeed` (timer interval in ms).
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 240,
    Height = 240,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var radial = new KtProgressRadial
{
    Width = 180,
    Height = 180,
    Margin = new Padding(10),
    Value = 50,
    Minimum = 0,
    Maximum = 100,
    Animated = true,
    AnimationInterval = 4,
    AnimationSpeed = 30,
    Background = KtColor.BASE_2,
    Foreground = KtColor.WARNING,
    Thickness = 6,
    CircleMargin = 10,
    CapStart = KtProgressRadial.CapStyles.Round,
    CapEnd = KtProgressRadial.CapStyles.Round,
    ValueColor = KtColor.CONTENT,
    ValueMargin = new Padding(0)
};
	
panel.Controls.Add(radial);
```
== side
::: tabs
== tab "Auto" icon:app-window
![radial-animated-light](/assets/images/screenshots/kt-progress-radial/radial-animated-light.png?v=639234524063055068){ .light .snapshot} ![radial-animated-dark](/assets/images/screenshots/kt-progress-radial/radial-animated-dark.png?v=639234524063055068){.dark .snapshot}

== tab "Light" icon:sun
![radial-animated-light](/assets/images/screenshots/kt-progress-radial/radial-animated-light.png?v=639234524063055068){  .snapshot}

== tab "Dark" icon:moon
![radial-animated-dark](/assets/images/screenshots/kt-progress-radial/radial-animated-dark.png?v=639234524063055068){ .snapshot}

:::
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "Foreground" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the progress color.* |
| ::: tag "SubScriptColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the subscript color.* |
| ::: tag "SuperScriptColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the superscript color.* |
| ::: tag "Background" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the progress background color.* |
| ::: tag "ValueColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the progress background color.* |
| ::: tag "CapStart" icon:wrench | ::: tag "CapStyles" color:#6B7C94 icon:check-check  | *Sets the rendering style of the progress starting point.* |
| ::: tag "CapEnd" icon:wrench | ::: tag "CapStyles" color:#6B7C94 icon:check-check  | *Sets the rendering style of the progress ending point.* |
| ::: tag "Animated" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether the progress movement will be animated.* |
| ::: tag "IsPercentage" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether the progress value will be in percentage format.* |
| ::: tag "Font" icon:wrench | ::: tag "Font" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.font?view=netframework-4.8  | *Sets the control's primary font.* |
| ::: tag "SecondaryFont" icon:wrench | ::: tag "Font" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.font?view=netframework-4.8  | *Sets the secondary font.* |
| ::: tag "Value" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the progress value.* |
| ::: tag "Minimum" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the minimum progress value.* |
| ::: tag "Maximum" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the maximum progress value.* |
| ::: tag "CircleMargin" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the circle margin.* |
| ::: tag "Thickness" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the line thickness.* |
| ::: tag "AnimationInterval" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the animation interval.* |
| ::: tag "AnimationSpeed" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the animation speed.* |
| ::: tag "SubScriptText" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the subscript text.* |
| ::: tag "SuperScriptText" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the superscript text.* |
| ::: tag "ValueMargin" icon:wrench | ::: tag "Padding" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.padding?view=netframework-4.8  | *Sets the value text margin.* |
| ::: tag "SuperScriptMargin" icon:wrench | ::: tag "Padding" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.padding?view=netframework-4.8  | *Sets the superscript margin.* |
| ::: tag "SubScriptMargin" icon:wrench | ::: tag "Padding" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.padding?view=netframework-4.8  | *Sets the subscript margin.* |
