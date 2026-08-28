---
type: concept
title: "KimTools / Controls / Divider"
description: "A visual separator control for Modern WinForms providing styled divider lines, customizable orientations, dash caps, and gradient edge fading."
source: "https://kimtoo.net/controls/kt-divider/"
path: /controls/kt-divider/
updated: 2026-08-28
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-28T14:53:35.177Z"
---
---
title: "KimTools / Controls / Divider"
description: "A visual separator control for Modern WinForms providing styled divider lines, customizable orientations, dash caps, and gradient edge fading."
keywords: ["KimTools", "Controls", "KtDivider", "Divider", "UserControl"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `Divider`
A visual separator control for Modern WinForms providing styled divider lines, customizable orientations, dash caps, and gradient edge fading.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-divider-light](/assets/images/screenshots/kt-divider/kt-divider-light.png?v=639234522490400248){ .light .snapshot} ![kt-divider-dark](/assets/images/screenshots/kt-divider/kt-divider-dark.png?v=639234522490400248){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::
## Visual Layout Separators
Use `KtDivider` to establish clear visual hierarchy and organize controls into distinct sections.

::: steps
1. **Add Divider Control**
Drag a `KtDivider` from the toolbox onto your form or panel.
2. **Set Line Orientation**
Choose `Horizontal` for top/bottom content split or `Vertical` for inline column separations.
3. **Configure Style & Cap**
Select a `LineStyle` (`Solid`, `Dash`, `DoubleEdgeFaded`, etc.) and optional `DashCap` rounding.
4. **Apply Theme Color**
Assign a dynamic `KtColor` scheme (such as `KtColor.PRIMARY` or `KtColor.BASE_3`) to maintain consistent application themes.
:::
### Orientation
| ::: tag "Orientation" icon:wrench | ::: tag "LineOrientation" color:#6B7C94 icon:check-check  | *Sets the line's orientation.* |
| -------- | ------- | ----------- |
### LineStyle
| ::: tag "LineStyle" icon:wrench | ::: tag "LineStyles" color:#6B7C94 icon:check-check  | *Sets the line's style format.* |
| -------- | ------- | ----------- |
### DashCap
| ::: tag "DashCap" icon:wrench | ::: tag "CapStyles" color:#6B7C94 icon:check-check  | *Sets the line's dash cap style.* |
| -------- | ------- | ----------- |
### LineThickness
| ::: tag "LineThickness" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the line's thickness.* |
| -------- | ------- | ----------- |
### LineColor
| ::: tag "LineColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the line's color.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Line Styles & Dash Caps
Customize divider visuals using `LineStyle` options (such as `Solid`, `Dash`, or `DashDotDot`) alongside `DashCap` settings (`Flat`, `Round`, or `Triangle`).
```csharp "🔴 🟡 🟢"
var container = new Panel
{
    Width = 340,
    Height = 160,
    BackColor = Color.Transparent
};
	
var solidDivider = new KtDivider
{
    Dock = DockStyle.Top,
    Height = 40,
    Orientation = KtDivider.LineOrientation.Horizontal,
    LineStyle = KtDivider.LineStyles.Solid,
    LineColor = KtColor.PRIMARY,
    LineThickness = 2f
};
	
var dashedDivider = new KtDivider
{
    Dock = DockStyle.Top,
    Height = 40,
    Orientation = KtDivider.LineOrientation.Horizontal,
    LineStyle = KtDivider.LineStyles.Dash,
    DashCap = KtDivider.CapStyles.Round,
    LineColor = KtColor.PRIMARY,
    LineThickness = 2f
};
	
var dottedDivider = new KtDivider
{
    Dock = DockStyle.Top,
    Height = 40,
    Orientation = KtDivider.LineOrientation.Horizontal,
    LineStyle = KtDivider.LineStyles.DashDotDot,
    DashCap = KtDivider.CapStyles.Round,
    LineColor = KtColor.PRIMARY,
    LineThickness = 2f
};
	
// Added reverse order due to DockStyle.Top stacking behavior
container.Controls.Add(dottedDivider);
container.Controls.Add(dashedDivider);
container.Controls.Add(solidDivider);
```
== side
::: tabs
== tab "Auto" icon:app-window
![divider-horizontal-styles-light](/assets/images/screenshots/kt-divider/divider-horizontal-styles-light.png?v=639234522512798175){ .light .snapshot} ![divider-horizontal-styles-dark](/assets/images/screenshots/kt-divider/divider-horizontal-styles-dark.png?v=639234522512798175){.dark .snapshot}

== tab "Light" icon:sun
![divider-horizontal-styles-light](/assets/images/screenshots/kt-divider/divider-horizontal-styles-light.png?v=639234522512788015){  .snapshot}

== tab "Dark" icon:moon
![divider-horizontal-styles-dark](/assets/images/screenshots/kt-divider/divider-horizontal-styles-dark.png?v=639234522512788015){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Gradient Faded Edges
Create smooth content transitions using gradient line styles: `DoubleEdgeFaded`, `LeftEdgeFaded`, and `RightEdgeFaded`.
```csharp "🔴 🟡 🟢"
var container = new Panel
{
    Width = 340,
    Height = 160,
    BackColor = Color.Transparent
};
	
var doubleFaded = new KtDivider
{
    Dock = DockStyle.Top,
    Height = 40,
    Orientation = KtDivider.LineOrientation.Horizontal,
    LineStyle = KtDivider.LineStyles.DoubleEdgeFaded,
    LineColor = KtColor.PRIMARY,
    LineThickness = 2f
};
	
var leftFaded = new KtDivider
{
    Dock = DockStyle.Top,
    Height = 40,
    Orientation = KtDivider.LineOrientation.Horizontal,
    LineStyle = KtDivider.LineStyles.LeftEdgeFaded,
    LineColor = KtColor.PRIMARY,
    LineThickness = 2f
};
	
var rightFaded = new KtDivider
{
    Dock = DockStyle.Top,
    Height = 40,
    Orientation = KtDivider.LineOrientation.Horizontal,
    LineStyle = KtDivider.LineStyles.RightEdgeFaded,
    LineColor = KtColor.PRIMARY,
    LineThickness = 2f
};
	
// Added reverse order due to DockStyle.Top stacking behavior
container.Controls.Add(rightFaded);
container.Controls.Add(leftFaded);
container.Controls.Add(doubleFaded);
```
== side
::: tabs
== tab "Auto" icon:app-window
![divider-faded-edges-light](/assets/images/screenshots/kt-divider/divider-faded-edges-light.png?v=639234522523888376){ .light .snapshot} ![divider-faded-edges-dark](/assets/images/screenshots/kt-divider/divider-faded-edges-dark.png?v=639234522523888376){.dark .snapshot}

== tab "Light" icon:sun
![divider-faded-edges-light](/assets/images/screenshots/kt-divider/divider-faded-edges-light.png?v=639234522523888376){  .snapshot}

== tab "Dark" icon:moon
![divider-faded-edges-dark](/assets/images/screenshots/kt-divider/divider-faded-edges-dark.png?v=639234522523888376){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Vertical Orientation
Set `Orientation = LineOrientation.Vertical` to separate side-by-side elements, sidebars, or toolbar buttons.
```csharp "🔴 🟡 🟢"
var container = new Panel
{
    Width = 340,
    Height = 140,
    BackColor = Color.Transparent
};
	
var leftLabel = new KtLabel
{
    Text = "Section A",
    Auto = true,
    Dock = DockStyle.Left
};
	
var verticalDivider = new KtDivider
{
    Width = 20,
    Dock = DockStyle.Left,
    Orientation = KtDivider.LineOrientation.Vertical,
    LineStyle = KtDivider.LineStyles.DoubleEdgeFaded,
    LineColor = KtColor.PRIMARY,
    LineThickness = 2f
};
	
var rightLabel = new KtLabel
{
    Text = "Section B",
    Auto = true,
    Dock = DockStyle.Fill
};
	
container.Controls.Add(rightLabel);
container.Controls.Add(verticalDivider);
container.Controls.Add(leftLabel);
```
== side
::: tabs
== tab "Auto" icon:app-window
![divider-vertical-light](/assets/images/screenshots/kt-divider/divider-vertical-light.png?v=639234522535042931){ .light .snapshot} ![divider-vertical-dark](/assets/images/screenshots/kt-divider/divider-vertical-dark.png?v=639234522535042931){.dark .snapshot}

== tab "Light" icon:sun
![divider-vertical-light](/assets/images/screenshots/kt-divider/divider-vertical-light.png?v=639234522535042931){  .snapshot}

== tab "Dark" icon:moon
![divider-vertical-dark](/assets/images/screenshots/kt-divider/divider-vertical-dark.png?v=639234522535042931){ .snapshot}

:::
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "LineColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the line's color.* |
| ::: tag "DashCap" icon:wrench | ::: tag "CapStyles" color:#6B7C94 icon:check-check  | *Sets the line's dash cap style.* |
| ::: tag "Orientation" icon:wrench | ::: tag "LineOrientation" color:#6B7C94 icon:check-check  | *Sets the line's orientation.* |
| ::: tag "LineStyle" icon:wrench | ::: tag "LineStyles" color:#6B7C94 icon:check-check  | *Sets the line's style format.* |
| ::: tag "LineThickness" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the line's thickness.* |
