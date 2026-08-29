---
type: concept
title: "KimTools / Controls / RadioBox"
description: "A customizable, stylish radio button control for WinForms with built-in binding and color states."
source: "https://kimtoo.net/controls/kt-radio-box/"
path: /controls/kt-radio-box/
updated: 2026-08-29
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-29T19:16:54.208Z"
---
---
title: "KimTools / Controls / RadioBox"
description: "A customizable, stylish radio button control for WinForms with built-in binding and color states."
keywords: ["KimTools", "Controls", "KtRadioBox", "RadioBox", "Control"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `RadioBox`
A customizable, stylish radio button control for WinForms with built-in binding and color states.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-radio-box-light](/assets/images/screenshots/kt-radio-box/kt-radio-box-light.png?v=639234524214728295){ .light .snapshot} ![kt-radio-box-dark](/assets/images/screenshots/kt-radio-box/kt-radio-box-dark.png?v=639234524214728295){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::
# RadioColor
| ::: tag "RadioColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the radio color.* |
| -------- | ------- | ----------- |
# OutlineColor
| ::: tag "OutlineColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the outline color.* |
| -------- | ------- | ----------- |
# BorderThickness
| ::: tag "BorderThickness" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the outline's border thickness.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Binding a `Label` Control
`KtRadioBox` supports direct binding to external controls (such as `Label`) via the `BindingControl` property. Clicking the bound label automatically toggles the radio button and handles position placement.
```csharp "🔴 🟡 🟢"
var row = new Panel
{
    Width = 180,
    Height = 26,
    BackColor = Color.Transparent
};
	
var radio = new KtRadioBox
{
    Size = new Size(21, 21),
    RadioColor = KtColor.PRIMARY,
    OutlineColor = KtColor.PRIMARY,
    AllowBindingControlLocation = true
};
	
var label = new Label
{
    Text = "Enable notifications",
    AutoSize = true,
    Cursor = Cursors.Hand
};
	
// Add to container first
row.Controls.Add(radio);
row.Controls.Add(label);
	
// Assign binding control after container addition
radio.BindingControl = label;
radio.BindingControlPosition = KtRadioBox.BindingControlPositions.Right;
```
== side
::: tabs
== tab "Auto" icon:app-window
![binding-control-light](/assets/images/screenshots/kt-radio-box/binding-control-light.png?v=639234524252240958){ .light .snapshot} ![binding-control-dark](/assets/images/screenshots/kt-radio-box/binding-control-dark.png?v=639234524252240958){.dark .snapshot}

== tab "Light" icon:sun
![binding-control-light](/assets/images/screenshots/kt-radio-box/binding-control-light.png?v=639234524252240958){  .snapshot}

== tab "Dark" icon:moon
![binding-control-dark](/assets/images/screenshots/kt-radio-box/binding-control-dark.png?v=639234524252240958){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Radio Group
Multiple `KtRadioBox` instances sharing the same parent container automatically handle mutual exclusion, ensuring only one option in the group is selected at a time.
```csharp "🔴 🟡 🟢"
var row1 = new Panel
{
    Width = 240,
    Height = 28,
    Location = new Point(10, 10),
    BackColor = Color.Transparent
};
	
var radio1 = new KtRadioBox
{
    Size = new Size(21, 21),
    RadioColor = KtColor.PRIMARY,
    OutlineColor = KtColor.PRIMARY,
    Checked = true
};
	
var label1 = new Label
{
    Text = "Credit / Debit Card",
    AutoSize = true
};
	
row1.Controls.Add(radio1);
row1.Controls.Add(label1);
radio1.Location = new Point(0, 3);
label1.Location = new Point(radio1.Right + 8, 4);
	
var row2 = new Panel
{
    Width = 240,
    Height = 28,
    Location = new Point(10, 44),
    BackColor = Color.Transparent
};
	
var radio2 = new KtRadioBox
{
    Size = new Size(21, 21),
    RadioColor = KtColor.PRIMARY,
    OutlineColor = KtColor.PRIMARY,
    Checked = false
};
	
var label2 = new Label
{
    Text = "PayPal",
    AutoSize = true
};
	
row2.Controls.Add(radio2);
row2.Controls.Add(label2);
radio2.Location = new Point(0, 3);
label2.Location = new Point(radio2.Right + 8, 4);
	
var row3 = new Panel
{
    Width = 240,
    Height = 28,
    Location = new Point(10, 78),
    BackColor = Color.Transparent
};
	
var radio3 = new KtRadioBox
{
    Size = new Size(21, 21),
    RadioColor = KtColor.PRIMARY,
    OutlineColor = KtColor.PRIMARY,
    Checked = false
};
	
var label3 = new Label
{
    Text = "Bank Transfer",
    AutoSize = true
};
	
row3.Controls.Add(radio3);
row3.Controls.Add(label3);
radio3.Location = new Point(0, 3);
label3.Location = new Point(radio3.Right + 8, 4);
	
container.Controls.Add(row1);
container.Controls.Add(row2);
container.Controls.Add(row3);
```
== side
::: tabs
== tab "Auto" icon:app-window
![radio-group-light](/assets/images/screenshots/kt-radio-box/radio-group-light.png?v=639234524271058504){ .light .snapshot} ![radio-group-dark](/assets/images/screenshots/kt-radio-box/radio-group-dark.png?v=639234524271058504){.dark .snapshot}

== tab "Light" icon:sun
![radio-group-light](/assets/images/screenshots/kt-radio-box/radio-group-light.png?v=639234524271058504){  .snapshot}

== tab "Dark" icon:moon
![radio-group-dark](/assets/images/screenshots/kt-radio-box/radio-group-dark.png?v=639234524271058504){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Custom State Colors and Borders
Customize individual states using `RadioColor`, `OutlineColor`, `OutlineColorUnchecked`, and `BorderThickness`.
```csharp "🔴 🟡 🟢"
var row = new Panel
{
    Width = 180,
    Height = 28,
    BackColor = Color.Transparent
};
	
var radio = new KtRadioBox
{
    Size = new Size(21, 21),
    RadioColor = KtColor.SUCCESS,
    OutlineColor = KtColor.SUCCESS,
    OutlineColorUnchecked = KtColor.NEUTRAL,
    BorderThickness = 3,
    Checked = true
};
	
var label = new Label
{
    Text = "Custom theme option",
    AutoSize = true
};
	
row.Controls.Add(radio);
row.Controls.Add(label);
	
radio.Location = new Point(0, 3);
label.Location = new Point(radio.Right + 8, 4);
```
== side
::: tabs
== tab "Auto" icon:app-window
![custom-colors-light](/assets/images/screenshots/kt-radio-box/custom-colors-light.png?v=639234524287880758){ .light .snapshot} ![custom-colors-dark](/assets/images/screenshots/kt-radio-box/custom-colors-dark.png?v=639234524287880758){.dark .snapshot}

== tab "Light" icon:sun
![custom-colors-light](/assets/images/screenshots/kt-radio-box/custom-colors-light.png?v=639234524287880758){  .snapshot}

== tab "Dark" icon:moon
![custom-colors-dark](/assets/images/screenshots/kt-radio-box/custom-colors-dark.png?v=639234524287880758){ .snapshot}

:::
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "RadioColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the radio color.* |
| ::: tag "RadioColorTabFocused" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the radio color on focus.* |
| ::: tag "OutlineColorUnchecked" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the radio's outline color when unchecked.* |
| ::: tag "OutlineColorTabFocused" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the radio's color when focused.* |
| ::: tag "OutlineColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the outline color.* |
| ::: tag "BindingControlPosition" icon:wrench | ::: tag "BindingControlPositions" color:#6B7C94 icon:check-check  | *Sets the position of the bound control in relation to the radio button.* |
| ::: tag "Checked" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether the radio is checked.* |
| ::: tag "AllowBindingControlLocation" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Indicates whether the control will allow the bound control's location to be positioned based on it's own location.* |
| ::: tag "BorderThickness" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the outline's border thickness.* |
| ::: tag "BindingControl" icon:wrench | ::: tag "Control" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.control?view=netframework-4.8  | *Sets the control to bind directly with; this in most cases is a Label. This setting also binds with the most appropriate events for the control selected.* |
