---
type: concept
title: "KimTools / Brush"
description: "Modern brush and color utilities for building consistent, theme-aware WinForms interfaces."
source: "https://kimtoo.net/utilities/kt-brush/"
path: /utilities/kt-brush/
updated: 2026-08-27
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-27T10:23:11.330Z"
---
---
title: "KimTools / Brush"
description: "Modern brush and color utilities for building consistent, theme-aware WinForms interfaces."
toc: false
layout: "full"
---

# Kt`Brush`

`KtBrush` is an abstract fill type with three concrete states - `KtBrushNone`, `KtBrushSolid`, `KtBrushGradient` - built on top of `KtColor`. Besides color, it carries the geometry needed to paint itself (rect, border radius/width, margin, rounded corners) and produces the actual GDI+ `Brush`, `Pen`, and `GraphicsPath` on demand.

Every example below builds a `KtBrush` through an implicit conversion, an operator, or a static factory - never `new KtBrushSolid(...)` / `new KtBrushGradient(...)` directly.

## Creating a Brush

```csharp "🔴 🟡 🟢"
KtBrush solid    = KtColor.PRIMARY;                 // implicit: KtColor -> solid brush (None if the color is empty)
KtBrush fromCss  = Color.Red;                        // implicit: System.Drawing.Color -> solid brush

KtBrush gradient = (KtColor.Blue, KtColor.Sky);       // implicit: 2-tuple -> gradient (start, stop)
KtBrush angled   = (KtColor.Blue, KtColor.Sky, 45);   // implicit: 3-tuple -> gradient with an angle

KtColor[] stops  = [KtColor.Blue, KtColor.Sky, KtColor.Purple];
KtBrush fromArr  = stops;                             // implicit: array -> first/last become start/stop
```

Ready-made semantic brushes and blank starting points:

```csharp "🔴 🟡 🟢"
KtBrush accent  = KtBrush.PRIMARY;   // PRIMARY -> SECONDARY gradient
KtBrush surface = KtBrush.BASE;      // solid BASE

KtBrush blank   = KtBrush.Solid;     // an empty solid brush, ready to configure
KtBrush blankG  = KtBrush.Gradient;  // an empty gradient
```

From a string:

```csharp "🔴 🟡 🟢"
KtBrush byName  = KtBrush.FromName("Solid");        // blank Solid / Gradient / None by kind name
KtBrush parsed1 = KtBrush.Parse("Blue");             // solid
KtBrush parsed2 = KtBrush.Parse("(Blue,Sky,45)");    // gradient with an angle
```

## Kinds

```csharp "🔴 🟡 🟢"
bool isNone     = someBrush.IsNone;
bool isSolid    = someBrush.IsSolid;
bool isGradient = someBrush.IsGradient;
string kind     = someBrush.Name;      // "None" / "Solid" / "Gradient"

KtBrush copy = someBrush.Clone();      // same color(s)/angle, independent instance
```

## Geometry & Border

The operators mutate the brush's own rect/border state in place and return the same instance, so they chain naturally but don't produce a copy:

```csharp "🔴 🟡 🟢"
var positioned = someBrush & new RectangleF(0, 0, 120, 40);  // set the paint rectangle
var moved      = someBrush & new PointF(10, 10);             // reposition, keep size
var nudged     = someBrush + new PointF(5, 0);                // offset location by a delta
var back       = someBrush - new PointF(5, 0);

var resized    = someBrush & new SizeF(200, 60);              // resize, keep location
var grown      = someBrush + new SizeF(20, 0);
var shrunk     = someBrush - new SizeF(20, 0);                 // clamped at 0

var inset      = someBrush & new Padding(8);                   // shrinks/repositions the rect itself
someBrush.Margin(new Padding(8));                               // a separate inset applied only when the Path is built

var rounded    = someBrush & (radius: 12f, width: 2f);          // border radius + width together
var placed     = someBrush & (new RectangleF(0, 0, 120, 40), 12f); // rect + radius together
```

The same things are available as named, chainable methods if you'd rather not use operators: `.Rect(rect)`, `.Rect(rect, margin)`, `.Margin(padding)`, `.Border(radius, width, edges?)`, `.BorderRadius(radius)`, `.BorderWidth(width)`, `.BorderEdges(corners)`.

A radius under `1` is treated as a *fraction* of the shape's shorter side rather than a pixel value - the default, `0.5`, produces a full pill/capsule. `1` or greater is an absolute pixel radius, clamped to half the shorter side.

Rounding can be limited to specific corners:

```csharp "🔴 🟡 🟢"
someBrush.BorderEdges(KtBrush.Corners.Top);                 // round only the top corners
someBrush.BorderEdges(new KtBrush.Edges { BottomLeft = false }); // per-corner toggle

var corners = KtBrush.CornerEdge(AnchorStyles.Top | AnchorStyles.Left); // map an anchor to matching Corners
var path    = KtBrush.Squircle(rect, radius: 12f);            // rounded-rect path, no brush instance needed
```

## Gradient Angle

```csharp "🔴 🟡 🟢"
var rotated = someBrush % 90;   // set a gradient's angle to 90°
var same    = 90 % someBrush;   // order doesn't matter
```

No-op (returns the brush unchanged) if it isn't a gradient.

## Content & Contrast

```csharp "🔴 🟡 🟢"
KtColor text  = !someBrush;               // readable text color for whatever's painted
KtColor text2 = ~someBrush;               // same idea, from lightness only
KtColor onFill = someBrush % someColor;   // flatten someColor onto the brush's own paint color
KtColor label  = someBrush.Foreground();          // this brush's contrast color (same as !someBrush)
KtColor label2 = someBrush.Foreground(customFg);  // customFg flattened onto that contrast color
```

For a gradient, `!`, `~`, and `brush % color` currently all read only `StartColor` - `StopColor` isn't factored in.

## Combining & Fallback

```csharp "🔴 🟡 🟢"
KtBrush picked   = hasOverride | fallbackBrush;  // hasOverride if it's set, otherwise fallbackBrush
KtBrush replaced = hasOverride & otherBrush;      // otherBrush if hasOverride is set, otherwise None
```

`&`/`|` also accept a `KtColor` directly on the right-hand side. Both also work with an `Action` for fluent side effects - the brush itself is always returned unchanged:

```csharp "🔴 🟡 🟢"
someBrush & (() => Invalidate());   // run the action only if the brush is set
someBrush | (() => LoadDefault());  // run the action only if the brush is None
```

## Rendering

```csharp "🔴 🟡 🟢"
Brush gdiBrush     = someBrush.Brush();   // System.Drawing.Brush, cached and reused
Pen   gdiPen       = someBrush.Pen();     // non-null only once a border width is set
GraphicsPath path  = someBrush.Path();    // the rounded-rect/squircle outline

Color representative = someBrush;         // implicit -> KtColor -> Color

string token  = someBrush.Render();                              // e.g. "Blue" or "(Blue,Sky,45)" - not the GDI+ Brush
Bitmap masked = someBrush.Render(sourceBitmap, borderRadius: 12f); // clips a bitmap to this brush's shape

someBrush.Dispose(KtBrush.KtGDIs.Brush);  // force a specific cached resource (Pen/Brush/Path/All) to rebuild
```

## State & Equality

```csharp "🔴 🟡 🟢"
if (someBrush) { }                  // implicit bool: true unless None
bool empty   = someBrush.IsEmpty;
bool visible = someBrush.IsVisible;
bool same    = brushA.Equals(brushB); // Solid/Gradient compare by color(s) + angle; the base falls back to reference equality
```

## Interop

```csharp "🔴 🟡 🟢"
var json = new JObject { ["fill"] = someBrush }; // implicit -> JToken: [color] for solid, [start, stop] for gradient
```

## Design-Time Support

A `public KtBrush` property gets PropertyGrid support automatically via `KtBrushConverter` - an expandable node with `Color`/`StartColor`/`StopColor`/`Angle` sub-properties depending on the current kind, plus correct serialization. No extra code required.
