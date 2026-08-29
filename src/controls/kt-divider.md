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
![kt-divider-light](/assets/images/screenshots/kt-divider/kt-divider-light.png?v=639236418658434201){ .light .snapshot} ![kt-divider-dark](/assets/images/screenshots/kt-divider/kt-divider-dark.png?v=639236418658434201){.dark .snapshot}
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
```csharp "🔴 🟡 🟢" 
// 1. Solid Line - Primary Color
var dividerPrimary = new KtDivider
{
    Height = 30,
    Dock = DockStyle.Top,
    Orientation = KtDivider.LineOrientation.Horizontal,
    LineStyle = KtDivider.LineStyles.Solid,
    LineColor = KtColor.PRIMARY,
    LineThickness = 2f
};
	
// 2. Dashed Line with Round Caps - Secondary Color
var dividerSecondary = new KtDivider
{
    Height = 30,
    Dock = DockStyle.Top,
    Orientation = KtDivider.LineOrientation.Horizontal,
    LineStyle = KtDivider.LineStyles.Dash,
    DashCap = KtDivider.CapStyles.Round,
    LineColor = KtColor.SECONDARY,
    LineThickness = 3f
};
	
// 3. Double Edge Faded - Success Color
var dividerSuccess = new KtDivider
{
    Height = 30,
    Dock = DockStyle.Top,
    Orientation = KtDivider.LineOrientation.Horizontal,
    LineStyle = KtDivider.LineStyles.DoubleEdgeFaded,
    LineColor = KtColor.SUCCESS,
    LineThickness = 2f
};
	
// 4. Left Edge Faded - Warning Color
var dividerWarning = new KtDivider
{
    Height = 30,
    Dock = DockStyle.Top,
    Orientation = KtDivider.LineOrientation.Horizontal,
    LineStyle = KtDivider.LineStyles.LeftEdgeFaded,
    LineColor = KtColor.WARNING,
    LineThickness = 2f
};
	
// 5. Right Edge Faded - Danger/Error Color
var dividerDanger = new KtDivider
{
    Height = 30,
    Dock = DockStyle.Top,
    Orientation = KtDivider.LineOrientation.Horizontal,
    LineStyle = KtDivider.LineStyles.RightEdgeFaded,
    LineColor = KtColor.ERROR,
    LineThickness = 2f
};
```
| ::: tag "LineStyle" icon:wrench | ::: tag "LineStyles" color:#6B7C94 icon:check-check  | *Sets the line's style format.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Solid Line Style
Draws a standard continuous line across the divider bounds.
```csharp "🔴 🟡 🟢" 
var divider = new KtDivider
{
    Height = 20,
    Dock = DockStyle.Top,
    Orientation = KtDivider.LineOrientation.Horizontal,
    LineStyle = KtDivider.LineStyles.Solid,
    LineColor = KtColor.PRIMARY,
    LineThickness = 2f
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![line-style-solid-light](/assets/images/screenshots/kt-divider/line-style-solid-light.png?v=639236418684951957){ .light .snapshot} ![line-style-solid-dark](/assets/images/screenshots/kt-divider/line-style-solid-dark.png?v=639236418684951957){.dark .snapshot}

== tab "Light" icon:sun
![line-style-solid-light](/assets/images/screenshots/kt-divider/line-style-solid-light.png?v=639236418684941936){  .snapshot}

== tab "Dark" icon:moon
![line-style-solid-dark](/assets/images/screenshots/kt-divider/line-style-solid-dark.png?v=639236418684941936){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Dashed Line Style
Renders a repeating dashed line pattern. Pair with `DashCap` for rounded or angled segment ends.
```csharp "🔴 🟡 🟢" 
var divider = new KtDivider
{
    Height = 20,
    Dock = DockStyle.Top,
    Orientation = KtDivider.LineOrientation.Horizontal,
    LineStyle = KtDivider.LineStyles.Dash,
    DashCap = KtDivider.CapStyles.Round,
    LineColor = KtColor.PRIMARY,
    LineThickness = 2f
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![line-style-dash-light](/assets/images/screenshots/kt-divider/line-style-dash-light.png?v=639236418705822831){ .light .snapshot} ![line-style-dash-dark](/assets/images/screenshots/kt-divider/line-style-dash-dark.png?v=639236418705822831){.dark .snapshot}

== tab "Light" icon:sun
![line-style-dash-light](/assets/images/screenshots/kt-divider/line-style-dash-light.png?v=639236418705822831){  .snapshot}

== tab "Dark" icon:moon
![line-style-dash-dark](/assets/images/screenshots/kt-divider/line-style-dash-dark.png?v=639236418705822831){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Dotted Line Style
Displays alternating dots and dashes using styles like `DashDot` or `DashDotDot`.
```csharp "🔴 🟡 🟢" 
var divider = new KtDivider
{
    Height = 20,
    Dock = DockStyle.Top,
    Orientation = KtDivider.LineOrientation.Horizontal,
    LineStyle = KtDivider.LineStyles.DashDotDot,
    DashCap = KtDivider.CapStyles.Round,
    LineColor = KtColor.PRIMARY,
    LineThickness = 2f
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![line-style-dot-light](/assets/images/screenshots/kt-divider/line-style-dot-light.png?v=639236418726742997){ .light .snapshot} ![line-style-dot-dark](/assets/images/screenshots/kt-divider/line-style-dot-dark.png?v=639236418726742997){.dark .snapshot}

== tab "Light" icon:sun
![line-style-dot-light](/assets/images/screenshots/kt-divider/line-style-dot-light.png?v=639236418726733255){  .snapshot}

== tab "Dark" icon:moon
![line-style-dot-dark](/assets/images/screenshots/kt-divider/line-style-dot-dark.png?v=639236418726733255){ .snapshot}

:::
:::
| ::: tag "DashCap" icon:wrench | ::: tag "CapStyles" color:#6B7C94 icon:check-check  | *Sets the line's dash cap style.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## `DashCap` End Formatting
Customize line dash termination points with `CapStyles.Flat`, `CapStyles.Round`, or `CapStyles.Triangle`.
```csharp "🔴 🟡 🟢" 
var divider = new KtDivider
{
    Height = 20,
    Dock = DockStyle.Top,
    Orientation = KtDivider.LineOrientation.Horizontal,
    LineStyle = KtDivider.LineStyles.Dash,
    DashCap = KtDivider.CapStyles.Round,
    LineColor = KtColor.PRIMARY,
    LineThickness = 3f
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![dash-cap-styles-light](/assets/images/screenshots/kt-divider/dash-cap-styles-light.png?v=639236418749367433){ .light .snapshot} ![dash-cap-styles-dark](/assets/images/screenshots/kt-divider/dash-cap-styles-dark.png?v=639236418749367433){.dark .snapshot}

== tab "Light" icon:sun
![dash-cap-styles-light](/assets/images/screenshots/kt-divider/dash-cap-styles-light.png?v=639236418749367433){  .snapshot}

== tab "Dark" icon:moon
![dash-cap-styles-dark](/assets/images/screenshots/kt-divider/dash-cap-styles-dark.png?v=639236418749367433){ .snapshot}

:::
:::
| ::: tag "LineColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the line's color.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## `LineColor` Customization
Assign theme colors using `KtColor` or standard `System.Drawing.Color` values.
```csharp "🔴 🟡 🟢" 
var divider = new KtDivider
{
    Height = 20,
    Dock = DockStyle.Top,
    Orientation = KtDivider.LineOrientation.Horizontal,
    LineStyle = KtDivider.LineStyles.Solid,
    LineColor = KtColor.SECONDARY,
    LineThickness = 2f
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![line-color-light](/assets/images/screenshots/kt-divider/line-color-light.png?v=639236418771767038){ .light .snapshot} ![line-color-dark](/assets/images/screenshots/kt-divider/line-color-dark.png?v=639236418771767038){.dark .snapshot}

== tab "Light" icon:sun
![line-color-light](/assets/images/screenshots/kt-divider/line-color-light.png?v=639236418771767038){  .snapshot}

== tab "Dark" icon:moon
![line-color-dark](/assets/images/screenshots/kt-divider/line-color-dark.png?v=639236418771767038){ .snapshot}

:::
:::
| ::: tag "LineThickness" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the line's thickness.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## `LineThickness` Control
Adjust stroke width in floating-point pixels to emphasize structural section separations.
```csharp "🔴 🟡 🟢" 
var divider = new KtDivider
{
    Height = 20,
    Dock = DockStyle.Top,
    Orientation = KtDivider.LineOrientation.Horizontal,
    LineStyle = KtDivider.LineStyles.Solid,
    LineColor = KtColor.PRIMARY,
    LineThickness = 4f
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![line-thickness-light](/assets/images/screenshots/kt-divider/line-thickness-light.png?v=639236418794055653){ .light .snapshot} ![line-thickness-dark](/assets/images/screenshots/kt-divider/line-thickness-dark.png?v=639236418794055653){.dark .snapshot}

== tab "Light" icon:sun
![line-thickness-light](/assets/images/screenshots/kt-divider/line-thickness-light.png?v=639236418794055653){  .snapshot}

== tab "Dark" icon:moon
![line-thickness-dark](/assets/images/screenshots/kt-divider/line-thickness-dark.png?v=639236418794055653){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Double Edge Faded
Fades both line ends smoothly into transparency using `LineStyles.DoubleEdgeFaded`.
```csharp "🔴 🟡 🟢" 
var divider = new KtDivider
{
    Height = 20,
    Dock = DockStyle.Top,
    Orientation = KtDivider.LineOrientation.Horizontal,
    LineStyle = KtDivider.LineStyles.DoubleEdgeFaded,
    LineColor = KtColor.PRIMARY,
    LineThickness = 2f
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![faded-double-edge-light](/assets/images/screenshots/kt-divider/faded-double-edge-light.png?v=639236418814936449){ .light .snapshot} ![faded-double-edge-dark](/assets/images/screenshots/kt-divider/faded-double-edge-dark.png?v=639236418814936449){.dark .snapshot}

== tab "Light" icon:sun
![faded-double-edge-light](/assets/images/screenshots/kt-divider/faded-double-edge-light.png?v=639236418814936449){  .snapshot}

== tab "Dark" icon:moon
![faded-double-edge-dark](/assets/images/screenshots/kt-divider/faded-double-edge-dark.png?v=639236418814936449){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Left Edge Faded
Transitions the line from completely transparent on the left to solid on the right.
```csharp "🔴 🟡 🟢" 
var divider = new KtDivider
{
    Height = 20,
    Dock = DockStyle.Top,
    Orientation = KtDivider.LineOrientation.Horizontal,
    LineStyle = KtDivider.LineStyles.LeftEdgeFaded,
    LineColor = KtColor.PRIMARY,
    LineThickness = 2f
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![faded-left-edge-light](/assets/images/screenshots/kt-divider/faded-left-edge-light.png?v=639236418835980412){ .light .snapshot} ![faded-left-edge-dark](/assets/images/screenshots/kt-divider/faded-left-edge-dark.png?v=639236418835980412){.dark .snapshot}

== tab "Light" icon:sun
![faded-left-edge-light](/assets/images/screenshots/kt-divider/faded-left-edge-light.png?v=639236418835980412){  .snapshot}

== tab "Dark" icon:moon
![faded-left-edge-dark](/assets/images/screenshots/kt-divider/faded-left-edge-dark.png?v=639236418835980412){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Right Edge Faded
Transitions the line from solid on the left to transparent on the right edge.
```csharp "🔴 🟡 🟢" 
var divider = new KtDivider
{
    Height = 20,
    Dock = DockStyle.Top,
    Orientation = KtDivider.LineOrientation.Horizontal,
    LineStyle = KtDivider.LineStyles.RightEdgeFaded,
    LineColor = KtColor.PRIMARY,
    LineThickness = 2f
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![faded-right-edge-light](/assets/images/screenshots/kt-divider/faded-right-edge-light.png?v=639236418856928860){ .light .snapshot} ![faded-right-edge-dark](/assets/images/screenshots/kt-divider/faded-right-edge-dark.png?v=639236418856928860){.dark .snapshot}

== tab "Light" icon:sun
![faded-right-edge-light](/assets/images/screenshots/kt-divider/faded-right-edge-light.png?v=639236418856928860){  .snapshot}

== tab "Dark" icon:moon
![faded-right-edge-dark](/assets/images/screenshots/kt-divider/faded-right-edge-dark.png?v=639236418856928860){ .snapshot}

:::
:::
| ::: tag "Orientation" icon:wrench | ::: tag "LineOrientation" color:#6B7C94 icon:check-check  | *Sets the line's orientation.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Vertical Orientation
Set `Orientation = LineOrientation.Vertical` to separate side-by-side elements, sidebars, or toolbar buttons.
```csharp "🔴 🟡 🟢" 
var leftLabel = new KtLabel
{
    Text = @"Section A",
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
    Text = @"Section B",
    Auto = true,
    Dock = DockStyle.Fill
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![divider-vertical-light](/assets/images/screenshots/kt-divider/divider-vertical-light.png?v=639236418879750340){ .light .snapshot} ![divider-vertical-dark](/assets/images/screenshots/kt-divider/divider-vertical-dark.png?v=639236418879750340){.dark .snapshot}

== tab "Light" icon:sun
![divider-vertical-light](/assets/images/screenshots/kt-divider/divider-vertical-light.png?v=639236418879750340){  .snapshot}

== tab "Dark" icon:moon
![divider-vertical-dark](/assets/images/screenshots/kt-divider/divider-vertical-dark.png?v=639236418879750340){ .snapshot}

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

