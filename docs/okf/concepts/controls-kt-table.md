---
type: concept
title: "KimTools / Controls / Table"
description: "A fully themed data grid with per-region skinning, rounded cell corners, custom scrollbar overlays, and native-looking checkbox, button, and link rendering."
source: "https://kimtoo.net/controls/kt-table/"
path: /controls/kt-table/
updated: 2026-08-27
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-27T10:23:11.246Z"
---
---
title: "KimTools / Controls / Table"
description: "A fully themed data grid with per-region skinning, rounded cell corners, custom scrollbar overlays, and native-looking checkbox, button, and link rendering."
keywords: ["KimTools", "Controls", "KtTable", "Table", "DataGridView"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `Table`
A fully themed data grid with per-region skinning, rounded cell corners, custom scrollbar overlays, and native-looking checkbox, button, and link rendering.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-table-light](/assets/images/screenshots/kt-table/kt-table-light.png?v=639233836454618382){ .light .snapshot} ![kt-table-dark](/assets/images/screenshots/kt-table/kt-table-dark.png?v=639233836454618382){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::

::: hero layout:split glow:true
## Flat / Minimal Table
A zero-border grid with a solid primary header and subtle alternating rows. Clean typography and no radius — ideal for dense data dashboards.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 520,
    Height = 320,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false
};
	
var table = new KtTable
{
    Width = 480,
    Height = 280,
    Margin = new Padding(5),
};
	
table.Style.Color = KtColor.PRIMARY;
table.Style.Background = KtColor.BASE;
table.Style.Foreground = KtColor.CONTENT;
table.Style.Header = new KtSkin(KtColor.White, KtColor.PRIMARY);
table.Style.Row = new KtSkin(KtColor.CONTENT, KtColor.BASE);
table.Style.RowAlt = new KtSkin(KtColor.CONTENT, KtColor.BASE_1);
table.Style.Border = 0;
	
table.Columns.Add(new DataGridViewTextBoxColumn { Name = "Item", HeaderText = "Item", Width = 150 });
table.Columns.Add(new DataGridViewTextBoxColumn { Name = "Qty", HeaderText = "Qty", Width = 80 });
table.Columns.Add(new DataGridViewTextBoxColumn { Name = "Total", HeaderText = "Total", Width = 100 });
	
table.Rows.Add("Keyboard", "2", "$198");
table.Rows.Add("Mouse", "1", "$59");
table.Rows.Add("Monitor", "3", "$897");
table.Rows.Add("Headset", "1", "$129");
	
panel.Controls.Add(table);
```
== side
::: tabs
== tab "Auto" icon:app-window
![table-flat-light](/assets/images/screenshots/kt-table/table-flat-light.png?v=639233836480589034){ .light .snapshot} ![table-flat-dark](/assets/images/screenshots/kt-table/table-flat-dark.png?v=639233836480589034){.dark .snapshot}

== tab "Light" icon:sun
![table-flat-light](/assets/images/screenshots/kt-table/table-flat-light.png?v=639233836480568916){  .snapshot}

== tab "Dark" icon:moon
![table-flat-dark](/assets/images/screenshots/kt-table/table-flat-dark.png?v=639233836480568916){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Rounded Cells (`Border`)
Set `Border` to apply a squircle mask to the outer corners of the grid. Cells paint flush against the rounded boundary, giving the table a card-like container appearance.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 520,
    Height = 320,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false
};
	
var table = new KtTable
{
    Width = 480,
    Height = 280,
    Margin = new Padding(5),
};
	
table.Style.Color = KtColor.SUCCESS;
table.Style.Background = KtColor.BASE;
table.Style.Foreground = KtColor.CONTENT;
table.Style.Header = new KtSkin(KtColor.White, KtColor.SUCCESS);
table.Style.Row = new KtSkin(KtColor.CONTENT, KtColor.BASE);
table.Style.RowAlt = new KtSkin(KtColor.CONTENT, KtColor.BASE_1);
table.Style.Border = 8;
	
table.Columns.Add(new DataGridViewTextBoxColumn { Name = "Project", HeaderText = "Project", Width = 140 });
table.Columns.Add(new DataGridViewTextBoxColumn { Name = "Owner", HeaderText = "Owner", Width = 100 });
table.Columns.Add(new DataGridViewTextBoxColumn { Name = "Progress", HeaderText = "Progress", Width = 90 });
	
table.Rows.Add("Alpha", "Alice", "80%");
table.Rows.Add("Beta", "Bob", "45%");
table.Rows.Add("Gamma", "Carol", "92%");
table.Rows.Add("Delta", "Dave", "12%");
	
panel.Controls.Add(table);
```
== side
::: tabs
== tab "Auto" icon:app-window
![table-rounded-light](/assets/images/screenshots/kt-table/table-rounded-light.png?v=639233836492560869){ .light .snapshot} ![table-rounded-dark](/assets/images/screenshots/kt-table/table-rounded-dark.png?v=639233836492560869){.dark .snapshot}

== tab "Light" icon:sun
![table-rounded-light](/assets/images/screenshots/kt-table/table-rounded-light.png?v=639233836492560869){  .snapshot}

== tab "Dark" icon:moon
![table-rounded-dark](/assets/images/screenshots/kt-table/table-rounded-dark.png?v=639233836492560869){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Theme Variants (`Color`, `Header`)
Swap the entire table accent by changing `Style.Color`. The header background follows automatically, and selection states derive their tint from the same source. No per-cell color management required.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 700,
    Height = 320,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.LeftToRight
};
	
var primary = new KtTable
{
    Width = 210,
    Height = 260,
    Margin = new Padding(5),
};
primary.Style.Color = KtColor.PRIMARY;
primary.Style.Header = new KtSkin(KtColor.White, KtColor.PRIMARY);
primary.Style.Row = new KtSkin(KtColor.CONTENT, KtColor.BASE);
primary.Style.RowAlt = new KtSkin(KtColor.CONTENT, KtColor.BASE_1);
	
var rose = new KtTable
{
    Width = 210,
    Height = 260,
    Margin = new Padding(5),
};
rose.Style.Color = KtColor.Rose;
rose.Style.Header = new KtSkin(KtColor.White, KtColor.Rose);
rose.Style.Row = new KtSkin(KtColor.CONTENT, KtColor.BASE);
rose.Style.RowAlt = new KtSkin(KtColor.CONTENT, KtColor.BASE_1);
	
var emerald = new KtTable
{
    Width = 210,
    Height = 260,
    Margin = new Padding(5),
};
emerald.Style.Color = KtColor.Emerald;
emerald.Style.Header = new KtSkin(KtColor.White, KtColor.Emerald);
emerald.Style.Row = new KtSkin(KtColor.CONTENT, KtColor.BASE);
emerald.Style.RowAlt = new KtSkin(KtColor.CONTENT, KtColor.BASE_1);
	
foreach (var t in new[] { primary, rose, emerald })
{
    t.Columns.Add(new DataGridViewTextBoxColumn { Name = "Metric", HeaderText = "Metric", Width = 100 });
    t.Columns.Add(new DataGridViewTextBoxColumn { Name = "Value", HeaderText = "Value", Width = 80 });
    t.Rows.Add("Revenue", "$12k");
    t.Rows.Add("Users", "3.4k");
    t.Rows.Add("Churn", "2%");
}
	
panel.Controls.Add(primary);
panel.Controls.Add(rose);
panel.Controls.Add(emerald);
```
== side
::: tabs
== tab "Auto" icon:app-window
![table-themed-light](/assets/images/screenshots/kt-table/table-themed-light.png?v=639233836507717610){ .light .snapshot} ![table-themed-dark](/assets/images/screenshots/kt-table/table-themed-dark.png?v=639233836507717610){.dark .snapshot}

== tab "Light" icon:sun
![table-themed-light](/assets/images/screenshots/kt-table/table-themed-light.png?v=639233836507717610){  .snapshot}

== tab "Dark" icon:moon
![table-themed-dark](/assets/images/screenshots/kt-table/table-themed-dark.png?v=639233836507717610){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Native Cell Types (`BorderButtons`, `BorderCheckBoxes`)
Checkboxes, buttons, and links are owner-drawn with rounded corners. Set `BorderButtons` and `BorderCheckBoxes` independently to match your design language.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 520,
    Height = 320,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false
};
	
var table = new KtTable
{
    Width = 480,
    Height = 280,
    Margin = new Padding(5),
};
	
table.Style.Color = KtColor.PRIMARY;
table.Style.Background = KtColor.BASE;
table.Style.Foreground = KtColor.CONTENT;
table.Style.Header = new KtSkin(KtColor.White, KtColor.PRIMARY);
table.Style.Row = new KtSkin(KtColor.CONTENT, KtColor.BASE);
table.Style.RowAlt = new KtSkin(KtColor.CONTENT, KtColor.BASE_1);
table.Style.BorderButtons = 6;
table.Style.BorderCheckBoxes = 4;
table.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
	
table.Columns.Add(new DataGridViewCheckBoxColumn { Name = "Done", HeaderText = "Done", Width = 50 });
table.Columns.Add(new DataGridViewTextBoxColumn { Name = "Task", HeaderText = "Task", Width = 140 });
table.Columns.Add(new DataGridViewLinkColumn { Name = "Link", HeaderText = "Link", Width = 80, });
table.Columns.Add(new DataGridViewLinkColumn { Name = "Action", HeaderText = "Action", Width = 90 });
	
table.Rows.Add(false, "Update docs", "View", "Edit");
table.Rows.Add(true, "Fix login bug", "View", "Edit");
table.Rows.Add(false, "Refactor API", "View", "Edit");
table.Rows.Add(true, "Deploy v2", "View", "Edit");
	
panel.Controls.Add(table);
```
== side
::: tabs
== tab "Auto" icon:app-window
![table-cells-light](/assets/images/screenshots/kt-table/table-cells-light.png?v=639233836520060758){ .light .snapshot} ![table-cells-dark](/assets/images/screenshots/kt-table/table-cells-dark.png?v=639233836520060758){.dark .snapshot}

== tab "Light" icon:sun
![table-cells-light](/assets/images/screenshots/kt-table/table-cells-light.png?v=639233836520051674){  .snapshot}

== tab "Dark" icon:moon
![table-cells-dark](/assets/images/screenshots/kt-table/table-cells-dark.png?v=639233836520051674){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Custom Scrollbar (`ScrollBar`, `BorderScrollBar`)
The grid scrollbar is overlaid with a themed track and thumb. `ScrollBar.Foreground` tints the thumb; `ScrollBar.Background` tints the track. `BorderScrollBar` controls the thumb radius independently from the cell border.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 520,
    Height = 320,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false
};
	
var table = new KtTable
{
    Width = 480,
    Height = 280,
    Margin = new Padding(5),
};
	
table.Style.Color = KtColor.PRIMARY;
table.Style.Background = KtColor.BASE;
table.Style.Foreground = KtColor.CONTENT;
table.Style.Header = new KtSkin(KtColor.White, KtColor.PRIMARY);
table.Style.Row = new KtSkin(KtColor.CONTENT, KtColor.BASE);
table.Style.RowAlt = new KtSkin(KtColor.CONTENT, KtColor.BASE_1);
table.Style.Border = 6;
table.Style.BorderScrollBar = 8;
table.Style.ScrollBar = new KtSkin(KtColor.BASE_3, KtColor.BASE_2);
	
table.Columns.Add(new DataGridViewTextBoxColumn { Name = "Id", HeaderText = "ID", Width = 60 });
table.Columns.Add(new DataGridViewTextBoxColumn { Name = "Name", HeaderText = "Name", Width = 120 });
table.Columns.Add(new DataGridViewTextBoxColumn { Name = "Region", HeaderText = "Region", Width = 100 });
	
for (int i = 1; i <= 20; i++)
    table.Rows.Add($"#{i:D3}", $"User {i}", "APAC");
	
panel.Controls.Add(table);
```
== side
::: tabs
== tab "Auto" icon:app-window
![table-scrollbar-light](/assets/images/screenshots/kt-table/table-scrollbar-light.png?v=639233836532879134){ .light .snapshot} ![table-scrollbar-dark](/assets/images/screenshots/kt-table/table-scrollbar-dark.png?v=639233836532879134){.dark .snapshot}

== tab "Light" icon:sun
![table-scrollbar-light](/assets/images/screenshots/kt-table/table-scrollbar-light.png?v=639233836532879134){  .snapshot}

== tab "Dark" icon:moon
![table-scrollbar-dark](/assets/images/screenshots/kt-table/table-scrollbar-dark.png?v=639233836532879134){ .snapshot}

:::
:::
## API `Reference`
| ::: tag "Style" icon:wrench | ::: tag "DataGridViewSkin" color:#6B7C94 icon:check-check  | *Sets the Style.* |
| -------- | ------- | ----------- |

### DataGridViewSkin 
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "Color" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Color.* |
| ::: tag "Background" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Background.* |
| ::: tag "Foreground" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Foreground.* |
| ::: tag "Header" icon:wrench | ::: tag "Kt-Skin" color:#6B7C94 icon:check-check  | *Sets the Header.* |
| ::: tag "Row" icon:wrench | ::: tag "Kt-Skin" color:#6B7C94 icon:check-check  | *Sets the Row.* |
| ::: tag "ScrollBar" icon:wrench | ::: tag "Kt-Skin" color:#6B7C94 icon:check-check  | *Sets the Scroll bar.* |
| ::: tag "RowAlt" icon:wrench | ::: tag "Kt-Skin" color:#6B7C94 icon:check-check  | *Sets the Row alt.* |
| ::: tag "BorderHeader" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Border header.* |
| ::: tag "BorderButtons" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Border buttons.* |
| ::: tag "BorderCheckBoxes" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Border check boxes.* |
| ::: tag "BorderScrollBar" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Border scroll bar.* |
| ::: tag "Border" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the Border.* |
