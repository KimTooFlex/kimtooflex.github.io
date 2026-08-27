---
type: concept
title: "KimTools / Controls / Shapes"
description: "A versatile shape renderer supporting circles, ovals, squares, rectangles, polygons, and lines with independent fill, border, rotation, and side-count control."
source: "https://kimtoo.net/controls/kt-shapes/"
path: /controls/kt-shapes/
updated: 2026-08-27
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-27T20:29:04.253Z"
---
---
title: "KimTools / Controls / Shapes"
description: "A versatile shape renderer supporting circles, ovals, squares, rectangles, polygons, and lines with independent fill, border, rotation, and side-count control."
keywords: ["KimTools", "Controls", "KtShapes", "Shapes", "Control"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `Shapes`
A versatile shape renderer supporting circles, ovals, squares, rectangles, polygons, and lines with independent fill, border, rotation, and side-count control.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-shapes-light](/assets/images/screenshots/kt-shapes/kt-shapes-light.png?v=639234524975644323){ .light .snapshot} ![kt-shapes-dark](/assets/images/screenshots/kt-shapes/kt-shapes-dark.png?v=639234524975644323){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::

::: hero layout:split glow:true
## Shape Gallery (`Shape`)
Six built-in primitives — `Circle`, `Oval`, `Square`, `Rectangle`, `Polygon`, and `Line`. Each renders as a self-contained `GraphicsPath` with independent fill and border control.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 420,
    Height = 140,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.LeftToRight
};
	
var circle = new KtShapes
{
    Width = 50,
    Height = 50,
    Margin = new Padding(8),
    Shape = KtShapes.Shapes.Circle,
    FillColor = KtColor.PRIMARY,
    BorderColor = KtColor.PRIMARY,
    BorderThickness = 2,
    FillShape = true
};
	
var oval = new KtShapes
{
    Width = 70,
    Height = 50,
    Margin = new Padding(8),
    Shape = KtShapes.Shapes.Oval,
    FillColor = KtColor.SECONDARY,
    BorderColor = KtColor.SECONDARY,
    BorderThickness = 2,
    FillShape = true
};
	
var square = new KtShapes
{
    Width = 50,
    Height = 50,
    Margin = new Padding(8),
    Shape = KtShapes.Shapes.Square,
    FillColor = KtColor.SUCCESS,
    BorderColor = KtColor.SUCCESS,
    BorderThickness = 2,
    FillShape = true
};
	
var rect = new KtShapes
{
    Width = 70,
    Height = 50,
    Margin = new Padding(8),
    Shape = KtShapes.Shapes.Rectangle,
    FillColor = KtColor.WARNING,
    BorderColor = KtColor.WARNING,
    BorderThickness = 2,
    FillShape = true
};
	
var polygon = new KtShapes
{
    Width = 50,
    Height = 50,
    Margin = new Padding(8),
    Shape = KtShapes.Shapes.Polygon,
    Sides = 5,
    FillColor = KtColor.ERROR,
    BorderColor = KtColor.ERROR,
    BorderThickness = 2,
    FillShape = true
};
	
var line = new KtShapes
{
    Width = 50,
    Height = 50,
    Margin = new Padding(8),
    Shape = KtShapes.Shapes.Line,
    BorderColor = KtColor.CONTENT,
    BorderThickness = 3,
    FillShape = false
};
	
panel.Controls.Add(circle);
panel.Controls.Add(oval);
panel.Controls.Add(square);
panel.Controls.Add(rect);
panel.Controls.Add(polygon);
panel.Controls.Add(line);
```
== side
::: tabs
== tab "Auto" icon:app-window
![shapes-gallery-light](/assets/images/screenshots/kt-shapes/shapes-gallery-light.png?v=639234525011862839){ .light .snapshot} ![shapes-gallery-dark](/assets/images/screenshots/kt-shapes/shapes-gallery-dark.png?v=639234525011862839){.dark .snapshot}

== tab "Light" icon:sun
![shapes-gallery-light](/assets/images/screenshots/kt-shapes/shapes-gallery-light.png?v=639234525011862839){  .snapshot}

== tab "Dark" icon:moon
![shapes-gallery-dark](/assets/images/screenshots/kt-shapes/shapes-gallery-dark.png?v=639234525011862839){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Fill vs Outline (`FillShape`)
Toggle between a solid fill and a wireframe stroke. When `FillShape = false`, only `BorderColor` and `BorderThickness` are rendered.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 340,
    Height = 120,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.LeftToRight
};
	
var filled = new KtShapes
{
    Width = 60,
    Height = 60,
    Margin = new Padding(10),
    Shape = KtShapes.Shapes.Circle,
    FillColor = KtColor.PRIMARY,
    BorderColor = KtColor.PRIMARY,
    BorderThickness = 2,
    FillShape = true
};
	
var outline = new KtShapes
{
    Width = 60,
    Height = 60,
    Margin = new Padding(10),
    Shape = KtShapes.Shapes.Circle,
    FillColor = KtColor.Transparent,
    BorderColor = KtColor.PRIMARY,
    BorderThickness = 3,
    FillShape = false
};
	
panel.Controls.Add(filled);
panel.Controls.Add(outline);
```
== side
::: tabs
== tab "Auto" icon:app-window
![shapes-outline-light](/assets/images/screenshots/kt-shapes/shapes-outline-light.png?v=639234525029354335){ .light .snapshot} ![shapes-outline-dark](/assets/images/screenshots/kt-shapes/shapes-outline-dark.png?v=639234525029354335){.dark .snapshot}

== tab "Light" icon:sun
![shapes-outline-light](/assets/images/screenshots/kt-shapes/shapes-outline-light.png?v=639234525029354335){  .snapshot}

== tab "Dark" icon:moon
![shapes-outline-dark](/assets/images/screenshots/kt-shapes/shapes-outline-dark.png?v=639234525029354335){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Polygon Sides (`Sides`)
Set `Sides` from 3 to 16 to generate regular polygons. The shape is inscribed within the control bounds and auto-centers.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 400,
    Height = 120,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.LeftToRight
};
	
var triangle = new KtShapes
{
    Width = 60,
    Height = 60,
    Margin = new Padding(8),
    Shape = KtShapes.Shapes.Polygon,
    Sides = 3,
    FillColor = KtColor.Rose[60],
    BorderColor = KtColor.Rose[40],
    BorderThickness = 2,
    FillShape = true
};
	
var pentagon = new KtShapes
{
    Width = 60,
    Height = 60,
    Margin = new Padding(8),
    Shape = KtShapes.Shapes.Polygon,
    Sides = 5,
    FillColor = KtColor.PRIMARY,
    BorderColor = KtColor.PRIMARY,
    BorderThickness = 2,
    FillShape = true
};
	
var hexagon = new KtShapes
{
    Width = 60,
    Height = 60,
    Margin = new Padding(8),
    Shape = KtShapes.Shapes.Polygon,
    Sides = 6,
    FillColor = KtColor.SUCCESS,
    BorderColor = KtColor.SUCCESS,
    BorderThickness = 2,
    FillShape = true
};
	
var octagon = new KtShapes
{
    Width = 60,
    Height = 60,
    Margin = new Padding(8),
    Shape = KtShapes.Shapes.Polygon,
    Sides = 8,
    FillColor = KtColor.WARNING,
    BorderColor = KtColor.WARNING,
    BorderThickness = 2,
    FillShape = true
};
	
panel.Controls.Add(triangle);
panel.Controls.Add(pentagon);
panel.Controls.Add(hexagon);
panel.Controls.Add(octagon);
```
== side
::: tabs
== tab "Auto" icon:app-window
![shapes-polygon-light](/assets/images/screenshots/kt-shapes/shapes-polygon-light.png?v=639234525048154878){ .light .snapshot} ![shapes-polygon-dark](/assets/images/screenshots/kt-shapes/shapes-polygon-dark.png?v=639234525048154878){.dark .snapshot}

== tab "Light" icon:sun
![shapes-polygon-light](/assets/images/screenshots/kt-shapes/shapes-polygon-light.png?v=639234525048154878){  .snapshot}

== tab "Dark" icon:moon
![shapes-polygon-dark](/assets/images/screenshots/kt-shapes/shapes-polygon-dark.png?v=639234525048154878){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Rotation (`Angle`)
Rotate polygons and lines by degrees. `Angle = 0` is default; any value applies a `RotateTransform` around the shape's center.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 340,
    Height = 120,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.LeftToRight
};
	
var poly0 = new KtShapes
{
    Width = 60,
    Height = 60,
    Margin = new Padding(8),
    Shape = KtShapes.Shapes.Polygon,
    Sides = 5,
    Angle = 0,
    FillColor = KtColor.PRIMARY,
    BorderColor = KtColor.PRIMARY,
    BorderThickness = 2,
    FillShape = true
};
	
var poly45 = new KtShapes
{
    Width = 60,
    Height = 60,
    Margin = new Padding(8),
    Shape = KtShapes.Shapes.Polygon,
    Sides = 5,
    Angle = 45,
    FillColor = KtColor.PRIMARY,
    BorderColor = KtColor.PRIMARY,
    BorderThickness = 2,
    FillShape = true
};
	
var line0 = new KtShapes
{
    Width = 60,
    Height = 60,
    Margin = new Padding(8),
    Shape = KtShapes.Shapes.Line,
    Angle = 0,
    BorderColor = KtColor.CONTENT,
    BorderThickness = 3,
    FillShape = false
};
	
var line90 = new KtShapes
{
    Width = 60,
    Height = 60,
    Margin = new Padding(8),
    Shape = KtShapes.Shapes.Line,
    Angle = 90,
    BorderColor = KtColor.CONTENT,
    BorderThickness = 3,
    FillShape = false
};
	
panel.Controls.Add(poly0);
panel.Controls.Add(poly45);
panel.Controls.Add(line0);
panel.Controls.Add(line90);
```
== side
::: tabs
== tab "Auto" icon:app-window
![shapes-rotation-light](/assets/images/screenshots/kt-shapes/shapes-rotation-light.png?v=639234525065866143){ .light .snapshot} ![shapes-rotation-dark](/assets/images/screenshots/kt-shapes/shapes-rotation-dark.png?v=639234525065866143){.dark .snapshot}

== tab "Light" icon:sun
![shapes-rotation-light](/assets/images/screenshots/kt-shapes/shapes-rotation-light.png?v=639234525065857103){  .snapshot}

== tab "Dark" icon:moon
![shapes-rotation-dark](/assets/images/screenshots/kt-shapes/shapes-rotation-dark.png?v=639234525065857103){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Border Thickness (`BorderThickness`)
Scale the stroke weight from hairline to heavy. The border is drawn inset via `PenAlignment.Inset` so it never clips outside the control bounds.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 360,
    Height = 120,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.LeftToRight
};
	
var thin = new KtShapes
{
    Width = 60,
    Height = 60,
    Margin = new Padding(10),
    Shape = KtShapes.Shapes.Square,
    FillColor = KtColor.PRIMARY,
    BorderColor = KtColor.PRIMARY,
    BorderThickness = 1,
    FillShape = true
};
	
var medium = new KtShapes
{
    Width = 60,
    Height = 60,
    Margin = new Padding(10),
    Shape = KtShapes.Shapes.Square,
    FillColor = KtColor.PRIMARY,
    BorderColor = KtColor.PRIMARY,
    BorderThickness = 3,
    FillShape = true
};
	
var thick = new KtShapes
{
    Width = 60,
    Height = 60,
    Margin = new Padding(10),
    Shape = KtShapes.Shapes.Square,
    FillColor = KtColor.PRIMARY,
    BorderColor = KtColor.PRIMARY,
    BorderThickness = 6,
    FillShape = true
};
	
panel.Controls.Add(thin);
panel.Controls.Add(medium);
panel.Controls.Add(thick);
```
== side
::: tabs
== tab "Auto" icon:app-window
![shapes-border-light](/assets/images/screenshots/kt-shapes/shapes-border-light.png?v=639234525083689343){ .light .snapshot} ![shapes-border-dark](/assets/images/screenshots/kt-shapes/shapes-border-dark.png?v=639234525083689343){.dark .snapshot}

== tab "Light" icon:sun
![shapes-border-light](/assets/images/screenshots/kt-shapes/shapes-border-light.png?v=639234525083683448){  .snapshot}

== tab "Dark" icon:moon
![shapes-border-dark](/assets/images/screenshots/kt-shapes/shapes-border-dark.png?v=639234525083683448){ .snapshot}

:::
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "FillColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the shape fill color.* |
| ::: tag "BorderColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the shape border color.* |
| ::: tag "Shape" icon:wrench | ::: tag "Shapes" color:#6B7C94 icon:check-check  | *Sets the shape to be drawn.* |
| ::: tag "FillShape" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether shapes will be filled upon drawing.* |
| ::: tag "BorderThickness" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the shape border thickness.* |
| ::: tag "Sides" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the number of sides (minimum 16) for a polygon.* |
| ::: tag "Angle" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the angle to be used when drawing polygons and lines.* |
