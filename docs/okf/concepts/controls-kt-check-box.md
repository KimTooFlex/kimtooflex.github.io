---
type: concept
title: "KimTools / Controls / CheckBox"
description: "A themeable, better-looking checkbox for WinForms, inspired by iCheck, with per-state color control."
source: "https://kimtoo.net/controls/kt-check-box/"
path: /controls/kt-check-box/
updated: 2026-08-29
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-29T11:03:15.577Z"
---
---
title: "KimTools / Controls / CheckBox"
description: "A themeable, better-looking checkbox for WinForms, inspired by iCheck, with per-state color control."
keywords: ["KimTools", "Controls", "KtCheckBox", "CheckBox", "UserControl"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `CheckBox`
A themeable, better-looking checkbox for WinForms, inspired by iCheck, with per-state color control.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-check-box-light](/assets/images/screenshots/kt-check-box/kt-check-box-light.png?v=639234522210902861){ .light .snapshot} ![kt-check-box-dark](/assets/images/screenshots/kt-check-box/kt-check-box-dark.png?v=639234522210902861){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::
| ::: tag "ColorScheme" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Color scheme.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Anchoring a `Label`
`KtCheckBox` aligns relative to external `Label` controls when positioned inside the same parent container.
```csharp "🔴 🟡 🟢"
var row = new Panel
{
    Width = 180,
    Height = 26,
    BackColor = Color.Transparent
};
	
var checkbox = new KtCheckBox
{
    Size = new Size(22, 22),
    ColorScheme = KtColor.PRIMARY
};
	
var label = new Label
{
    Text = "Remember me",
    AutoSize = true,
    Cursor = Cursors.Hand
};
	
label.Click += (s, e) => checkbox.Checked = !checkbox.Checked;
	
// Add to container first
row.Controls.Add(checkbox);
row.Controls.Add(label);
	
// Configure positions after adding to container
checkbox.Location = new Point(0, 2);
label.Location = new Point(checkbox.Right + 8, 4);
```
== side
::: tabs
== tab "Auto" icon:app-window
![anchored-label-light](/assets/images/screenshots/kt-check-box/anchored-label-light.png?v=639234522235817608){ .light .snapshot} ![anchored-label-dark](/assets/images/screenshots/kt-check-box/anchored-label-dark.png?v=639234522235817608){.dark .snapshot}

== tab "Light" icon:sun
![anchored-label-light](/assets/images/screenshots/kt-check-box/anchored-label-light.png?v=639234522235817608){  .snapshot}

== tab "Dark" icon:moon
![anchored-label-dark](/assets/images/screenshots/kt-check-box/anchored-label-dark.png?v=639234522235817608){ .snapshot}

:::
:::

::: hero layout:split glow:true
## `Style`
Switch between `Tailwind`, `Flat`, and `Round` presets. `Round` pairs well with a higher `BorderRadius` for a fully pill-shaped box.
```csharp "🔴 🟡 🟢"
var tailwindPanel = new Panel
{
    Width = 230,
    Height = 28,
    Location = new Point(10, 10),
    BackColor = Color.Transparent
};
	
var tailwind = new KtCheckBox
{
    Size = new Size(22, 22), 
    BorderRadius = 6,
    Checked = true
};
	
var tailwindLabel = new Label
{
    Text = "Tailwind",
    AutoSize = true
};
	
tailwindPanel.Controls.Add(tailwind);
tailwindPanel.Controls.Add(tailwindLabel);
tailwind.Location = new Point(0, 2);
tailwindLabel.Location = new Point(tailwind.Right + 8, 4);
	
var flatPanel = new Panel
{
    Width = 230,
    Height = 28,
    Location = new Point(10, 44),
    BackColor = Color.Transparent
};
	
var flat = new KtCheckBox
{
    Size = new Size(22, 22), 
    BorderRadius = 0,
    Checked = true
};
	
var flatLabel = new Label
{
    Text = "Flat",
    AutoSize = true
};
	
flatPanel.Controls.Add(flat);
flatPanel.Controls.Add(flatLabel);
flat.Location = new Point(0, 2);
flatLabel.Location = new Point(flat.Right + 8, 4);
	
var roundPanel = new Panel
{
    Width = 230,
    Height = 28,
    Location = new Point(10, 78),
    BackColor = Color.Transparent
};
	
var round = new KtCheckBox
{
    Size = new Size(22, 22), 
    BorderRadius = 10,
    Checked = true
};
	
var roundLabel = new Label
{
    Text = "Round",
    AutoSize = true
};
	
roundPanel.Controls.Add(round);
roundPanel.Controls.Add(roundLabel);
round.Location = new Point(0, 2);
roundLabel.Location = new Point(round.Right + 8, 4);
	
container.Controls.Add(tailwindPanel);
container.Controls.Add(flatPanel);
container.Controls.Add(roundPanel);
```
== side
::: tabs
== tab "Auto" icon:app-window
![checkbox-styles-light](/assets/images/screenshots/kt-check-box/checkbox-styles-light.png?v=639234522247317331){ .light .snapshot} ![checkbox-styles-dark](/assets/images/screenshots/kt-check-box/checkbox-styles-dark.png?v=639234522247317331){.dark .snapshot}

== tab "Light" icon:sun
![checkbox-styles-light](/assets/images/screenshots/kt-check-box/checkbox-styles-light.png?v=639234522247317331){  .snapshot}

== tab "Dark" icon:moon
![checkbox-styles-dark](/assets/images/screenshots/kt-check-box/checkbox-styles-dark.png?v=639234522247317331){ .snapshot}

:::
:::

::: hero layout:split glow:true
## `ThreeState` + `CheckState`
Set `ThreeState` to `true` and use `Indeterminate` for parent checkboxes whose children are only partially selected.
```csharp "🔴 🟡 🟢"
var row = new Panel
{
    Width = 180,
    Height = 28,
    BackColor = Color.Transparent
};
	
var checkbox = new KtCheckBox
{
    Size = new Size(22, 22),
    ColorScheme = KtColor.WARNING,
    ThreeState = true,
    CheckState = KtCheckBox.CheckStates.Indeterminate
};
	
var label = new Label
{
    Text = "Select all",
    AutoSize = true
};
	
// Add to container first
row.Controls.Add(checkbox);
row.Controls.Add(label);
	
// Set coordinates after adding to container
checkbox.Location = new Point(0, 2);
label.Location = new Point(checkbox.Right + 8, 4);
```
== side
::: tabs
== tab "Auto" icon:app-window
![three-state-light](/assets/images/screenshots/kt-check-box/three-state-light.png?v=639234522257685128){ .light .snapshot} ![three-state-dark](/assets/images/screenshots/kt-check-box/three-state-dark.png?v=639234522257685128){.dark .snapshot}

== tab "Light" icon:sun
![three-state-light](/assets/images/screenshots/kt-check-box/three-state-light.png?v=639234522257685128){  .snapshot}

== tab "Dark" icon:moon
![three-state-dark](/assets/images/screenshots/kt-check-box/three-state-dark.png?v=639234522257685128){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Custom `OnCheck` / `OnUncheck` colors
For finer control than `ColorScheme` provides, configure `BorderColor`, `CheckBoxColor`, and `CheckmarkColor` directly on `OnCheck` and `OnUncheck`.
```csharp "🔴 🟡 🟢"
var checkbox = new KtCheckBox
{
    Size = new Size(22, 22),
    Checked = true
};
	
checkbox.OnCheck.CheckBoxColor = KtColor.SUCCESS;
checkbox.OnCheck.BorderColor = KtColor.SUCCESS;
checkbox.OnCheck.CheckmarkColor = Color.White;
	
checkbox.OnUncheck.BorderColor = KtColor.NEUTRAL % 60;
```
== side
::: tabs
== tab "Auto" icon:app-window
![custom-state-colors-light](/assets/images/screenshots/kt-check-box/custom-state-colors-light.png?v=639234522267613631){ .light .snapshot} ![custom-state-colors-dark](/assets/images/screenshots/kt-check-box/custom-state-colors-dark.png?v=639234522267613631){.dark .snapshot}

== tab "Light" icon:sun
![custom-state-colors-light](/assets/images/screenshots/kt-check-box/custom-state-colors-light.png?v=639234522267613631){  .snapshot}

== tab "Dark" icon:moon
![custom-state-colors-dark](/assets/images/screenshots/kt-check-box/custom-state-colors-dark.png?v=639234522267613631){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Checklist
Pair `KtCheckBox` with labels inside simple `Panel` containers to create a vertical checklist.
```csharp "🔴 🟡 🟢"
var terms = new Panel
{
    Width = 240,
    Height = 28,
    Location = new Point(10, 10),
    BackColor = Color.Transparent
};
	
var termsCheckbox = new KtCheckBox
{
    Size = new Size(22, 22),
    ColorScheme = KtColor.PRIMARY,
    Checked = true
};
	
var termsLabel = new Label
{
    Text = "I agree to the Terms of Service",
    AutoSize = true
};
	
terms.Controls.Add(termsCheckbox);
terms.Controls.Add(termsLabel);
termsCheckbox.Location = new Point(0, 2);
termsLabel.Location = new Point(termsCheckbox.Right + 8, 4);
	
var updates = new Panel
{
    Width = 240,
    Height = 28,
    Location = new Point(10, 44),
    BackColor = Color.Transparent
};
	
var updatesCheckbox = new KtCheckBox
{
    Size = new Size(22, 22),
    ColorScheme = KtColor.PRIMARY,
    Checked = false
};
	
var updatesLabel = new Label
{
    Text = "Subscribe to product updates",
    AutoSize = true
};
	
updates.Controls.Add(updatesCheckbox);
updates.Controls.Add(updatesLabel);
updatesCheckbox.Location = new Point(0, 2);
updatesLabel.Location = new Point(updatesCheckbox.Right + 8, 4);
	
var usage = new Panel
{
    Width = 240,
    Height = 28,
    Location = new Point(10, 78),
    BackColor = Color.Transparent
};
	
var usageCheckbox = new KtCheckBox
{
    Size = new Size(22, 22),
    ColorScheme = KtColor.PRIMARY,
    Checked = false
};
	
var usageLabel = new Label
{
    Text = "Share usage data to help improve KimTools",
    AutoSize = true
};
	
usage.Controls.Add(usageCheckbox);
usage.Controls.Add(usageLabel);
usageCheckbox.Location = new Point(0, 2);
usageLabel.Location = new Point(usageCheckbox.Right + 8, 4);
	
container.Controls.Add(terms);
container.Controls.Add(updates);
container.Controls.Add(usage);
```
== side
::: tabs
== tab "Auto" icon:app-window
![checklist-light](/assets/images/screenshots/kt-check-box/checklist-light.png?v=639234522279429769){ .light .snapshot} ![checklist-dark](/assets/images/screenshots/kt-check-box/checklist-dark.png?v=639234522279429769){.dark .snapshot}

== tab "Light" icon:sun
![checklist-light](/assets/images/screenshots/kt-check-box/checklist-light.png?v=639234522279429769){  .snapshot}

== tab "Dark" icon:moon
![checklist-dark](/assets/images/screenshots/kt-check-box/checklist-dark.png?v=639234522279429769){ .snapshot}

:::
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "LabelPosition" icon:wrench | ::: tag "BindingControlPositions" color:#6B7C94 icon:check-check  | *Gets or sets the position of the bound control in relation to the CheckBox.* |
| ::: tag "Style" icon:wrench | ::: tag "CheckBoxStyles" color:#6B7C94 icon:check-check  | *[Deprecated] Gets or sets the standard CheckBox style to be applied.* |
| ::: tag "ColorScheme" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Color scheme.* |
| ::: tag "Checked" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets the CheckBox check-state to true or false.* |
| ::: tag "AnimateCheckMark" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Indicates whether the Checkmark will allow check-state-change animations/transitions at runtime.* |
| ::: tag "AnimateCheckBox" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Indicates whether the CheckBox will allow standard animations at runtime.* |
| ::: tag "AllowBindingControlLocation" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Indicates whether the CheckBox will allow the bound control's location to be positioned based on it's own location.* |
| ::: tag "ToolTip" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Allows you to easily set some ToolTip information to be displayed to the user on mouse-hovering over the control.* |
| ::: tag "Cursor" icon:wrench | ::: tag "Cursor" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.cursor?view=netframework-4.8  | *The cursor that appears when the pointer moves over the control.* |
| ::: tag "Label" icon:wrench | ::: tag "Label" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.label?view=netframework-4.8  | *Gets or sets the control to bind directly with the CheckBox; this in most cases is a Label. This setting also binds the most appropriate events of the CheckBox to the control selected.* |
