---
type: concept
title: "KimTools / Controls / SvgCanvas"
description: "A high-performance SVG canvas with a full templating engine supporting model binding, loops, conditionals, show/hide, processing instructions, and CSS SmartFormat variables."
source: "https://kimtoo.net/controls/kt-svg-canvas/"
path: /controls/kt-svg-canvas/
updated: 2026-08-28
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-28T16:10:21.143Z"
---
---
title: "KimTools / Controls / SvgCanvas"
description: "A high-performance SVG canvas with a full templating engine supporting model binding, loops, conditionals, show/hide, processing instructions, and CSS SmartFormat variables."
keywords: ["KimTools", "Controls", "KtSvgCanvas", "SvgCanvas", "Panel"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `SvgCanvas`
A high-performance SVG canvas with a full templating engine supporting model binding, loops, conditionals, show/hide, processing instructions, and CSS SmartFormat variables.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-svg-canvas-light](/assets/images/screenshots/kt-svg-canvas/kt-svg-canvas-light.png?v=639235409898594873){ .light .snapshot} ![kt-svg-canvas-dark](/assets/images/screenshots/kt-svg-canvas/kt-svg-canvas-dark.png?v=639235409898594873){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::

::: hero layout:split glow:true
## Icon Row / Tabler Set
Display multiple Tabler icons side-by-side in individual `KtSvgCanvas` instances. Each canvas carries its own `KtSvgTemplate` with a distinct icon path. Canvas dimensions are set to 80 % of the panel height for uniform, responsive sizing. Use the `Color` property to theme each icon independently against a transparent background.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 500,
    Height = 500,
    Padding = new Padding(25),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.LeftToRight
};
	
string[] icons = { IconHome, IconUser, IconHeart, IconHeart };
KtColor[] colors = { KtColor.PRIMARY, KtColor.INFO, KtColor.ERROR, KtColor.WARNING };
	
for (int i = 0; i < icons.Length; i++)
{
    int dim = 100;
	
    var canvas = new KtSvgCanvas
    {
        Width = dim,
        Height = dim,
        Margin = new Padding(8),
        BackColor = Color.Transparent,
        Color = colors[i]
    };
	
    canvas.Templates.Add(new KtSvgTemplate(canvas.Templates)
    {
        Name = $"icon-{i}",
        Svg = icons[i]
    });
	
    panel.Controls.Add(canvas);
}
```
== side
::: tabs
== tab "Auto" icon:app-window
![svg-icon-row-light](/assets/images/screenshots/kt-svg-canvas/svg-icon-row-light.png?v=639235409935310221){ .light .snapshot} ![svg-icon-row-dark](/assets/images/screenshots/kt-svg-canvas/svg-icon-row-dark.png?v=639235409935310221){.dark .snapshot}

== tab "Light" icon:sun
![svg-icon-row-light](/assets/images/screenshots/kt-svg-canvas/svg-icon-row-light.png?v=639235409935269483){  .snapshot}

== tab "Dark" icon:moon
![svg-icon-row-dark](/assets/images/screenshots/kt-svg-canvas/svg-icon-row-dark.png?v=639235409935269483){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Themed Icons (`Color`, `BackColor`)
Tabler icons inherit the canvas `Color` as their stroke color. Place canvases on contrasting `BackColor` surfaces — light on dark, primary on white, or tinted washes. The error state uses `KtColor.ERROR` at full strength over a 20 % opacity wash. This makes the same vector paths adapt to any theme surface without duplicating SVG markup.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 420,
    Height = 200,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.LeftToRight
};
	
int dim = 100;
	
var canvasLight = new KtSvgCanvas
{
    Width = dim,
    Height = dim,
    Margin = new Padding(8),
    BackColor = KtColor.BASE_1,
    Color = KtColor.CONTENT
};
	
canvasLight.Templates.Add(new KtSvgTemplate(canvasLight.Templates)
{
    Name = "search",
    Svg = IconSearch
});
	
var canvasPrimary = new KtSvgCanvas
{
    Width = dim,
    Height = dim,
    Margin = new Padding(8),
    BackColor = KtColor.PRIMARY,
    Color = KtColor.White
};
	
canvasPrimary.Templates.Add(new KtSvgTemplate(canvasPrimary.Templates)
{
    Name = "check",
    Svg = IconCheck
});
	
var canvasError = new KtSvgCanvas
{
    Width = dim,
    Height = dim,
    Margin = new Padding(8),
    BackColor = KtColor.ERROR % 20,
    Color = KtColor.ERROR
};
	
canvasError.Templates.Add(new KtSvgTemplate(canvasError.Templates)
{
    Name = "heart",
    Svg = IconHeart
});
	
panel.Controls.Add(canvasLight);
panel.Controls.Add(canvasPrimary);
panel.Controls.Add(canvasError);
```
== side
::: tabs
== tab "Auto" icon:app-window
![svg-themed-light](/assets/images/screenshots/kt-svg-canvas/svg-themed-light.png?v=639235409960375754){ .light .snapshot} ![svg-themed-dark](/assets/images/screenshots/kt-svg-canvas/svg-themed-dark.png?v=639235409960375754){.dark .snapshot}

== tab "Light" icon:sun
![svg-themed-light](/assets/images/screenshots/kt-svg-canvas/svg-themed-light.png?v=639235409960370591){  .snapshot}

== tab "Dark" icon:moon
![svg-themed-dark](/assets/images/screenshots/kt-svg-canvas/svg-themed-dark.png?v=639235409960370591){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Model-Bound Progress Bar & Text
A simplified progress bar built with basic `<rect>` elements and top-left text using `dominant-baseline="hanging"` to prevent vertical cropping.
```csharp "🔴 🟡 🟢"
var canvas = new KtSvgCanvas
{
    Width = 400,
    Height = 100,
    Margin = new Padding(0, 10, 0, 10),
    BackColor = KtColor.Transparent,
    Color = KtColor.PRIMARY
};
	
canvas.Templates.Add(new KtSvgTemplate(canvas.Templates)
{
    Name = "status",
    Svg = """
          <svg width="100%" height="100%" viewBox="0 0 100 100" fill="none" xmlns="http://www.w3.org/2000/svg">
              <!-- Top-Left Text -->
              <text x="5" y="45" dominant-baseline="hanging" font-size="10" font-weight="bold" fill="currentColor">{status}</text>
	
              <!-- Progress Track Background -->
              <rect x="5" y="55" width="90" height="20" rx="4" fill="currentColor" opacity="0.2" />
	
              <!-- Active Progress Fill -->
              <rect x="5" y="55" width="{progress}" height="20" rx="4" fill="currentColor" />
          </svg>
          """
});
	
canvas.Model["status"] = "Uploading...";
canvas.Model["progress"] = 60; // 0 to 90 scale to fit the track width
canvas.Render();
```
== side
::: tabs
== tab "Auto" icon:app-window
![svg-model-bound-light](/assets/images/screenshots/kt-svg-canvas/svg-model-bound-light.png?v=639235409983552505){ .light .snapshot} ![svg-model-bound-dark](/assets/images/screenshots/kt-svg-canvas/svg-model-bound-dark.png?v=639235409983552505){.dark .snapshot}

== tab "Light" icon:sun
![svg-model-bound-light](/assets/images/screenshots/kt-svg-canvas/svg-model-bound-light.png?v=639235409983552505){  .snapshot}

== tab "Dark" icon:moon
![svg-model-bound-dark](/assets/images/screenshots/kt-svg-canvas/svg-model-bound-dark.png?v=639235409983552505){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Conditional Rendering (`x:if` / `x:else`)
Toggle entire SVG branches using `x:if` and `x:else` attributes. The compiler evaluates the bound expression and emits only the matching branch. Use this for state-driven icons — check vs. cross, connected vs. disconnected, or locked vs. unlocked.
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
int dim = 100;
	
var canvas = new KtSvgCanvas
{
    Width = dim,
    Height = dim,
    Margin = new Padding(0, 10, 0, 10),
    BackColor = KtColor.BASE_2,
    Color = KtColor.SUCCESS
};
	
canvas.Templates.Add(new KtSvgTemplate(canvas.Templates)
{
    Name = "toggle",
    Svg = """
        <svg width="100%" height="100%" viewBox="0 0 100 100" fill="none" xmlns="http://www.w3.org/2000/svg">
            <g x:if="{isActive}">
                <circle cx="50%" cy="50%" r="40%" fill="currentColor" opacity="0.2"/>
                <path d="M5 12l5 5l10 -10" stroke="currentColor" stroke-width="2" fill="none" transform="scale(2.5) translate(4,4)"/>
            </g>
            <g x:else>
                <circle cx="50%" cy="50%" r="40%" fill="currentColor" opacity="0.1"/>
                <path d="M6 6l12 12 M6 18l12 -12" stroke="currentColor" stroke-width="2" fill="none" transform="scale(2.5) translate(4,4)"/>
            </g>
        </svg>
        """
});
	
canvas.Model["isActive"] = true;
canvas.Render();
	
panel.Controls.Add(canvas);
```
== side
::: tabs
== tab "Auto" icon:app-window
![svg-conditional-light](/assets/images/screenshots/kt-svg-canvas/svg-conditional-light.png?v=639235410006430827){ .light .snapshot} ![svg-conditional-dark](/assets/images/screenshots/kt-svg-canvas/svg-conditional-dark.png?v=639235410006430827){.dark .snapshot}

== tab "Light" icon:sun
![svg-conditional-light](/assets/images/screenshots/kt-svg-canvas/svg-conditional-light.png?v=639235410006375433){  .snapshot}

== tab "Dark" icon:moon
![svg-conditional-dark](/assets/images/screenshots/kt-svg-canvas/svg-conditional-dark.png?v=639235410006375433){ .snapshot}

:::
:::

::: hero layout:split glow:true
## List Rendering (`x:for`)
Repeat SVG fragments with `x:for` using a JSON array literal injected via `<script>`. The compiler expands the loop into SmartFormat list syntax, binding each iteration to the declared variable. Reference item properties directly — `{x}` and `{a}` — to build ratings, step indicators, or dot pagers without manual duplication.
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
int dim = 100;
	
var canvas = new KtSvgCanvas
{
    Width = dim,
    Height = dim,
    Margin = new Padding(0, 10, 0, 10),
    BackColor = KtColor.BASE_1,
    Color = KtColor.WARNING
};
	
canvas.Templates.Add(new KtSvgTemplate(canvas.Templates)
{
    Name = "rating",
    Svg = """
        <svg width="100%" height="100%" viewBox="0 0 100 100" fill="none" xmlns="http://www.w3.org/2000/svg">
            <script>{"dots":[{"x":10,"a":1},{"x":30,"a":1},{"x":50,"a":1},{"x":70,"a":0.2},{"x":90,"a":0.2}]}</script>
            <g x:for="dots as d">
                <circle cx="{x}%" cy="50%" r="8%" fill="currentColor" opacity="{a}"/>
            </g>
        </svg>
        """
});
	
panel.Controls.Add(canvas);
```
== side
::: tabs
== tab "Auto" icon:app-window
![svg-loop-light](/assets/images/screenshots/kt-svg-canvas/svg-loop-light.png?v=639235410029411908){ .light .snapshot} ![svg-loop-dark](/assets/images/screenshots/kt-svg-canvas/svg-loop-dark.png?v=639235410029411908){.dark .snapshot}

== tab "Light" icon:sun
![svg-loop-light](/assets/images/screenshots/kt-svg-canvas/svg-loop-light.png?v=639235410029411908){  .snapshot}

== tab "Dark" icon:moon
![svg-loop-dark](/assets/images/screenshots/kt-svg-canvas/svg-loop-dark.png?v=639235410029411908){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Visibility Toggles (`x:show` / `x:hide`)
Control visibility without removing elements from the DOM using `x:show` and `x:hide`. These attributes compile to SVG `visibility` rules driven by the model. Useful for soft-state indicators — online dots, notification badges, or validation checkmarks.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 420,
    Height = 420,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var canvas = new KtSvgCanvas
{
    Width = panel.Width - panel.Padding.Horizontal,
    Height = (int)((panel.Height - panel.Padding.Vertical) * 0.5),
    Margin = new Padding(0, 10, 0, 10),
    BackColor = KtColor.BASE_2,
    Color = KtColor.INFO
};
	
canvas.Templates.Add(new KtSvgTemplate(canvas.Templates)
{
    Name = "visibility",
    Svg = """
        <svg width="100%" height="100%" viewBox="0 0 100 100" fill="none" xmlns="http://www.w3.org/2000/svg">
            <rect x="5%" y="10%" width="90%" height="80%" rx="8"
                  fill="currentColor" opacity="0.08"/>
	
            <rect x:show="{visible}"
                  x="10%" y="20%" width="35%" height="60%" rx="6"
                  fill="currentColor" opacity="0.9"/>
	
            <circle x:show="{visible}"
                    cx="27.5%" cy="50%" r="12%"
                    fill="white" opacity="0.25"/>
	
            <rect x:hide="{hidden}"
                  x="55%" y="20%" width="35%" height="60%" rx="6"
                  fill="currentColor" opacity="0.35"/>
	
            <circle x:hide="{hidden}"
                    cx="72.5%" cy="50%" r="12%"
                    fill="currentColor" opacity="0.9"/>
        </svg>
        """
});
	
canvas.Model["visible"] = true;
canvas.Model["hidden"] = false;
canvas.Render();
	
panel.Controls.Add(canvas);
```
== side
::: tabs
== tab "Auto" icon:app-window
![svg-show-hide-light](/assets/images/screenshots/kt-svg-canvas/svg-show-hide-light.png?v=639235410052442456){ .light .snapshot} ![svg-show-hide-dark](/assets/images/screenshots/kt-svg-canvas/svg-show-hide-dark.png?v=639235410052442456){.dark .snapshot}

== tab "Light" icon:sun
![svg-show-hide-light](/assets/images/screenshots/kt-svg-canvas/svg-show-hide-light.png?v=639235410052432375){  .snapshot}

== tab "Dark" icon:moon
![svg-show-hide-dark](/assets/images/screenshots/kt-svg-canvas/svg-show-hide-dark.png?v=639235410052432375){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Template Injection (`<?bg?>`, `x-bg`)
Compose complex graphics by referencing sibling templates. Use processing instructions `<?templateName?>` or `<x-templateName/>` tags to inline one template into another. Here a soft background wash is defined once and injected into the foreground mail icon, keeping markup DRY.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 420,
    Height = 420,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
int dim = panel.Height - panel.Padding.Vertical;
	
var canvas = new KtSvgCanvas
{
    Width = dim,
    Height = dim,
    Margin = new Padding(0, 10, 0, 10),
    BackColor = KtColor.BASE_1,
    Color = KtColor.PRIMARY
};
	
// Background template — injected by processing instruction
canvas.Templates.Add(new KtSvgTemplate(canvas.Templates)
{
    Name = "bg",
    Svg = """
        <svg width="100%" height="100%" viewBox="0 0 100 100" fill="none" xmlns="http://www.w3.org/2000/svg">
            <circle cx="50%" cy="50%" r="50%" fill="currentColor" opacity="0.1"/>
        </svg>
        """
});
	
// Foreground template — consumes bg via <?bg?> then draws the icon
canvas.Templates.Add(new KtSvgTemplate(canvas.Templates)
{
    Name = "main",
    Svg = """
        <svg width="100%" height="100%" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
            <?bg?><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M3 7a2 2 0 0 1 2 -2h14a2 2 0 0 1 2 2v10a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-10z" /><path d="M3 7l9 6l9 -6" />
        </svg>
        """
});
	
panel.Controls.Add(canvas);
```
== side
::: tabs
== tab "Auto" icon:app-window
![svg-processing-light](/assets/images/screenshots/kt-svg-canvas/svg-processing-light.png?v=639235410075698957){ .light .snapshot} ![svg-processing-dark](/assets/images/screenshots/kt-svg-canvas/svg-processing-dark.png?v=639235410075698957){.dark .snapshot}

== tab "Light" icon:sun
![svg-processing-light](/assets/images/screenshots/kt-svg-canvas/svg-processing-light.png?v=639235410075698957){  .snapshot}

== tab "Dark" icon:moon
![svg-processing-dark](/assets/images/screenshots/kt-svg-canvas/svg-processing-dark.png?v=639235410075698957){ .snapshot}

:::
:::

::: hero layout:split glow:true
## CSS SmartFormat Variables (`var()`)
Inside `<style>` blocks, the `var()` syntax is rewritten to SmartFormat placeholders. This lets you drive CSS values from the `Model` dictionary at runtime. Use it for theme tokens, dynamic palettes, or responsive stroke widths without inline attribute repetition.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 420,
    Height = 420,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var canvas = new KtSvgCanvas
{
    Width = panel.Width - panel.Padding.Horizontal,
    Height = (int)((panel.Height - panel.Padding.Vertical) * 0.6),
    Margin = new Padding(0, 10, 0, 10),
    BackColor = KtColor.BASE_2,
    Color = KtColor.PRIMARY
};
	
canvas.Templates.Add(new KtSvgTemplate(canvas.Templates)
{
    Name = "cssvar",
    Svg = """
        <svg width="100%" height="100%" viewBox="0 0 100 100" fill="none" xmlns="http://www.w3.org/2000/svg">
            <style>.box { fill: var(accent); stroke: var(accent); stroke-width: 2; }</style>
            <rect class="box" x="20%" y="20%" width="60%" height="60%" rx="8"/>
            <text x="50%" y="50%" dominant-baseline="central" text-anchor="middle" font-size="14" fill="white">{label}</text>
        </svg>
        """
});
	
canvas.Model["accent"] = "#8b5cf6";
canvas.Model["label"] = "Smart CSS";
canvas.Render();
	
panel.Controls.Add(canvas);
```
== side
::: tabs
== tab "Auto" icon:app-window
![svg-css-smart-light](/assets/images/screenshots/kt-svg-canvas/svg-css-smart-light.png?v=639235410098836178){ .light .snapshot} ![svg-css-smart-dark](/assets/images/screenshots/kt-svg-canvas/svg-css-smart-dark.png?v=639235410098836178){.dark .snapshot}

== tab "Light" icon:sun
![svg-css-smart-light](/assets/images/screenshots/kt-svg-canvas/svg-css-smart-light.png?v=639235410098836178){  .snapshot}

== tab "Dark" icon:moon
![svg-css-smart-dark](/assets/images/screenshots/kt-svg-canvas/svg-css-smart-dark.png?v=639235410098836178){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Advanced Composition
Combine `<script>` data injection, `x:for`, property binding, arithmetic expressions, and `x:show` in a single template. A JSON script block seeds the context with an array of metrics. The loop renders three bars with percentage heights driven by `{val}`, conditional HIGH badges via `{val > 80}`, and centered labels. This demonstrates how `KtSvgCanvas` acts as a declarative data-visualization surface.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 420,
    Height = 420,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var canvas = new KtSvgCanvas
{
    Width = panel.Width - panel.Padding.Horizontal,
    Height = (int)((panel.Height - panel.Padding.Vertical) * 0.7),
    Margin = new Padding(0, 10, 0, 10),
    BackColor = KtColor.BASE_1,
    Color = KtColor.PRIMARY
};
	
canvas.Templates.Add(new KtSvgTemplate(canvas.Templates)
{
    Name = "dashboard",
    Svg = """
        <svg width="100%" height="100%" viewBox="0 0 100 100" fill="none" xmlns="http://www.w3.org/2000/svg">
            <script>{"metrics":[{"name":"CPU","val":72,"x":10},{"name":"RAM","val":45,"x":43},{"name":"NET","val":88,"x":76}]}</script>
            <g x:for="metrics as m">
                <rect x="{x}%" y="10%" width="30%" height="80%" rx="4" fill="currentColor" opacity="0.1"/>
                <text x="{x + 15}%" y="20%" text-anchor="middle" dominant-baseline="central" font-size="10" fill="currentColor">{name}</text>
                <rect x="{x + 5}%" y="{90 - val}%" width="20%" height="{val}%" fill="currentColor" opacity="0.8"/>
                <text x="{x + 15}%" y="85%" text-anchor="middle" dominant-baseline="central" font-size="10" fill="currentColor">{val}%</text>
                <text x="{x + 15}%" y="40%" text-anchor="middle" dominant-baseline="central" font-size="9" fill="currentColor" x:show="{val > 80}">HIGH</text>
            </g>
        </svg>
        """
});
	
panel.Controls.Add(canvas);
```
== side
::: tabs
== tab "Auto" icon:app-window
![svg-advanced-light](/assets/images/screenshots/kt-svg-canvas/svg-advanced-light.png?v=639235410121779737){ .light .snapshot} ![svg-advanced-dark](/assets/images/screenshots/kt-svg-canvas/svg-advanced-dark.png?v=639235410121779737){.dark .snapshot}

== tab "Light" icon:sun
![svg-advanced-light](/assets/images/screenshots/kt-svg-canvas/svg-advanced-light.png?v=639235410121774439){  .snapshot}

== tab "Dark" icon:moon
![svg-advanced-dark](/assets/images/screenshots/kt-svg-canvas/svg-advanced-dark.png?v=639235410121774439){ .snapshot}

:::
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "Templates" icon:wrench | ::: tag "Kt-SvgContainer" color:#6B7C94 icon:check-check  | *Sets the Templates.* |
| ::: tag "ExComposited" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets the Ex composited.* |
| ::: tag "Latency" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Latency.* |
