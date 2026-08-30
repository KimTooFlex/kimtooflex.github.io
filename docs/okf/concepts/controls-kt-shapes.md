---
type: concept
title: "KimTools / Controls / Shapes"
description: "A versatile shape renderer supporting circles, ovals, squares, rectangles, polygons (3 to 16 sides), and lines with independent fill opacity, border, rotation, and side-count control."
source: "https://kimtoo.net/controls/kt-shapes/"
path: /controls/kt-shapes/
updated: 2026-08-30
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-30T11:26:51.575Z"
---
---
title: "KimTools / Controls / Shapes"
description: "A versatile shape renderer supporting circles, ovals, squares, rectangles, polygons (3 to 16 sides), and lines with independent fill opacity, border, rotation, and side-count control."
keywords: ["KimTools", "Controls", "KtShapes", "Shapes", "Control"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `Shapes`
A versatile shape renderer supporting circles, ovals, squares, rectangles, polygons (3 to 16 sides), and lines with independent fill opacity, border, rotation, and side-count control.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-shapes-light](/assets/images/screenshots/kt-shapes/kt-shapes-light.png?v=639236286437673306){ .light .snapshot} ![kt-shapes-dark](/assets/images/screenshots/kt-shapes/kt-shapes-dark.png?v=639236286437673306){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::
```csharp "🔴 🟡 🟢" 
var shape = new KtShapes();
```
| ::: tag "Shape" icon:wrench | ::: tag "Shapes" color:#6B7C94 icon:check-check  | *Sets the shape to be drawn.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Circle (`Shapes.Circle`)
Draws a smooth anti-aliased circle inscribed perfectly within equal control dimensions.
```csharp "🔴 🟡 🟢" 
var panel = CreateContainerPanel(120, 120);
	
var circle = new KtShapes
{
    Width = 70,
    Height = 70,
    Margin = new Padding(5),
    Shape = KtShapes.Shapes.Circle,
    FillColor = KtColor.PRIMARY % 50,
    BorderColor = KtColor.PRIMARY,
    BorderThickness = 2,
    FillShape = true
};
	
panel.Controls.Add(circle);
```
== side
::: tabs
== tab "Auto" icon:app-window
![shapes-circle-light](/assets/images/screenshots/kt-shapes/shapes-circle-light.png?v=639236286476781684){ .light .snapshot} ![shapes-circle-dark](/assets/images/screenshots/kt-shapes/shapes-circle-dark.png?v=639236286476781684){.dark .snapshot}

== tab "Light" icon:sun
![shapes-circle-light](/assets/images/screenshots/kt-shapes/shapes-circle-light.png?v=639236286476770839){  .snapshot}

== tab "Dark" icon:moon
![shapes-circle-dark](/assets/images/screenshots/kt-shapes/shapes-circle-dark.png?v=639236286476770839){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Oval (`Shapes.Oval`)
Draws an ellipse that dynamically stretches to match rectangular control dimensions.
```csharp "🔴 🟡 🟢" 
var panel = CreateContainerPanel(150, 120);
	
var oval = new KtShapes
{
    Width = 100,
    Height = 65,
    Margin = new Padding(5),
    Shape = KtShapes.Shapes.Oval,
    FillColor = KtColor.SECONDARY % 50,
    BorderColor = KtColor.SECONDARY,
    BorderThickness = 2,
    FillShape = true
};
	
panel.Controls.Add(oval);
```
== side
::: tabs
== tab "Auto" icon:app-window
![shapes-oval-light](/assets/images/screenshots/kt-shapes/shapes-oval-light.png?v=639236286497468316){ .light .snapshot} ![shapes-oval-dark](/assets/images/screenshots/kt-shapes/shapes-oval-dark.png?v=639236286497468316){.dark .snapshot}

== tab "Light" icon:sun
![shapes-oval-light](/assets/images/screenshots/kt-shapes/shapes-oval-light.png?v=639236286497458317){  .snapshot}

== tab "Dark" icon:moon
![shapes-oval-dark](/assets/images/screenshots/kt-shapes/shapes-oval-dark.png?v=639236286497458317){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Square (`Shapes.Square`)
Draws an equilateral 4-sided box with centered geometry.
```csharp "🔴 🟡 🟢" 
var panel = CreateContainerPanel(120, 120);
	
var square = new KtShapes
{
    Width = 70,
    Height = 70,
    Margin = new Padding(5),
    Shape = KtShapes.Shapes.Square,
    FillColor = KtColor.SUCCESS % 50,
    BorderColor = KtColor.SUCCESS,
    BorderThickness = 2,
    FillShape = true
};
	
panel.Controls.Add(square);
```
== side
::: tabs
== tab "Auto" icon:app-window
![shapes-square-light](/assets/images/screenshots/kt-shapes/shapes-square-light.png?v=639236286518250043){ .light .snapshot} ![shapes-square-dark](/assets/images/screenshots/kt-shapes/shapes-square-dark.png?v=639236286518250043){.dark .snapshot}

== tab "Light" icon:sun
![shapes-square-light](/assets/images/screenshots/kt-shapes/shapes-square-light.png?v=639236286518250043){  .snapshot}

== tab "Dark" icon:moon
![shapes-square-dark](/assets/images/screenshots/kt-shapes/shapes-square-dark.png?v=639236286518250043){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Rectangle (`Shapes.Rectangle`)
Draws a four-sided polygon scaled to custom width and height bounds.
```csharp "🔴 🟡 🟢" 
var panel = CreateContainerPanel(150, 120);
	
var rect = new KtShapes
{
    Width = 100,
    Height = 65,
    Margin = new Padding(5),
    Shape = KtShapes.Shapes.Rectangle,
    FillColor = KtColor.WARNING % 50,
    BorderColor = KtColor.WARNING,
    BorderThickness = 2,
    FillShape = true
};
	
panel.Controls.Add(rect);
```
== side
::: tabs
== tab "Auto" icon:app-window
![shapes-rectangle-light](/assets/images/screenshots/kt-shapes/shapes-rectangle-light.png?v=639236286538948617){ .light .snapshot} ![shapes-rectangle-dark](/assets/images/screenshots/kt-shapes/shapes-rectangle-dark.png?v=639236286538948617){.dark .snapshot}

== tab "Light" icon:sun
![shapes-rectangle-light](/assets/images/screenshots/kt-shapes/shapes-rectangle-light.png?v=639236286538948617){  .snapshot}

== tab "Dark" icon:moon
![shapes-rectangle-dark](/assets/images/screenshots/kt-shapes/shapes-rectangle-dark.png?v=639236286538948617){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Line (`Shapes.Line`)
Renders a vector stroke across the control's diagonal plane.
```csharp "🔴 🟡 🟢" 
var panel = CreateContainerPanel(120, 120);
	
var line = new KtShapes
{
    Width = 70,
    Height = 70,
    Margin = new Padding(5),
    Shape = KtShapes.Shapes.Line,
    BorderColor = KtColor.CONTENT,
    BorderThickness = 4,
    FillShape = false
};
	
panel.Controls.Add(line);
```
== side
::: tabs
== tab "Auto" icon:app-window
![shapes-line-light](/assets/images/screenshots/kt-shapes/shapes-line-light.png?v=639236286559570413){ .light .snapshot} ![shapes-line-dark](/assets/images/screenshots/kt-shapes/shapes-line-dark.png?v=639236286559570413){.dark .snapshot}

== tab "Light" icon:sun
![shapes-line-light](/assets/images/screenshots/kt-shapes/shapes-line-light.png?v=639236286559570413){  .snapshot}

== tab "Dark" icon:moon
![shapes-line-dark](/assets/images/screenshots/kt-shapes/shapes-line-dark.png?v=639236286559570413){ .snapshot}

:::
:::
| ::: tag "Sides" icon:wrench | ::: tag "integer" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the number of sides (minimum 16) for a polygon.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Triangle (`Sides = 3`)
Renders a 3-sided regular polygon shape with transparent fill to emphasize the border.
```csharp "🔴 🟡 🟢" 
var panel = CreateContainerPanel(120, 120);
	
var triangle = new KtShapes
{
    Width = 70,
    Height = 70,
    Margin = new Padding(5),
    Shape = KtShapes.Shapes.Polygon,
    Sides = 3,
    FillColor = KtColor.Rose[60] % 50,
    BorderColor = KtColor.Rose[60],
    BorderThickness = 2,
    FillShape = true
};
	
panel.Controls.Add(triangle);
```
== side
::: tabs
== tab "Auto" icon:app-window
![shapes-polygon-triangle-light](/assets/images/screenshots/kt-shapes/shapes-polygon-triangle-light.png?v=639236286581641020){ .light .snapshot} ![shapes-polygon-triangle-dark](/assets/images/screenshots/kt-shapes/shapes-polygon-triangle-dark.png?v=639236286581641020){.dark .snapshot}

== tab "Light" icon:sun
![shapes-polygon-triangle-light](/assets/images/screenshots/kt-shapes/shapes-polygon-triangle-light.png?v=639236286581631403){  .snapshot}

== tab "Dark" icon:moon
![shapes-polygon-triangle-dark](/assets/images/screenshots/kt-shapes/shapes-polygon-triangle-dark.png?v=639236286581631403){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Quadrilateral / Diamond (`Sides = 4`)
Renders a 4-sided regular polygon shape with emphasized borders.
```csharp "🔴 🟡 🟢" 
var panel = CreateContainerPanel(120, 120);
	
var quad = new KtShapes
{
    Width = 70,
    Height = 70,
    Margin = new Padding(5),
    Shape = KtShapes.Shapes.Polygon,
    Sides = 4,
    FillColor = KtColor.PRIMARY % 50,
    BorderColor = KtColor.PRIMARY,
    BorderThickness = 2,
    FillShape = true
};
	
panel.Controls.Add(quad);
```
== side
::: tabs
== tab "Auto" icon:app-window
![shapes-polygon-quad-light](/assets/images/screenshots/kt-shapes/shapes-polygon-quad-light.png?v=639236286602317085){ .light .snapshot} ![shapes-polygon-quad-dark](/assets/images/screenshots/kt-shapes/shapes-polygon-quad-dark.png?v=639236286602317085){.dark .snapshot}

== tab "Light" icon:sun
![shapes-polygon-quad-light](/assets/images/screenshots/kt-shapes/shapes-polygon-quad-light.png?v=639236286602317085){  .snapshot}

== tab "Dark" icon:moon
![shapes-polygon-quad-dark](/assets/images/screenshots/kt-shapes/shapes-polygon-quad-dark.png?v=639236286602317085){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Pentagon (`Sides = 5`)
Renders a 5-sided regular polygon shape with emphasized borders.
```csharp "🔴 🟡 🟢" 
var panel = CreateContainerPanel(120, 120);
	
var pentagon = new KtShapes
{
    Width = 70,
    Height = 70,
    Margin = new Padding(5),
    Shape = KtShapes.Shapes.Polygon,
    Sides = 5,
    FillColor = KtColor.SUCCESS % 50,
    BorderColor = KtColor.SUCCESS,
    BorderThickness = 2,
    FillShape = true
};
	
panel.Controls.Add(pentagon);
```
== side
::: tabs
== tab "Auto" icon:app-window
![shapes-polygon-pentagon-light](/assets/images/screenshots/kt-shapes/shapes-polygon-pentagon-light.png?v=639236286622888726){ .light .snapshot} ![shapes-polygon-pentagon-dark](/assets/images/screenshots/kt-shapes/shapes-polygon-pentagon-dark.png?v=639236286622888726){.dark .snapshot}

== tab "Light" icon:sun
![shapes-polygon-pentagon-light](/assets/images/screenshots/kt-shapes/shapes-polygon-pentagon-light.png?v=639236286622878767){  .snapshot}

== tab "Dark" icon:moon
![shapes-polygon-pentagon-dark](/assets/images/screenshots/kt-shapes/shapes-polygon-pentagon-dark.png?v=639236286622878767){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Hexagon (`Sides = 6`)
Renders a 6-sided regular polygon shape with emphasized borders.
```csharp "🔴 🟡 🟢" 
var panel = CreateContainerPanel(120, 120);
	
var hexagon = new KtShapes
{
    Width = 70,
    Height = 70,
    Margin = new Padding(5),
    Shape = KtShapes.Shapes.Polygon,
    Sides = 6,
    FillColor = KtColor.WARNING % 50,
    BorderColor = KtColor.WARNING,
    BorderThickness = 2,
    FillShape = true
};
	
panel.Controls.Add(hexagon);
```
== side
::: tabs
== tab "Auto" icon:app-window
![shapes-polygon-hexagon-light](/assets/images/screenshots/kt-shapes/shapes-polygon-hexagon-light.png?v=639236286643764370){ .light .snapshot} ![shapes-polygon-hexagon-dark](/assets/images/screenshots/kt-shapes/shapes-polygon-hexagon-dark.png?v=639236286643764370){.dark .snapshot}

== tab "Light" icon:sun
![shapes-polygon-hexagon-light](/assets/images/screenshots/kt-shapes/shapes-polygon-hexagon-light.png?v=639236286643764370){  .snapshot}

== tab "Dark" icon:moon
![shapes-polygon-hexagon-dark](/assets/images/screenshots/kt-shapes/shapes-polygon-hexagon-dark.png?v=639236286643764370){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Heptagon (`Sides = 7`)
Renders a 7-sided regular polygon shape with emphasized borders.
```csharp "🔴 🟡 🟢" 
var panel = CreateContainerPanel(120, 120);
	
var heptagon = new KtShapes
{
    Width = 70,
    Height = 70,
    Margin = new Padding(5),
    Shape = KtShapes.Shapes.Polygon,
    Sides = 7,
    FillColor = KtColor.SECONDARY % 50,
    BorderColor = KtColor.SECONDARY,
    BorderThickness = 2,
    FillShape = true
};
	
panel.Controls.Add(heptagon);
```
== side
::: tabs
== tab "Auto" icon:app-window
![shapes-polygon-heptagon-light](/assets/images/screenshots/kt-shapes/shapes-polygon-heptagon-light.png?v=639236286664330279){ .light .snapshot} ![shapes-polygon-heptagon-dark](/assets/images/screenshots/kt-shapes/shapes-polygon-heptagon-dark.png?v=639236286664330279){.dark .snapshot}

== tab "Light" icon:sun
![shapes-polygon-heptagon-light](/assets/images/screenshots/kt-shapes/shapes-polygon-heptagon-light.png?v=639236286664330279){  .snapshot}

== tab "Dark" icon:moon
![shapes-polygon-heptagon-dark](/assets/images/screenshots/kt-shapes/shapes-polygon-heptagon-dark.png?v=639236286664330279){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Octagon (`Sides = 8`)
Renders an 8-sided regular polygon shape with emphasized borders.
```csharp "🔴 🟡 🟢" 
var panel = CreateContainerPanel(120, 120);
	
var octagon = new KtShapes
{
    Width = 70,
    Height = 70,
    Margin = new Padding(5),
    Shape = KtShapes.Shapes.Polygon,
    Sides = 8,
    FillColor = KtColor.ERROR % 50,
    BorderColor = KtColor.ERROR,
    BorderThickness = 2,
    FillShape = true
};
	
panel.Controls.Add(octagon);
```
== side
::: tabs
== tab "Auto" icon:app-window
![shapes-polygon-octagon-light](/assets/images/screenshots/kt-shapes/shapes-polygon-octagon-light.png?v=639236286685252535){ .light .snapshot} ![shapes-polygon-octagon-dark](/assets/images/screenshots/kt-shapes/shapes-polygon-octagon-dark.png?v=639236286685252535){.dark .snapshot}

== tab "Light" icon:sun
![shapes-polygon-octagon-light](/assets/images/screenshots/kt-shapes/shapes-polygon-octagon-light.png?v=639236286685252535){  .snapshot}

== tab "Dark" icon:moon
![shapes-polygon-octagon-dark](/assets/images/screenshots/kt-shapes/shapes-polygon-octagon-dark.png?v=639236286685252535){ .snapshot}

:::
:::
| ::: tag "FillShape" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether shapes will be filled upon drawing.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Wireframe Outline (`FillShape = false`)
Disables interior shape filling so only the border path is drawn.
```csharp "🔴 🟡 🟢" 
var panel = CreateContainerPanel(120, 120);
	
var outline = new KtShapes
{
    Width = 70,
    Height = 70,
    Margin = new Padding(5),
    Shape = KtShapes.Shapes.Circle,
    FillColor = KtColor.Transparent,
    BorderColor = KtColor.PRIMARY,
    BorderThickness = 3,
    FillShape = false
};
	
panel.Controls.Add(outline);
```
== side
::: tabs
== tab "Auto" icon:app-window
![shapes-outline-light](/assets/images/screenshots/kt-shapes/shapes-outline-light.png?v=639236286707513802){ .light .snapshot} ![shapes-outline-dark](/assets/images/screenshots/kt-shapes/shapes-outline-dark.png?v=639236286707513802){.dark .snapshot}

== tab "Light" icon:sun
![shapes-outline-light](/assets/images/screenshots/kt-shapes/shapes-outline-light.png?v=639236286707503225){  .snapshot}

== tab "Dark" icon:moon
![shapes-outline-dark](/assets/images/screenshots/kt-shapes/shapes-outline-dark.png?v=639236286707503225){ .snapshot}

:::
:::
| ::: tag "Angle" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the angle to be used when drawing polygons and lines.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Rotation (`Angle`)
Applies a center-point rotation matrix using degree values (e.g. `Angle = 45`).
```csharp "🔴 🟡 🟢" 
var panel = CreateContainerPanel(120, 120);
	
var rotated = new KtShapes
{
    Width = 70,
    Height = 70,
    Margin = new Padding(5),
    Shape = KtShapes.Shapes.Polygon,
    Sides = 5,
    Angle = 45,
    FillColor = KtColor.PRIMARY % 50,
    BorderColor = KtColor.PRIMARY,
    BorderThickness = 2,
    FillShape = true
};
	
panel.Controls.Add(rotated);
```
== side
::: tabs
== tab "Auto" icon:app-window
![shapes-rotation-light](/assets/images/screenshots/kt-shapes/shapes-rotation-light.png?v=639236286729675672){ .light .snapshot} ![shapes-rotation-dark](/assets/images/screenshots/kt-shapes/shapes-rotation-dark.png?v=639236286729675672){.dark .snapshot}

== tab "Light" icon:sun
![shapes-rotation-light](/assets/images/screenshots/kt-shapes/shapes-rotation-light.png?v=639236286729675672){  .snapshot}

== tab "Dark" icon:moon
![shapes-rotation-dark](/assets/images/screenshots/kt-shapes/shapes-rotation-dark.png?v=639236286729675672){ .snapshot}

:::
:::
| ::: tag "BorderColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the shape border color.* |
| -------- | ------- | ----------- |


<!-- -->
| ::: tag "BorderThickness" icon:wrench | ::: tag "integer" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the shape border thickness.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Heavy Border (`BorderThickness`)
Scales the stroke width up to heavy lines using inset pen alignment.
```csharp "🔴 🟡 🟢" 
var panel = CreateContainerPanel(120, 120);
	
var thick = new KtShapes
{
    Width = 70,
    Height = 70,
    Margin = new Padding(5),
    Shape = KtShapes.Shapes.Square,
    FillColor = KtColor.PRIMARY % 50,
    BorderColor = KtColor.PRIMARY,
    BorderThickness = 6,
    FillShape = true
};
	
panel.Controls.Add(thick);
```
== side
::: tabs
== tab "Auto" icon:app-window
![shapes-border-light](/assets/images/screenshots/kt-shapes/shapes-border-light.png?v=639236286753535914){ .light .snapshot} ![shapes-border-dark](/assets/images/screenshots/kt-shapes/shapes-border-dark.png?v=639236286753535914){.dark .snapshot}

== tab "Light" icon:sun
![shapes-border-light](/assets/images/screenshots/kt-shapes/shapes-border-light.png?v=639236286753535914){  .snapshot}

== tab "Dark" icon:moon
![shapes-border-dark](/assets/images/screenshots/kt-shapes/shapes-border-dark.png?v=639236286753535914){ .snapshot}

:::
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "FillColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the shape fill color.* |
| ::: tag "BorderColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the shape border color.* |
| ::: tag "Shape" icon:wrench | ::: tag "Shapes" color:#6B7C94 icon:check-check  | *Sets the shape to be drawn.* |
| ::: tag "FillShape" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether shapes will be filled upon drawing.* |
| ::: tag "BorderThickness" icon:wrench | ::: tag "integer" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the shape border thickness.* |
| ::: tag "Sides" icon:wrench | ::: tag "integer" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the number of sides (minimum 16) for a polygon.* |
| ::: tag "Angle" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the angle to be used when drawing polygons and lines.* |

