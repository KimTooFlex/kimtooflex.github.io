---
type: concept
title: "KimTools / Controls / Spinner"
description: "A customizable animated loading spinner with preset styles, dash patterns, cap shapes, speed control, and optional center text."
source: "https://kimtoo.net/controls/kt-spinner/"
path: /controls/kt-spinner/
updated: 2026-08-29
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-29T11:52:42.919Z"
---
---
title: "KimTools / Controls / Spinner"
description: "A customizable animated loading spinner with preset styles, dash patterns, cap shapes, speed control, and optional center text."
keywords: ["KimTools", "Controls", "KtSpinner", "Spinner", "LoaderBase"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `Spinner`
A customizable animated loading spinner with preset styles, dash patterns, cap shapes, speed control, and optional center text.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-spinner-light](/assets/images/screenshots/kt-spinner/kt-spinner-light.png?v=639234525321317628){ .light .snapshot} ![kt-spinner-dark](/assets/images/screenshots/kt-spinner/kt-spinner-dark.png?v=639234525321317628){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::

::: hero layout:split glow:true
## Style Presets (`Preset`, `AllowPresets`)
Enable `AllowPresets` and pick from `Solid`, `Dash`, `Dot`, or `Diamond`. Each preset automatically configures `Style`, `DashCap`, and `CapStyle` to a cohesive look.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 420,
    Height = 120,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.LeftToRight
};
	
var solid = new KtSpinner
{
    Width = 60,
    Height = 60,
    Margin = new Padding(10), 
    Preset = KtSpinner.Presets.Solid,
    Color = KtColor.PRIMARY,
    Thickness = 6,
};
	
var dash = new KtSpinner
{
    Width = 60,
    Height = 60,
    Margin = new Padding(10),
    Preset = KtSpinner.Presets.Dash,
    Color = KtColor.PRIMARY,
    Thickness = 6,
};
	
var dot = new KtSpinner
{
    Width = 60,
    Height = 60,
    Margin = new Padding(10),
     Preset = KtSpinner.Presets.Dot,
    Color = KtColor.PRIMARY,
    Thickness = 6,
};
	
var diamond = new KtSpinner
{
    Width = 60,
    Height = 60,
    Margin = new Padding(10),
     Preset = KtSpinner.Presets.Diamond,
    Color = KtColor.PRIMARY,
    Thickness = 6,
};
	
panel.Controls.Add(solid);
panel.Controls.Add(dash);
panel.Controls.Add(dot);
panel.Controls.Add(diamond);
```
== side
::: tabs
== tab "Auto" icon:app-window
![spinner-presets-light](/assets/images/screenshots/kt-spinner/spinner-presets-light.png?v=639234525361518938){ .light .snapshot} ![spinner-presets-dark](/assets/images/screenshots/kt-spinner/spinner-presets-dark.png?v=639234525361518938){.dark .snapshot}

== tab "Light" icon:sun
![spinner-presets-light](/assets/images/screenshots/kt-spinner/spinner-presets-light.png?v=639234525361518938){  .snapshot}

== tab "Dark" icon:moon
![spinner-presets-dark](/assets/images/screenshots/kt-spinner/spinner-presets-dark.png?v=639234525361518938){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Ring Thickness (`Thickness`)
Scale the stroke weight from 4 px to 14 px. Thicker rings feel bolder and more prominent; thinner rings are subtle and elegant.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 320,
    Height = 120,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.LeftToRight
};
	
var thin = new KtSpinner
{
    Width = 60,
    Height = 60,
    Margin = new Padding(10),
    Color = KtColor.PRIMARY,
    Thickness = 4,
    Speed = 3,
};
	
var medium = new KtSpinner
{
    Width = 60,
    Height = 60,
    Margin = new Padding(10),
    Color = KtColor.PRIMARY,
    Thickness = 8,
    Speed = 3,
};
	
var thick = new KtSpinner
{
    Width = 60,
    Height = 60,
    Margin = new Padding(10),
    Color = KtColor.PRIMARY,
    Thickness = 14,
    Speed = 3,
};
	
panel.Controls.Add(thin);
panel.Controls.Add(medium);
panel.Controls.Add(thick);
```
== side
::: tabs
== tab "Auto" icon:app-window
![spinner-thickness-light](/assets/images/screenshots/kt-spinner/spinner-thickness-light.png?v=639234525379858135){ .light .snapshot} ![spinner-thickness-dark](/assets/images/screenshots/kt-spinner/spinner-thickness-dark.png?v=639234525379858135){.dark .snapshot}

== tab "Light" icon:sun
![spinner-thickness-light](/assets/images/screenshots/kt-spinner/spinner-thickness-light.png?v=639234525379858135){  .snapshot}

== tab "Dark" icon:moon
![spinner-thickness-dark](/assets/images/screenshots/kt-spinner/spinner-thickness-dark.png?v=639234525379858135){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Cap Styles (`CapStyle`, `CapPoint`)
Control the line-end shape with `Flat`, `Round`, or `Triangle`. `CapPoint` decides whether the cap appears at the `Start`, `End`, or `Both` ends of the rotating arc.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 320,
    Height = 120,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.LeftToRight
};
	
var flat = new KtSpinner
{
    Width = 60,
    Height = 60,
    Margin = new Padding(10),
    Color = KtColor.SUCCESS,
    Thickness = 6,
    CapStyle = KtSpinner.CapStyles.Flat,
    CapPoint = KtSpinner.CapPoints.Both,
};
	
var round = new KtSpinner
{
    Width = 60,
    Height = 60,
    Margin = new Padding(10),
    Color = KtColor.SUCCESS,
    Thickness = 6,
    CapStyle = KtSpinner.CapStyles.Round,
    CapPoint = KtSpinner.CapPoints.Both,
};
	
var triangle = new KtSpinner
{
    Width = 60,
    Height = 60,
    Margin = new Padding(10),
    Color = KtColor.SUCCESS,
    Thickness = 6,
    CapStyle = KtSpinner.CapStyles.Triangle,
    CapPoint = KtSpinner.CapPoints.Both,
};
	
panel.Controls.Add(flat);
panel.Controls.Add(round);
panel.Controls.Add(triangle);
```
== side
::: tabs
== tab "Auto" icon:app-window
![spinner-caps-light](/assets/images/screenshots/kt-spinner/spinner-caps-light.png?v=639234525397666200){ .light .snapshot} ![spinner-caps-dark](/assets/images/screenshots/kt-spinner/spinner-caps-dark.png?v=639234525397666200){.dark .snapshot}

== tab "Light" icon:sun
![spinner-caps-light](/assets/images/screenshots/kt-spinner/spinner-caps-light.png?v=639234525397666200){  .snapshot}

== tab "Dark" icon:moon
![spinner-caps-dark](/assets/images/screenshots/kt-spinner/spinner-caps-dark.png?v=639234525397666200){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Center Text (`ShowText`, `Text`, `TextColor`)
Set `ShowText = true` to render a label inside the spinner ring. Use `TextColor` and `Font` to match your design system. The ring automatically shrinks to fit the text.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 260,
    Height = 160,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.LeftToRight
};
	
var spinner = new KtSpinner
{
    Width = 100,
    Height = 100,
    Margin = new Padding(10),
    Color = KtColor.PRIMARY,
    Thickness = 5,
    Speed = 2,
    ShowText = true,
    Text = "Loading",
    TextColor = KtColor.CONTENT,
    Font = new Font("Segoe UI", 8f),
};
	
panel.Controls.Add(spinner);
```
== side
::: tabs
== tab "Auto" icon:app-window
![spinner-text-light](/assets/images/screenshots/kt-spinner/spinner-text-light.png?v=639234525415150773){ .light .snapshot} ![spinner-text-dark](/assets/images/screenshots/kt-spinner/spinner-text-dark.png?v=639234525415150773){.dark .snapshot}

== tab "Light" icon:sun
![spinner-text-light](/assets/images/screenshots/kt-spinner/spinner-text-light.png?v=639234525415150773){  .snapshot}

== tab "Dark" icon:moon
![spinner-text-dark](/assets/images/screenshots/kt-spinner/spinner-text-dark.png?v=639234525415150773){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Animation Speed (`Speed`)
Control the rotation velocity. `Speed = 1` is calm and deliberate; `Speed = 8` is urgent and energetic. Adjust to match the perceived weight of the operation being waited on.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 320,
    Height = 120,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.LeftToRight
};
	
var slow = new KtSpinner
{
    Width = 60,
    Height = 60,
    Margin = new Padding(10),
    Color = KtColor.WARNING,
    Thickness = 6,
    Speed = 1,
};
	
var normal = new KtSpinner
{
    Width = 60,
    Height = 60,
    Margin = new Padding(10),
    Color = KtColor.WARNING,
    Thickness = 6,
    Speed = 4,
};
	
var fast = new KtSpinner
{
    Width = 60,
    Height = 60,
    Margin = new Padding(10),
    Color = KtColor.WARNING,
    Thickness = 6,
    Speed = 8,
};
	
panel.Controls.Add(slow);
panel.Controls.Add(normal);
panel.Controls.Add(fast);
```
== side
::: tabs
== tab "Auto" icon:app-window
![spinner-speed-light](/assets/images/screenshots/kt-spinner/spinner-speed-light.png?v=639234525433105446){ .light .snapshot} ![spinner-speed-dark](/assets/images/screenshots/kt-spinner/spinner-speed-dark.png?v=639234525433105446){.dark .snapshot}

== tab "Light" icon:sun
![spinner-speed-light](/assets/images/screenshots/kt-spinner/spinner-speed-light.png?v=639234525433105446){  .snapshot}

== tab "Dark" icon:moon
![spinner-speed-dark](/assets/images/screenshots/kt-spinner/spinner-speed-dark.png?v=639234525433105446){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Color Themes (`Color`)
Swap the entire spinner accent with any `KtColor`. The ring uses a linear gradient from the chosen color to transparent, giving it a soft trailing edge regardless of the base hue.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 320,
    Height = 120,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.LeftToRight
};
	
var primary = new KtSpinner
{
    Width = 60,
    Height = 60,
    Margin = new Padding(10),
    Color = KtColor.PRIMARY,
    Thickness = 6,
};
	
var rose = new KtSpinner
{
    Width = 60,
    Height = 60,
    Margin = new Padding(10),
    Color = KtColor.Rose,
    Thickness = 6,
};
	
var emerald = new KtSpinner
{
    Width = 60,
    Height = 60,
    Margin = new Padding(10),
    Color = KtColor.Emerald,
    Thickness = 6,
};
	
panel.Controls.Add(primary);
panel.Controls.Add(rose);
panel.Controls.Add(emerald);
```
== side
::: tabs
== tab "Auto" icon:app-window
![spinner-themed-light](/assets/images/screenshots/kt-spinner/spinner-themed-light.png?v=639234525450888355){ .light .snapshot} ![spinner-themed-dark](/assets/images/screenshots/kt-spinner/spinner-themed-dark.png?v=639234525450888355){.dark .snapshot}

== tab "Light" icon:sun
![spinner-themed-light](/assets/images/screenshots/kt-spinner/spinner-themed-light.png?v=639234525450883223){  .snapshot}

== tab "Dark" icon:moon
![spinner-themed-dark](/assets/images/screenshots/kt-spinner/spinner-themed-dark.png?v=639234525450883223){ .snapshot}

:::
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "Color" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the indicator color.* |
| ::: tag "TextColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the fore color.* |
| ::: tag "CapPoint" icon:wrench | ::: tag "CapPoints" color:#6B7C94 icon:check-check  | *Sets the point where the cap will be applied.* |
| ::: tag "CapStyle" icon:wrench | ::: tag "CapStyles" color:#6B7C94 icon:check-check  | *Sets the indicator cap style.* |
| ::: tag "DashCap" icon:wrench | ::: tag "DashCaps" color:#6B7C94 icon:check-check  | *Sets the indicator dash cap format.* |
| ::: tag "Preset" icon:wrench | ::: tag "Presets" color:#6B7C94 icon:check-check  | *Sets a loading style preset. Ensure that the property 'AllowPresets' is enabled.* |
| ::: tag "Style" icon:wrench | ::: tag "Styles" color:#6B7C94 icon:check-check  | *Sets the indicator ring style.* |
| ::: tag "AllowPresets" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether style presets are allowed.* |
| ::: tag "ShowText" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether the text will be displayed.* |
| ::: tag "Font" icon:wrench | ::: tag "Font" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.font?view=netframework-4.8  | *Sets the text font.* |
| ::: tag "Speed" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the progress speed.* |
| ::: tag "Thickness" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the progress thickness.* |
| ::: tag "DashWidth" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the indicator dash pattern.* |
| ::: tag "Text" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the loader text.* |
| ::: tag "TextPadding" icon:wrench | ::: tag "Padding" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.padding?view=netframework-4.8  | *Sets the text padding.* |
