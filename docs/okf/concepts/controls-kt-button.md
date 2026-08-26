---
type: concept
title: "KimTools / Controls / Button"
description: "A modern, fully customizable button control for WinForms, with built-in icon, gradient, and border support."
source: "https://kimtoo.net/controls/kt-button/"
path: /controls/kt-button/
updated: 2026-08-26
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-26T20:32:11.400Z"
---
---
title: "KimTools / Controls / Button"
description: "A modern, fully customizable button control for WinForms, with built-in icon, gradient, and border support."
keywords: ["KimTools", "Controls", "KtButton", "Button"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `Button`
A modern, fully customizable button control for WinForms, with built-in icon, gradient, and border support.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-button-light](/assets/images/screenshots/kt-button/kt-button-light.png?v=639233743982546371){ .light .snapshot} ![kt-button-dark](/assets/images/screenshots/kt-button/kt-button-dark.png?v=639233743982546371){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::
# Background
| ::: tag "Background" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the progress color.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Gradient with `Kt-Colors`
Use KimTools Semantically named dynamic theme colors.

```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var button = new KtButton();
button.Text = "Get Started";
	
// Use % operator to apply transparency to Kt-Color
button.Background = Color.BlueViolet;   // Color
                                        // button.Background = KtColor.SUCCESS;     // KtColor
                                        // button.Background = KtColor.PRIMARY % 50; // With Opacity
                                        // button.Background = KtColor.FromHex("#1E90FF"); // Hex
```
== side
::: tabs
== tab "Auto" icon:app-window
![solid-background-light](/assets/images/screenshots/kt-button/solid-background-light.png?v=639233744010855372){ .light .snapshot} ![solid-background-dark](/assets/images/screenshots/kt-button/solid-background-dark.png?v=639233744010855372){.dark .snapshot}

== tab "Light" icon:sun
![solid-background-light](/assets/images/screenshots/kt-button/solid-background-light.png?v=639233744010824784){  .snapshot}

== tab "Dark" icon:moon
![solid-background-dark](/assets/images/screenshots/kt-button/solid-background-dark.png?v=639233744010824784){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Gradient `Background`
Use KimTools Semantic theme colors to match the current global theme.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var button = new KtButton();
button.Text = "Upgrade to Pro";
button.Size = new Size(200, 50);
// Background supports Kt-Color gradients with an optional angle
button.Background =
(
    startColor: KtColor.PRIMARY[50],
    stopColor: KtColor.SECONDARY[50],
    angle: 45 // optional (0-360)
);
```
== side
::: tabs
== tab "Auto" icon:app-window
![gradient-background-light](/assets/images/screenshots/kt-button/gradient-background-light.png?v=639233744021193866){ .light .snapshot} ![gradient-background-dark](/assets/images/screenshots/kt-button/gradient-background-dark.png?v=639233744021193866){.dark .snapshot}

== tab "Light" icon:sun
![gradient-background-light](/assets/images/screenshots/kt-button/gradient-background-light.png?v=639233744021193866){  .snapshot}

== tab "Dark" icon:moon
![gradient-background-dark](/assets/images/screenshots/kt-button/gradient-background-dark.png?v=639233744021193866){ .snapshot}

:::
:::
# Border
| ::: tag "Border" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the panel's border color.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Outlined `Border`
Clear `Background` and set `Border` for a ghost/outline button.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var button = new KtButton();
button.Text = "Cancel";
	
// Clear Background and set Border for a ghost/outline style
button.Background = KtBrush.None;
button.Border = KtColor.PRIMARY;
button.BorderWidth = 2f;
```
== side
::: tabs
== tab "Auto" icon:app-window
![outlined-button-light](/assets/images/screenshots/kt-button/outlined-button-light.png?v=639233744031666997){ .light .snapshot} ![outlined-button-dark](/assets/images/screenshots/kt-button/outlined-button-dark.png?v=639233744031666997){.dark .snapshot}

== tab "Light" icon:sun
![outlined-button-light](/assets/images/screenshots/kt-button/outlined-button-light.png?v=639233744031666997){  .snapshot}

== tab "Dark" icon:moon
![outlined-button-dark](/assets/images/screenshots/kt-button/outlined-button-dark.png?v=639233744031666997){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Outlined Gradient `Border`
Clear `Background` and set `Border` for a gradient outline button.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var button = new KtButton();
button.Text = "Cancel";
	
// Clear Background and set Border for a ghost/outline style
button.Background = KtBrush.None;
button.Border =("red","blue");
button.BorderWidth = 2f;
```
== side
::: tabs
== tab "Auto" icon:app-window
![outlined-gradient-button-light](/assets/images/screenshots/kt-button/outlined-gradient-button-light.png?v=639233744041623271){ .light .snapshot} ![outlined-gradient-button-dark](/assets/images/screenshots/kt-button/outlined-gradient-button-dark.png?v=639233744041623271){.dark .snapshot}

== tab "Light" icon:sun
![outlined-gradient-button-light](/assets/images/screenshots/kt-button/outlined-gradient-button-light.png?v=639233744041623271){  .snapshot}

== tab "Dark" icon:moon
![outlined-gradient-button-dark](/assets/images/screenshots/kt-button/outlined-gradient-button-dark.png?v=639233744041623271){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Dashed `BorderStyle`
Clear `Background` and set `BorderStyle` for a gradient `Dash` border.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var button = new KtButton();
button.Text = "Cancel";
	
// Clear Background and set Border for a ghost/outline style
button.Background = KtBrush.None;
button.Border = ("red", "blue");
button.BorderWidth = 2f;
button.BorderStyle = DashStyle.DashDot;
```
== side
::: tabs
== tab "Auto" icon:app-window
![outlined-gradient-dashed-button-light](/assets/images/screenshots/kt-button/outlined-gradient-dashed-button-light.png?v=639233744051342425){ .light .snapshot} ![outlined-gradient-dashed-button-dark](/assets/images/screenshots/kt-button/outlined-gradient-dashed-button-dark.png?v=639233744051342425){.dark .snapshot}

== tab "Light" icon:sun
![outlined-gradient-dashed-button-light](/assets/images/screenshots/kt-button/outlined-gradient-dashed-button-light.png?v=639233744051342425){  .snapshot}

== tab "Dark" icon:moon
![outlined-gradient-dashed-button-dark](/assets/images/screenshots/kt-button/outlined-gradient-dashed-button-dark.png?v=639233744051342425){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Border `Radius`
Set `BorderRadius` from `0` (square) to `.99f` (pill) or >1 (int) for actual pixels.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var button = new KtButton();
button.Text = "Subscribe";
button.Background = KtColor.PRIMARY;
	
// BorderRadius runs 0 (square) .. .99f (fully pill-shaped)
button.BorderRadius = .99f;
button.BorderRadius = 5f; // Actual pixels
```
== side
::: tabs
== tab "Auto" icon:app-window
![rounded-button-light](/assets/images/screenshots/kt-button/rounded-button-light.png?v=639233744061446534){ .light .snapshot} ![rounded-button-dark](/assets/images/screenshots/kt-button/rounded-button-dark.png?v=639233744061446534){.dark .snapshot}

== tab "Light" icon:sun
![rounded-button-light](/assets/images/screenshots/kt-button/rounded-button-light.png?v=639233744061440214){  .snapshot}

== tab "Dark" icon:moon
![rounded-button-dark](/assets/images/screenshots/kt-button/rounded-button-dark.png?v=639233744061440214){ .snapshot}

:::
:::

::: hero layout:split glow:true
## SVG `Icon`
Set `Icon` to a Tabler icon name; `IconSize` and `IconStroke` control its rendering.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var button = new KtButton();
button.Text = "Download";
	
// Icon accepts a Tabler icon name; IconSize / IconStroke tune its rendering
button.Icon = "download";
button.IconSize = 18;
button.IconStroke = 2.5;
button.Width = 150;
```
== side
::: tabs
== tab "Auto" icon:app-window
![icon-text-button-light](/assets/images/screenshots/kt-button/icon-text-button-light.png?v=639233744071527624){ .light .snapshot} ![icon-text-button-dark](/assets/images/screenshots/kt-button/icon-text-button-dark.png?v=639233744071527624){.dark .snapshot}

== tab "Light" icon:sun
![icon-text-button-light](/assets/images/screenshots/kt-button/icon-text-button-light.png?v=639233744071527624){  .snapshot}

== tab "Dark" icon:moon
![icon-text-button-dark](/assets/images/screenshots/kt-button/icon-text-button-dark.png?v=639233744071527624){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Rounded `Icon Button` 
Set `Icon` to a Tabler icon name; `IconSize` and `IconStroke` control its rendering.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var button = new KtButton();
button.Text = string.Empty;
button.ImageAlign = ContentAlignment.MiddleCenter;
button.Size = new Size(50, 50);
button.Padding = Padding.Empty;
// Icon accepts a Tabler icon name; IconSize / IconStroke tune its rendering
button.Icon = "sparkles";
button.IconSize = 18;
button.IconStroke = 2.5;
button.BorderRadius = .99f;
button.Height = 50;
```
== side
::: tabs
== tab "Auto" icon:app-window
![icon-button-light](/assets/images/screenshots/kt-button/icon-button-light.png?v=639233744081556672){ .light .snapshot} ![icon-button-dark](/assets/images/screenshots/kt-button/icon-button-dark.png?v=639233744081556672){.dark .snapshot}

== tab "Light" icon:sun
![icon-button-light](/assets/images/screenshots/kt-button/icon-button-light.png?v=639233744081556672){  .snapshot}

== tab "Dark" icon:moon
![icon-button-dark](/assets/images/screenshots/kt-button/icon-button-dark.png?v=639233744081556672){ .snapshot}

:::
:::

::: hero layout:split glow:true
## `TextAlign` + `ImageAlign`
Move the icon to the trailing edge by pairing `ImageAlign` with `TextAlign`.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var button = new KtButton();
button.Text = "Continue";
button.Icon = "check";
// button.Icon = "arrow-right";
	
// Reposition the icon and label independently
button.ImageAlign = ContentAlignment.MiddleRight;
button.TextAlign = ContentAlignment.MiddleLeft;
```
== side
::: tabs
== tab "Auto" icon:app-window
![text-icon-align-light](/assets/images/screenshots/kt-button/text-icon-align-light.png?v=639233744091409812){ .light .snapshot} ![text-icon-align-dark](/assets/images/screenshots/kt-button/text-icon-align-dark.png?v=639233744091409812){.dark .snapshot}

== tab "Light" icon:sun
![text-icon-align-light](/assets/images/screenshots/kt-button/text-icon-align-light.png?v=639233744091409812){  .snapshot}

== tab "Dark" icon:moon
![text-icon-align-dark](/assets/images/screenshots/kt-button/text-icon-align-dark.png?v=639233744091409812){ .snapshot}

:::
:::

::: hero layout:split glow:true
## `Foreground` + `IconColor`
Override the label and icon color independently of the current theme.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var button = new KtButton();
button.Text = "Learn more";
button.Icon = "sparkles";
button.Width = 160;
// Foreground and IconColor override the label/icon color independently of Background
button.Background = KtBrush.None;
button.Foreground = KtColor.PRIMARY;
button.IconColor = KtColor.PRIMARY;
```
== side
::: tabs
== tab "Auto" icon:app-window
![custom-foreground-light](/assets/images/screenshots/kt-button/custom-foreground-light.png?v=639233744101510122){ .light .snapshot} ![custom-foreground-dark](/assets/images/screenshots/kt-button/custom-foreground-dark.png?v=639233744101510122){.dark .snapshot}

== tab "Light" icon:sun
![custom-foreground-light](/assets/images/screenshots/kt-button/custom-foreground-light.png?v=639233744101510122){  .snapshot}

== tab "Dark" icon:moon
![custom-foreground-dark](/assets/images/screenshots/kt-button/custom-foreground-dark.png?v=639233744101510122){ .snapshot}

:::
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "Background" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the progress color.* |
| ::: tag "Border" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the panel's border color.* |
| ::: tag "BorderEdges" icon:wrench | ::: tag "Edges" color:#6B7C94 icon:check-check  | *Sets the Border edges.* |
| ::: tag "Foreground" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Foreground.* |
| ::: tag "IconColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Icon color.* |
| ::: tag "Pattern" icon:wrench | ::: tag "Kt-Pattern" color:#6B7C94 icon:check-check  | *Sets the Pattern.* |
| ::: tag "IconStroke" icon:wrench | ::: tag "Double" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.double?view=netframework-4.8  | *Sets the Icon stroke.* |
| ::: tag "ImageAlign" icon:wrench | ::: tag "ContentAlignment" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.contentalignment?view=netframework-4.8  | *The alignment of the image that will be displayed on the control.* |
| ::: tag "TextAlign" icon:wrench | ::: tag "ContentAlignment" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.contentalignment?view=netframework-4.8  | *The alignment of the text that will be displayed on the control.* |
| ::: tag "BorderStyle" icon:wrench | ::: tag "DashStyle" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.drawing2d.dashstyle?view=netframework-4.8  | *Sets the panel's border style.* |
| ::: tag "IconSize" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the Icon size.* |
| ::: tag "BorderRadius" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Border radius.* |
| ::: tag "BorderWidth" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the Border width.* |
| ::: tag "Icon" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the Icon.* |
| ::: tag "Value" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the Value.* |
| ::: tag "Cursor" icon:wrench | ::: tag "Cursor" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.cursor?view=netframework-4.8  | *The cursor that appears when the pointer moves over the control.* |
| ::: tag "BorderMargin" icon:wrench | ::: tag "Padding" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.padding?view=netframework-4.8  | *Sets the border Margin.* |
| ::: tag "Padding" icon:wrench | ::: tag "Padding" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.padding?view=netframework-4.8  | *Specifies the interior spacing of a control.* |
