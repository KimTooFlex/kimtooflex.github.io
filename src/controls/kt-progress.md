---
title: "KimTools / Controls / Progress"
description: "A stylish progress indicator supporting dual-layer rendering, gradient fills, hatch patterns, rounded corners, per-edge border control, and animated spinner text."
keywords: ["KimTools", "Controls", "KtProgress", "Progress", "UserControl"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `Progress`
A stylish progress indicator supporting dual-layer rendering, gradient fills, hatch patterns, rounded corners, per-edge border control, and animated spinner text.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-progress-light](/assets/images/screenshots/kt-progress/kt-progress-light.png?v=639234524075699252){ .light .snapshot} ![kt-progress-dark](/assets/images/screenshots/kt-progress/kt-progress-dark.png?v=639234524075699252){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::

::: hero layout:split glow:true
## Flat / Minimal Progress
A clean, understated bar with a solid primary fill at 80% opacity. Thin border on the track, modest 6 px radius, and centered text. No gradients — just precise geometry and subtle contrast.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 420,
    Height = 200,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var progress = new KtProgress
{
    Width = 380,
    Height = 24,
    Margin = new Padding(0, 8, 0, 8),
    Value = 42,
    Background = KtColor.BASE_2,
    Foreground = KtColor.PRIMARY % 80,
    BackgroundBorderRadius = 6,
    ForegroundBorderRadius = 6,
    BackgroundBorderWidth = 1,
    BackgroundBorder = KtColor.BASE_3,
    ForegroundText = KtColor.White,
    BackgroundText = KtColor.CONTENT,
    TextAlign = ContentAlignment.MiddleCenter,
    TextVisible = true,
    Text = "Uploading..."
};
	
panel.Controls.Add(progress);
```
== side
::: tabs
== tab "Auto" icon:app-window
![progress-flat-light](/assets/images/screenshots/kt-progress/progress-flat-light.png?v=639234524111233478){ .light .snapshot} ![progress-flat-dark](/assets/images/screenshots/kt-progress/progress-flat-dark.png?v=639234524111233478){.dark .snapshot}

== tab "Light" icon:sun
![progress-flat-light](/assets/images/screenshots/kt-progress/progress-flat-light.png?v=639234524111233478){  .snapshot}

== tab "Dark" icon:moon
![progress-flat-dark](/assets/images/screenshots/kt-progress/progress-flat-dark.png?v=639234524111233478){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Gradient / Neon Progress
A vivid Fuchsia-to-Violet gradient fill at a 45° angle, wrapped in a full pill shape (16 px radius). A subtle white border on the foreground adds depth. The percentage is drawn with automatic contrast against both layers.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 420,
    Height = 200,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var progress = new KtProgress
{
    Width = 380,
    Height = 32,
    Margin = new Padding(0, 8, 0, 8),
    Value = 78,
    Background = KtColor.BASE_1,
    Foreground = (KtColor.Fuchsia, KtColor.Violet, 45),
    BackgroundBorderRadius = 16,
    ForegroundBorderRadius = 16,
    BackgroundBorderWidth = 0,
    ForegroundBorderWidth = 1,
    ForegroundBorder = KtColor.White % 30,
    ForegroundText = KtColor.White,
    BackgroundText = KtColor.CONTENT,
    TextAlign = ContentAlignment.MiddleCenter,
    TextVisible = true,
    Text = "%"
};
	
panel.Controls.Add(progress);
```
== side
::: tabs
== tab "Auto" icon:app-window
![progress-gradient-light](/assets/images/screenshots/kt-progress/progress-gradient-light.png?v=639234524129245733){ .light .snapshot} ![progress-gradient-dark](/assets/images/screenshots/kt-progress/progress-gradient-dark.png?v=639234524129245733){.dark .snapshot}

== tab "Light" icon:sun
![progress-gradient-light](/assets/images/screenshots/kt-progress/progress-gradient-light.png?v=639234524129245733){  .snapshot}

== tab "Dark" icon:moon
![progress-gradient-dark](/assets/images/screenshots/kt-progress/progress-gradient-dark.png?v=639234524129245733){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Patterned / Textured Progress
Both track and fill carry independent hatch patterns via `BackgroundPattern` and `ForegroundPattern`. Use `*PatternColor` to tint the texture. Great for indicating indeterminate or heavy-processing states with visual grit.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 420,
    Height = 200,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var progress = new KtProgress
{
    Width = 380,
    Height = 28,
    Margin = new Padding(0, 8, 0, 8),
    Value = 55,
    Background = KtColor.BASE_2,
    Foreground = KtColor.SUCCESS,
    BackgroundPattern = HatchStyle.LightUpwardDiagonal,
    BackgroundPatternColor = KtColor.BASE_3,
    ForegroundPattern = HatchStyle.DarkDownwardDiagonal,
    ForegroundPatternColor = KtColor.SUCCESS % 40,
    BackgroundBorderRadius = 8,
    ForegroundBorderRadius = 8,
    BackgroundBorderWidth = 1,
    BackgroundBorder = KtColor.BASE_3,
    ForegroundText = KtColor.White,
    BackgroundText = KtColor.CONTENT,
    TextAlign = ContentAlignment.MiddleCenter,
    TextVisible = true,
    Text = "Processing..."
};
	
panel.Controls.Add(progress);
```
== side
::: tabs
== tab "Auto" icon:app-window
![progress-patterned-light](/assets/images/screenshots/kt-progress/progress-patterned-light.png?v=639234524147234769){ .light .snapshot} ![progress-patterned-dark](/assets/images/screenshots/kt-progress/progress-patterned-dark.png?v=639234524147234769){.dark .snapshot}

== tab "Light" icon:sun
![progress-patterned-light](/assets/images/screenshots/kt-progress/progress-patterned-light.png?v=639234524147234769){  .snapshot}

== tab "Dark" icon:moon
![progress-patterned-dark](/assets/images/screenshots/kt-progress/progress-patterned-dark.png?v=639234524147234769){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Per-Edge Border Control (`ForegroundBorderEdges`, `BackgroundBorderEdges`)
Round or sharpen individual corners using `KtBrush.Edges`. Here the foreground has a 2 px left-side border with squared-off right edges, giving the fill a directional, meter-like appearance. Useful for segmented or terminal-style progress visuals.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 420,
    Height = 240,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var progress = new KtProgress
{
    Width = 380,
    Height = 28,
    Margin = new Padding(0, 8, 0, 8),
    Value = 60,
    Background = KtColor.BASE_2,
    Foreground = (KtColor.INFO, KtColor.PRIMARY),
    BackgroundBorderRadius = 0,
    ForegroundBorderRadius = 0,
    BackgroundBorderWidth = 1,
    BackgroundBorder = KtColor.BASE_3,
    ForegroundBorderWidth = 2,
    ForegroundBorder = KtColor.INFO,
    ForegroundText = KtColor.White,
    BackgroundText = KtColor.CONTENT,
    TextAlign = ContentAlignment.MiddleLeft,
    TextVisible = true,
    Text = "  Downloading..."
};
progress.ForegroundBorderEdges.TopLeft = true;
progress.ForegroundBorderEdges.BottomLeft = true;
progress.ForegroundBorderEdges.TopRight = false;
progress.ForegroundBorderEdges.BottomRight = false;
	
panel.Controls.Add(progress);
```
== side
::: tabs
== tab "Auto" icon:app-window
![progress-edges-light](/assets/images/screenshots/kt-progress/progress-edges-light.png?v=639234524165426918){ .light .snapshot} ![progress-edges-dark](/assets/images/screenshots/kt-progress/progress-edges-dark.png?v=639234524165426918){.dark .snapshot}

== tab "Light" icon:sun
![progress-edges-light](/assets/images/screenshots/kt-progress/progress-edges-light.png?v=639234524165417839){  .snapshot}

== tab "Dark" icon:moon
![progress-edges-dark](/assets/images/screenshots/kt-progress/progress-edges-dark.png?v=639234524165417839){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Animated Spinner Text (`TextSpinner`)
When `TextSpinner = true` and the value is strictly between min and max, a cycling braille spinner is prepended to the label. Set `Text = "%"` to auto-insert the current percentage. The spinner pauses automatically when the bar reaches `ValueMax` (Completed).
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 420,
    Height = 240,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var progress = new KtProgress
{
    Width = 380,
    Height = 28,
    Margin = new Padding(0, 8, 0, 8),
    Value = 33,
    ValueMin = 0,
    ValueMax = 100,
    Background = KtColor.BASE_2,
    Foreground = KtColor.WARNING,
    BackgroundBorderRadius = 6,
    ForegroundBorderRadius = 6,
    ForegroundText = KtColor.BASE_1,
    BackgroundText = KtColor.CONTENT,
    TextAlign = ContentAlignment.MiddleCenter,
    TextVisible = true,
    TextSpinner = true,
    Text = "%"
};
	
panel.Controls.Add(progress);
```
== side
::: tabs
== tab "Auto" icon:app-window
![progress-spinner-light](/assets/images/screenshots/kt-progress/progress-spinner-light.png?v=639234524183726804){ .light .snapshot} ![progress-spinner-dark](/assets/images/screenshots/kt-progress/progress-spinner-dark.png?v=639234524183726804){.dark .snapshot}

== tab "Light" icon:sun
![progress-spinner-light](/assets/images/screenshots/kt-progress/progress-spinner-light.png?v=639234524183726804){  .snapshot}

== tab "Dark" icon:moon
![progress-spinner-dark](/assets/images/screenshots/kt-progress/progress-spinner-dark.png?v=639234524183726804){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Completed State (`Value`, `ValueMax`, `Completed`)
When `Value >= ValueMax`, the bar is full and the `Completed` property returns `true`, raising the `Complete` event. The spinner disappears and the fill spans the entire padded track. Use a Success-to-Emerald gradient to communicate completion clearly.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 420,
    Height = 240,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var progress = new KtProgress
{
    Width = 380,
    Height = 32,
    Margin = new Padding(0, 8, 0, 8),
    Value = 100,
    ValueMin = 0,
    ValueMax = 100,
    Background = KtColor.BASE_2,
    Foreground = (KtColor.SUCCESS, KtColor.Emerald),
    BackgroundBorderRadius = 10,
    ForegroundBorderRadius = 10,
    BackgroundPad = new Padding(2),
    ForegroundText = KtColor.White,
    BackgroundText = KtColor.CONTENT,
    TextAlign = ContentAlignment.MiddleCenter,
    TextVisible = true,
    TextSpinner = true,
    Text = "Done!"
};
	
panel.Controls.Add(progress);
```
== side
::: tabs
== tab "Auto" icon:app-window
![progress-complete-light](/assets/images/screenshots/kt-progress/progress-complete-light.png?v=639234524202401091){ .light .snapshot} ![progress-complete-dark](/assets/images/screenshots/kt-progress/progress-complete-dark.png?v=639234524202401091){.dark .snapshot}

== tab "Light" icon:sun
![progress-complete-light](/assets/images/screenshots/kt-progress/progress-complete-light.png?v=639234524202401091){  .snapshot}

== tab "Dark" icon:moon
![progress-complete-dark](/assets/images/screenshots/kt-progress/progress-complete-dark.png?v=639234524202401091){ .snapshot}

:::
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "Background" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the Background.* |
| ::: tag "BackgroundBorder" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the Background border.* |
| ::: tag "Foreground" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the Foreground.* |
| ::: tag "ForegroundBorder" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the Foreground border.* |
| ::: tag "ForegroundBorderEdges" icon:wrench | ::: tag "Edges" color:#6B7C94 icon:check-check  | *Sets the Foreground border edges.* |
| ::: tag "BackgroundBorderEdges" icon:wrench | ::: tag "Edges" color:#6B7C94 icon:check-check  | *Sets the Background border edges.* |
| ::: tag "BackgroundPatternColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Background pattern color.* |
| ::: tag "ForegroundPatternColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Foreground pattern color.* |
| ::: tag "ForegroundText" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Foreground text.* |
| ::: tag "BackgroundText" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Background text.* |
| ::: tag "TextVisible" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets the Text visible.* |
| ::: tag "TextSpinner" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets the Text spinner.* |
| ::: tag "TextAlign" icon:wrench | ::: tag "ContentAlignment" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.contentalignment?view=netframework-4.8  | *Sets the Text align.* |
| ::: tag "Value" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the Value.* |
| ::: tag "ValueMin" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the Value min.* |
| ::: tag "ValueMax" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the Value max.* |
| ::: tag "BackgroundPattern" icon:wrench | ::: tag "HatchStyle" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.drawing2d.hatchstyle?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Background pattern.* |
| ::: tag "ForegroundPattern" icon:wrench | ::: tag "HatchStyle" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.drawing2d.hatchstyle?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Foreground pattern.* |
| ::: tag "BackgroundBorderRadius" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the Background border radius.* |
| ::: tag "ForegroundBorderRadius" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the Foreground border radius.* |
| ::: tag "ForegroundBorderWidth" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the Foreground border width.* |
| ::: tag "BackgroundBorderWidth" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the Background border width.* |
| ::: tag "Text_" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the Text .* |
| ::: tag "BackgroundPad" icon:wrench | ::: tag "Padding" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.padding?view=netframework-4.8  | *Sets the Background pad.* |
