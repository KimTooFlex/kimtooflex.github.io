---
type: concept
title: "KimTools / Components / PopOver"
description: "An extender provider that turns any control into a popover trigger, showing a target control in a dropdown with configurable direction, shadow, and lifecycle events."
source: "https://kimtoo.net/components/kt-pop-over/"
path: /components/kt-pop-over/
updated: 2026-08-27
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-27T20:29:03.956Z"
---
---
title: "KimTools / Components / PopOver"
description: "An extender provider that turns any control into a popover trigger, showing a target control in a dropdown with configurable direction, shadow, and lifecycle events."
keywords: ["KimTools", "Components", "KtPopOver", "PopOver", "Component"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `PopOver`
An extender provider that turns any control into a popover trigger, showing a target control in a dropdown with configurable direction, shadow, and lifecycle events.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-pop-over-light](/assets/images/screenshots/kt-pop-over/kt-pop-over-light.png?v=639234523498280504){ .light .snapshot} ![kt-pop-over-dark](/assets/images/screenshots/kt-pop-over/kt-pop-over-dark.png?v=639234523498280504){.dark .snapshot}
:::
<!-- -->

::: hero layout:split glow:true
## Direction Control (`SetDirection`)
Call `SetDirection(trigger, direction)` to position the dropdown relative to each trigger. Directions include `AboveRight`, `BelowRight`, `Left`, `Right`, and `Default`. Each trigger control can have its own direction independent of the component default.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 460,
    Height = 120,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.LeftToRight
};
	
var popOver = new KtPopOver { Shadow = true, Direction = ToolStripDropDownDirection.Default };
	
var btnAbove = new Button { Text = "Above", Width = 90, Height = 32, Margin = new Padding(5), FlatStyle = FlatStyle.Flat };
var btnBelow = new Button { Text = "Below", Width = 90, Height = 32, Margin = new Padding(5), FlatStyle = FlatStyle.Flat };
var btnLeft = new Button { Text = "Left", Width = 90, Height = 32, Margin = new Padding(5), FlatStyle = FlatStyle.Flat };
var btnRight = new Button { Text = "Right", Width = 90, Height = 32, Margin = new Padding(5), FlatStyle = FlatStyle.Flat };
	
popOver.SetDirection(btnAbove, ToolStripDropDownDirection.AboveRight);
popOver.SetDirection(btnBelow, ToolStripDropDownDirection.BelowRight);
popOver.SetDirection(btnLeft, ToolStripDropDownDirection.Left);
popOver.SetDirection(btnRight, ToolStripDropDownDirection.Right);
	
panel.Controls.Add(btnAbove);
panel.Controls.Add(btnBelow);
panel.Controls.Add(btnLeft);
panel.Controls.Add(btnRight);
```
== side
::: tabs
== tab "Auto" icon:app-window
![popover-directions-light](/assets/images/screenshots/kt-pop-over/popover-directions-light.png?v=639234523533535218){ .light .snapshot} ![popover-directions-dark](/assets/images/screenshots/kt-pop-over/popover-directions-dark.png?v=639234523533535218){.dark .snapshot}

== tab "Light" icon:sun
![popover-directions-light](/assets/images/screenshots/kt-pop-over/popover-directions-light.png?v=639234523533525542){  .snapshot}

== tab "Dark" icon:moon
![popover-directions-dark](/assets/images/screenshots/kt-pop-over/popover-directions-dark.png?v=639234523533525542){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Drop Shadow (`Shadow`)
Toggle `Shadow = true` to add a system drop shadow to the popover dropdown. When `false`, the popover appears flat against the parent form.
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
	
var withShadow = new KtPopOver { Shadow = true };
var withoutShadow = new KtPopOver { Shadow = false };
	
var btnShadow = new Button { Text = "Shadow On", Width = 120, Height = 32, Margin = new Padding(5), FlatStyle = FlatStyle.Flat };
var btnNoShadow = new Button { Text = "Shadow Off", Width = 120, Height = 32, Margin = new Padding(5), FlatStyle = FlatStyle.Flat };
	
panel.Controls.Add(btnShadow);
panel.Controls.Add(btnNoShadow);
```
== side
::: tabs
== tab "Auto" icon:app-window
![popover-shadow-light](/assets/images/screenshots/kt-pop-over/popover-shadow-light.png?v=639234523550372268){ .light .snapshot} ![popover-shadow-dark](/assets/images/screenshots/kt-pop-over/popover-shadow-dark.png?v=639234523550372268){.dark .snapshot}

== tab "Light" icon:sun
![popover-shadow-light](/assets/images/screenshots/kt-pop-over/popover-shadow-light.png?v=639234523550372268){  .snapshot}

== tab "Dark" icon:moon
![popover-shadow-dark](/assets/images/screenshots/kt-pop-over/popover-shadow-dark.png?v=639234523550372268){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Lifecycle Events (`Opened`, `Opening`, `Closed`, `Closing`)
Subscribe to `Opened` / `Closed` for side effects after the dropdown shows or hides. Use `Opening` and `Closing` (both `CancelEventArgs`) to intercept and prevent the action when conditions aren't met.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 400,
    Height = 160,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var popOver = new KtPopOver { Shadow = true };
	
popOver.Opened += (s, e) => { /* popover opened */ };
popOver.Closed += (s, e) => { /* popover closed */ };
popOver.Opening += (s, e) => { /* cancel via e.Cancel = true */ };
popOver.Closing += (s, e) => { /* cancel via e.Cancel = true */ };
	
var btn = new Button { Text = "Evented Trigger", Width = 140, Height = 36, Margin = new Padding(5), FlatStyle = FlatStyle.Flat };
	
panel.Controls.Add(btn);
```
== side
::: tabs
== tab "Auto" icon:app-window
![popover-events-light](/assets/images/screenshots/kt-pop-over/popover-events-light.png?v=639234523567584429){ .light .snapshot} ![popover-events-dark](/assets/images/screenshots/kt-pop-over/popover-events-dark.png?v=639234523567584429){.dark .snapshot}

== tab "Light" icon:sun
![popover-events-light](/assets/images/screenshots/kt-pop-over/popover-events-light.png?v=639234523567584429){  .snapshot}

== tab "Dark" icon:moon
![popover-events-dark](/assets/images/screenshots/kt-pop-over/popover-events-dark.png?v=639234523567584429){ .snapshot}

:::
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "Shadow" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets the Shadow.* |
| ::: tag "Direction" icon:wrench | ::: tag "ToolStripDropDownDirection" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstripdropdowndirection?view=netframework-4.8  | *Sets the Direction.* |
