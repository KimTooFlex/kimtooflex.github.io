---
type: concept
title: "KimTools / Components / Toasts"
description: "Deliver stunningly neat, time-bound, and brief messages about application processes. Supports multiple message types, custom positioning, action buttons, drag interaction, and per-type visual customization."
source: "https://kimtoo.net/components/kt-toasts/"
path: /components/kt-toasts/
updated: 2026-08-29
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-29T11:03:15.515Z"
---
---
title: "KimTools / Components / Toasts"
description: "Deliver stunningly neat, time-bound, and brief messages about application processes. Supports multiple message types, custom positioning, action buttons, drag interaction, and per-type visual customization."
keywords: ["KimTools", "Components", "KtToasts", "Toasts", "Component"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `Toasts`
Deliver stunningly neat, time-bound, and brief messages about application processes. Supports multiple message types, custom positioning, action buttons, drag interaction, and per-type visual customization.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-toasts-light](/assets/images/screenshots/kt-toasts/kt-toasts-light.png?v=639234603444562129){ .light .snapshot} ![kt-toasts-dark](/assets/images/screenshots/kt-toasts/kt-toasts-dark.png?v=639234603444562129){.dark .snapshot}
:::
<!-- -->
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var toast = new KtToasts()
```

::: hero layout:split glow:true
## Information Message
Displays a standard Information toast notification. Used to convey neutral Information updates or general Information to the user.
```csharp "🔴 🟡 🟢"
toast.Show(
    owner: this, // Owning form
    message: "Notification Message", 
    type: KtToasts.MessageTypes.Information);
```
== side
::: tabs
== tab "Auto" icon:app-window
![Information-light](/assets/images/screenshots/kt-toasts/Information-light.png?v=639234603525917481){ .light .snapshot} ![Information-dark](/assets/images/screenshots/kt-toasts/Information-dark.png?v=639234603525917481){.dark .snapshot}

== tab "Light" icon:sun
![Information-light](/assets/images/screenshots/kt-toasts/Information-light.png?v=639234603525917481){  .snapshot}

== tab "Dark" icon:moon
![Information-dark](/assets/images/screenshots/kt-toasts/Information-dark.png?v=639234603525917481){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Success Message
Displays a standard Success toast notification. Used to convey neutral Success updates or general Success to the user.
```csharp "🔴 🟡 🟢"
toast.Show(
    owner: this, // Owning form
    message: "Notification Message",
    type: KtToasts.MessageTypes.Success);
```
== side
::: tabs
== tab "Auto" icon:app-window
![Success-light](/assets/images/screenshots/kt-toasts/Success-light.png?v=639234603583480197){ .light .snapshot} ![Success-dark](/assets/images/screenshots/kt-toasts/Success-dark.png?v=639234603583480197){.dark .snapshot}

== tab "Light" icon:sun
![Success-light](/assets/images/screenshots/kt-toasts/Success-light.png?v=639234603583480197){  .snapshot}

== tab "Dark" icon:moon
![Success-dark](/assets/images/screenshots/kt-toasts/Success-dark.png?v=639234603583480197){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Warning Message
Displays a standard Warning toast notification. Used to convey neutral Warning updates or general Warning to the user.
```csharp "🔴 🟡 🟢"
toast.Show(
    owner: this, // Owning form
    message: "Notification Message",
    type: KtToasts.MessageTypes.Warning);
```
== side
::: tabs
== tab "Auto" icon:app-window
![Warning-light](/assets/images/screenshots/kt-toasts/Warning-light.png?v=639234603641019927){ .light .snapshot} ![Warning-dark](/assets/images/screenshots/kt-toasts/Warning-dark.png?v=639234603641019927){.dark .snapshot}

== tab "Light" icon:sun
![Warning-light](/assets/images/screenshots/kt-toasts/Warning-light.png?v=639234603641019927){  .snapshot}

== tab "Dark" icon:moon
![Warning-dark](/assets/images/screenshots/kt-toasts/Warning-dark.png?v=639234603641019927){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Error Message
Displays a standard Error toast notification. Used to convey neutral Error updates or general Error to the user.
```csharp "🔴 🟡 🟢"
toast.Show(
    owner: this, // Owning form
    message: "Notification Message",
    type: KtToasts.MessageTypes.Error);
```
== side
::: tabs
== tab "Auto" icon:app-window
![Error-light](/assets/images/screenshots/kt-toasts/Error-light.png?v=639234603698683247){ .light .snapshot} ![Error-dark](/assets/images/screenshots/kt-toasts/Error-dark.png?v=639234603698683247){.dark .snapshot}

== tab "Light" icon:sun
![Error-light](/assets/images/screenshots/kt-toasts/Error-light.png?v=639234603698683247){  .snapshot}

== tab "Dark" icon:moon
![Error-dark](/assets/images/screenshots/kt-toasts/Error-dark.png?v=639234603698683247){ .snapshot}

:::
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "InformationOptions" icon:wrench | ::: tag "CustomizationOptions" color:#6B7C94 icon:check-check  | *Sets the list of customization options provided for the Snackbar's informational messages.* |
| ::: tag "SuccessOptions" icon:wrench | ::: tag "CustomizationOptions" color:#6B7C94 icon:check-check  | *Sets the list of customization options provided for the Snackbar's success messages.* |
| ::: tag "WarningOptions" icon:wrench | ::: tag "CustomizationOptions" color:#6B7C94 icon:check-check  | *Sets the list of customization options provided for the Snackbar's warning messages.* |
| ::: tag "ErrorOptions" icon:wrench | ::: tag "CustomizationOptions" color:#6B7C94 icon:check-check  | *Sets the list of customization options provided for the Snackbar's error messages.* |
| ::: tag "Host" icon:wrench | ::: tag "Hosts" color:#6B7C94 icon:check-check  | *Sets the host that will be used to contain the Snackbar.* |
| ::: tag "AllowDragging" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether the Snackbar will be draggable once displayed.* |
| ::: tag "ClickToClose" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether the Snackbar will be closed once clicked by the user.* |
| ::: tag "DoubleClickToClose" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether the Snackbar will be closed once double-clicked by the user.* |
| ::: tag "AllowMultipleViews" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether multiple instances of the Snackbar will be displayed at a time.* |
| ::: tag "ShowCloseIcon" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether the close icon will be displayed.* |
| ::: tag "ShowIcon" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether the Snackbar icon will be displayed.* |
| ::: tag "ShowBorders" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether the Snackbar will display its borders rather than shadows.* |
| ::: tag "ShowShadows" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether the Snackbar will display its shadows rather than borders.* |
| ::: tag "FadeCloseIcon" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether the close icon will fade when inactive.* |
| ::: tag "ZoomCloseIcon" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether the close icon will zoom-in when hovered onto.* |
| ::: tag "MinimumSize" icon:wrench | ::: tag "Size" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.size?view=netframework-4.8  | *Sets the minimum size the Snackbar can be auto-resized to.* |
| ::: tag "MaximumSize" icon:wrench | ::: tag "Size" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.size?view=netframework-4.8  | *Sets the maximum size the Snackbar can be auto-resized to.* |
| ::: tag "Margin" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the overall Snackbar's overall distance between its host and its edges.* |
| ::: tag "ViewsMargin" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the distance between Snackbars whenever multiple views are enabled using the property 'AllowMultipleViews'.* |
| ::: tag "MaximumViews" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the maximum number of Snackbars that can be visible at a given time.* |
| ::: tag "DurationAfterIdle" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the duration the Snackbar will remain visible after it receives and then loses mouse focus.* |
| ::: tag "MessageRightMargin" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the Snackbar's message right margin, or distance between the message and the closing icon. Please note that the minimum size for display will be established beyond the user-provided margin.* |
