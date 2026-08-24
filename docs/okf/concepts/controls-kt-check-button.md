---
type: concept
title: "KimTools / Controls / CheckButton"
description: "KtCheckButton is a toggleable check button control for Modern WinForms"
source: "https://kimtoo.net/controls/kt-check-button/"
path: /controls/kt-check-button/
updated: 2026-08-24
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-24T16:02:46.176Z"
---
---
title: "KimTools / Controls / CheckButton"
description: "KtCheckButton is a toggleable check button control for Modern WinForms"
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `CheckButton`
A themeable multi-select toggle control for WinForms, with independent Checked/Unchecked styling for background, border and icon.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-check-button-light](/assets/images/controls/kt-check-button/kt-check-button-light.png?v=639231921215230681){ .light .snapshot} ![kt-check-button-dark](/assets/images/controls/kt-check-button/kt-check-button-dark.png?v=639231921215230681){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::
# Background
| ::: tag "Background" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the Background.* |
| -------- | ------- | ----------- |
# Border
| ::: tag "Border" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the panel's border color.* |
| -------- | ------- | ----------- |
# Icon
| ::: tag "Icon" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the Icon.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Default `Checked` / `Unchecked` states
`Border` defaults to a `Primary`/`Secondary` gradient outline; `Background_Checked` fills that same gradient solid once `Checked` is `true`. `Icon` swaps from an outline circle to a filled check automatically.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
// Out of the box, KtCheckButton is a gradient-outlined toggle that
// fills solid on Checked, no configuration required.
var unchecked_ = new KtCheckButton { Text = "Notify me", Checked = false };
var checked_ = new KtCheckButton { Text = "Notify me", Checked = true };
```
== side
::: tabs
== tab "Auto" icon:app-window
![default-state-light](/assets/images/controls/kt-check-button/default-state-light.png?v=639231921242909575){ .light .snapshot} ![default-state-dark](/assets/images/controls/kt-check-button/default-state-dark.png?v=639231921242909575){.dark .snapshot}

== tab "Light" icon:sun
![default-state-light](/assets/images/controls/kt-check-button/default-state-light.png?v=639231921242878725){  .snapshot}

== tab "Dark" icon:moon
![default-state-dark](/assets/images/controls/kt-check-button/default-state-dark.png?v=639231921242878725){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Solid `Background_Checked`
Style the checked state independently of the unchecked state with a solid `Kt-Color` instead of the default gradient.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var check = new KtCheckButton();
check.Text = "   Auto-renew";
check.Width = 200;
// Clear the default gradient border and give Checked its own solid fill
check.Border = KtBrush.None;
check.Background_Checked = KtColor.SUCCESS;
check.Checked = true;
```
== side
::: tabs
== tab "Auto" icon:app-window
![solid-checked-background-light](/assets/images/controls/kt-check-button/solid-checked-background-light.png?v=639231921253310052){ .light .snapshot} ![solid-checked-background-dark](/assets/images/controls/kt-check-button/solid-checked-background-dark.png?v=639231921253310052){.dark .snapshot}

== tab "Light" icon:sun
![solid-checked-background-light](/assets/images/controls/kt-check-button/solid-checked-background-light.png?v=639231921253310052){  .snapshot}

== tab "Dark" icon:moon
![solid-checked-background-dark](/assets/images/controls/kt-check-button/solid-checked-background-dark.png?v=639231921253310052){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Gradient `Background_Checked`
Use semantic theme colors so the checked fill tracks the current global theme.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var check = new KtCheckButton();
check.Text = "  Pro features";
check.Width = 200;
check.Size = new Size(180, 50);
	
// Background_Checked supports Kt-Color gradients with an optional angle
check.Background_Checked =
(
    startColor: KtColor.PRIMARY[50],
    stopColor: KtColor.SECONDARY[50],
    angle: 45 // optional (0-360)
);
check.Checked = true;
```
== side
::: tabs
== tab "Auto" icon:app-window
![gradient-background-checked-light](/assets/images/controls/kt-check-button/gradient-background-checked-light.png?v=639231921263470646){ .light .snapshot} ![gradient-background-checked-dark](/assets/images/controls/kt-check-button/gradient-background-checked-dark.png?v=639231921263470646){.dark .snapshot}

== tab "Light" icon:sun
![gradient-background-checked-light](/assets/images/controls/kt-check-button/gradient-background-checked-light.png?v=639231921263460660){  .snapshot}

== tab "Dark" icon:moon
![gradient-background-checked-dark](/assets/images/controls/kt-check-button/gradient-background-checked-dark.png?v=639231921263460660){ .snapshot}

:::
:::

::: hero layout:split glow:true
## `Icon` + `Icon_Checked`
Pair an unchecked and checked icon, and tint the checked icon independently with `IconColor_Checked`.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var check = new KtCheckButton();
check.Text = "Starred";
	
// Icon / Icon_Checked accept Tabler icon names independently
check.Icon = "Tabler.outline.star";
check.Icon_Checked = "Tabler.solid.star_filled";
check.IconColor_Checked = KtColor.WARNING;
check.Checked = true;
```
== side
::: tabs
== tab "Auto" icon:app-window
![custom-checked-icon-light](/assets/images/controls/kt-check-button/custom-checked-icon-light.png?v=639231921273359954){ .light .snapshot} ![custom-checked-icon-dark](/assets/images/controls/kt-check-button/custom-checked-icon-dark.png?v=639231921273359954){.dark .snapshot}

== tab "Light" icon:sun
![custom-checked-icon-light](/assets/images/controls/kt-check-button/custom-checked-icon-light.png?v=639231921273359954){  .snapshot}

== tab "Dark" icon:moon
![custom-checked-icon-dark](/assets/images/controls/kt-check-button/custom-checked-icon-dark.png?v=639231921273359954){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Outlined `Border` / `Border_Checked`
Clear both backgrounds and give `Border_Checked` its own color for a ghost toggle that only changes outline color on check.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var check = new KtCheckButton();
check.Text = "Remember me";
check.TextAlign = ContentAlignment.MiddleCenter;
check.Width = 200;
// Keep both states as outlines, no fill in either
check.Background = KtBrush.None;
check.Background_Checked = KtBrush.None;
check.Border = KtColor.NEUTRAL;
check.Border_Checked = KtColor.PRIMARY;
check.BorderWidth = 2f;
```
== side
::: tabs
== tab "Auto" icon:app-window
![outlined-checkbutton-light](/assets/images/controls/kt-check-button/outlined-checkbutton-light.png?v=639231921283929073){ .light .snapshot} ![outlined-checkbutton-dark](/assets/images/controls/kt-check-button/outlined-checkbutton-dark.png?v=639231921283929073){.dark .snapshot}

== tab "Light" icon:sun
![outlined-checkbutton-light](/assets/images/controls/kt-check-button/outlined-checkbutton-light.png?v=639231921283929073){  .snapshot}

== tab "Dark" icon:moon
![outlined-checkbutton-dark](/assets/images/controls/kt-check-button/outlined-checkbutton-dark.png?v=639231921283929073){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Border `Radius`
Set `BorderRadius` from `0` (square) to `.99f` (pill) or >1 (int) for actual pixels.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var check = new KtCheckButton();
check.Text = "Pill toggle";
check.Width = 200;
check.ImageAlign = ContentAlignment.MiddleRight;
check.Background_Checked = KtColor.PRIMARY;
	
// BorderRadius runs 0 (square) .. .99f (fully pill-shaped)
check.BorderRadius = .99f;
check.BorderRadius = 5f; // Actual pixels
check.Checked = true;
```
== side
::: tabs
== tab "Auto" icon:app-window
![rounded-checkbutton-light](/assets/images/controls/kt-check-button/rounded-checkbutton-light.png?v=639231921294199497){ .light .snapshot} ![rounded-checkbutton-dark](/assets/images/controls/kt-check-button/rounded-checkbutton-dark.png?v=639231921294199497){.dark .snapshot}

== tab "Light" icon:sun
![rounded-checkbutton-light](/assets/images/controls/kt-check-button/rounded-checkbutton-light.png?v=639231921294199497){  .snapshot}

== tab "Dark" icon:moon
![rounded-checkbutton-dark](/assets/images/controls/kt-check-button/rounded-checkbutton-dark.png?v=639231921294199497){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Rounded `Icon` `CheckButton`
Drop the label, center the icon and pair `Icon` / `Icon_Checked` for a favorite-style toggle.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var check = new KtCheckButton();
check.Text = string.Empty;
check.ImageAlign = ContentAlignment.MiddleCenter;
check.Size = new Size(50, 50);
check.Padding = Padding.Empty;
check.BorderRadius = .99f;
	
// Icon / Icon_Checked accept a Tabler icon name; IconSize / IconStroke tune rendering
check.Icon = "heart";
check.Icon_Checked = "heart-filled";
check.IconColor_Checked = KtColor.ERROR;
check.IconSize = 20;
check.IconStroke = 2.5;
```
== side
::: tabs
== tab "Auto" icon:app-window
![icon-only-checkbutton-light](/assets/images/controls/kt-check-button/icon-only-checkbutton-light.png?v=639231921304800061){ .light .snapshot} ![icon-only-checkbutton-dark](/assets/images/controls/kt-check-button/icon-only-checkbutton-dark.png?v=639231921304800061){.dark .snapshot}

== tab "Light" icon:sun
![icon-only-checkbutton-light](/assets/images/controls/kt-check-button/icon-only-checkbutton-light.png?v=639231921304800061){  .snapshot}

== tab "Dark" icon:moon
![icon-only-checkbutton-dark](/assets/images/controls/kt-check-button/icon-only-checkbutton-dark.png?v=639231921304800061){ .snapshot}

:::
:::

::: hero layout:split glow:true
## `Foreground` + `Foreground_Checked`
Override the label color for each state independently of the current theme.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var check = new KtCheckButton();
check.Text = "   Highlight";
check.Width = 200;
check.TextAlign = ContentAlignment.MiddleCenter;
check.Background = KtBrush.None;
check.Background_Checked = KtBrush.None;
check.Border = KtBrush.None;
	
// Foreground / Foreground_Checked override label color independently of Background
check.Foreground = KtColor.NEUTRAL;
check.Foreground_Checked = KtColor.PRIMARY;
```
== side
::: tabs
== tab "Auto" icon:app-window
![custom-foreground-checked-light](/assets/images/controls/kt-check-button/custom-foreground-checked-light.png?v=639231921315054033){ .light .snapshot} ![custom-foreground-checked-dark](/assets/images/controls/kt-check-button/custom-foreground-checked-dark.png?v=639231921315054033){.dark .snapshot}

== tab "Light" icon:sun
![custom-foreground-checked-light](/assets/images/controls/kt-check-button/custom-foreground-checked-light.png?v=639231921315054033){  .snapshot}

== tab "Dark" icon:moon
![custom-foreground-checked-dark](/assets/images/controls/kt-check-button/custom-foreground-checked-dark.png?v=639231921315054033){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Multi-select `Panel`
`KtCheckButton` has no built-in grouping, so any number of them can be checked at once inside a `Panel`, `FlowLayoutPanel`, or `TableLayoutPanel` - ideal for settings and permission lists.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
// Each KtCheckButton toggles independently, no group container required
// for multiselect behavior - just stack them in any panel or layout.
var email = new KtCheckButton { Text = "Email updates", Checked = true };
var sms = new KtCheckButton { Text = "SMS alerts", Checked = false };
var push = new KtCheckButton { Text = "Push notifications", Checked = true };
```
== side
::: tabs
== tab "Auto" icon:app-window
![multiselect-panel-light](/assets/images/controls/kt-check-button/multiselect-panel-light.png?v=639231921328380468){ .light .snapshot} ![multiselect-panel-dark](/assets/images/controls/kt-check-button/multiselect-panel-dark.png?v=639231921328380468){.dark .snapshot}

== tab "Light" icon:sun
![multiselect-panel-light](/assets/images/controls/kt-check-button/multiselect-panel-light.png?v=639231921328380468){  .snapshot}

== tab "Dark" icon:moon
![multiselect-panel-dark](/assets/images/controls/kt-check-button/multiselect-panel-dark.png?v=639231921328380468){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Multi-select `Tabbed Pages` with `BorderEdges`
Toggle `BorderEdges` per state so a checked tab drops its bottom border and fuses with the pane beneath it, while unchecked tabs fall back to a quiet bottom underline. Since `KtCheckButton` isn't grouped, more than one tab - and its page - can stay active at the same time.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var overview = new KtCheckButton { Text = "Overview", Checked = true };
overview.Border = KtColor.PRIMARY;
overview.Background_Checked = KtColor.PRIMARY;
overview.BorderRadius = 10f;
	
// A checked tab draws only its top/left/right edge and fuses with
// the pane below it; an unchecked tab draws only a bottom underline.
overview.BorderEdges.TopLeft
    = overview.BorderEdges.TopRight
    = overview.BorderEdges.BottomLeft = true;
	
overview.BorderEdges.BottomRight = false;
```
== side
::: tabs
== tab "Auto" icon:app-window
![multiselect-tabbed-pages-light](/assets/images/controls/kt-check-button/multiselect-tabbed-pages-light.png?v=639231921342376223){ .light .snapshot} ![multiselect-tabbed-pages-dark](/assets/images/controls/kt-check-button/multiselect-tabbed-pages-dark.png?v=639231921342376223){.dark .snapshot}

== tab "Light" icon:sun
![multiselect-tabbed-pages-light](/assets/images/controls/kt-check-button/multiselect-tabbed-pages-light.png?v=639231921342376223){  .snapshot}

== tab "Dark" icon:moon
![multiselect-tabbed-pages-dark](/assets/images/controls/kt-check-button/multiselect-tabbed-pages-dark.png?v=639231921342376223){ .snapshot}

:::
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "Background" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the Background.* |
| ::: tag "Background_Checked" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the Background Checked.* |
| ::: tag "Border" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the panel's border color.* |
| ::: tag "Border_Checked" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the panel's border color.* |
| ::: tag "BorderEdges" icon:wrench | ::: tag "Edges" color:#6B7C94 icon:check-check  | *Sets the Border edges.* |
| ::: tag "Foreground" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Foreground.* |
| ::: tag "Foreground_Checked" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Foreground Checked.* |
| ::: tag "IconColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Icon color.* |
| ::: tag "IconColor_Checked" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the IconColor Checked.* |
| ::: tag "Pattern" icon:wrench | ::: tag "Kt-Pattern" color:#6B7C94 icon:check-check  | *Sets the Pattern.* |
| ::: tag "IconStroke" icon:wrench | ::: tag "Double" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.double?view=netframework-4.8  | *Sets the Icon stroke.* |
| ::: tag "ImageAlign" icon:wrench | ::: tag "ContentAlignment" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.contentalignment?view=netframework-4.8  | *The alignment of the image that will be displayed on the control.* |
| ::: tag "TextAlign" icon:wrench | ::: tag "ContentAlignment" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.contentalignment?view=netframework-4.8  | *The alignment of the text that will be displayed on the control.* |
| ::: tag "BorderStyle" icon:wrench | ::: tag "DashStyle" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.drawing2d.dashstyle?view=netframework-4.8  | *Sets the panel's border style.* |
| ::: tag "BorderStyle_Checked" icon:wrench | ::: tag "DashStyle" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.drawing2d.dashstyle?view=netframework-4.8  | *Sets the BorderStyle Checked.* |
| ::: tag "IconSize" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the Icon size.* |
| ::: tag "BorderRadius" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Border radius.* |
| ::: tag "BorderWidth" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the Border width.* |
| ::: tag "Icon" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the Icon.* |
| ::: tag "Icon_Checked" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the Icon Checked.* |
| ::: tag "Value" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the Value.* |
| ::: tag "Cursor" icon:wrench | ::: tag "Cursor" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.cursor?view=netframework-4.8  | *The cursor that appears when the pointer moves over the control.* |
| ::: tag "Padding" icon:wrench | ::: tag "Padding" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.padding?view=netframework-4.8  | *Specifies the interior spacing of a control.* |
| ::: tag "BorderMargin" icon:wrench | ::: tag "Padding" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.padding?view=netframework-4.8  | *Sets the border Margin.* |
