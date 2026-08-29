---
type: concept
title: "KimTools / AI & LLM Context"
description: "Machine-readable documentation context for AI coding assistants and LLM agents."
source: "https://kimtoo.net/ai-llm/"
path: /ai-llm/
updated: 2026-08-29
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-29T11:13:49.474Z"
---
---
title: "KimTools / AI & LLM Context"
description: "Machine-readable documentation context for AI coding assistants and LLM agents."
keywords: ["KimTools", "AI", "LLM", "llms.txt", "llms-full.txt", "Model Context Protocol", "MCP", "AI agents", "AI coding assistant", "RAG", "machine-readable documentation", "AI-ready", "LLM context", "ChatGPT", "Claude", "Anthropic", "OpenAI", "GPT", "Copilot", "GitHub Copilot", "Gemini", "Cursor", "Windsurf", "WinForms", ".NET", "C#"]
layout: "full"
toc: false
---


::: hero layout:split glow:true
# AI / LLM `Context`
KimTools.WinForms publishes a complete, machine-readable context file so AI coding assistants and LLM agents can understand the entire component API in a single fetch.

::: button "llms-full.txt" external:https://kimtoo.net/docs/llms-full.txt icon:external-link
== side
![llms-context-example](/assets/images/ChatGPT-vs-Claude-vs-Copilot-vs-Gemini-hero.webp){ .with-shadow}
:::


## General

::: collapsible "What is llms-full.txt?"

`llms-full.txt` is a single Markdown document containing every KimTools.WinForms component, property, and code example from these docs, concatenated and optimized for ingestion by large language models.

It follows the emerging `llms.txt` convention adopted across the developer tooling ecosystem, making KimTools discoverable to AI agents without any custom integration work.

:::

::: collapsible "How do I use it with an AI assistant?"

Point any LLM tool at the file directly:

```
https://kimtoo.net/docs/llms-full.txt
```

Paste the URL into Claude, ChatGPT, Cursor, or any tool that accepts a context URL, and the model will have full knowledge of KimTools controls, properties, and usage patterns for that session.

:::

::: collapsible "Is there a shorter summary version?"

Yes.

`llms.txt` provides a condensed index of page titles, descriptions, and links, useful when an agent only needs an overview before fetching specific pages.

```
https://kimtoo.net/docs/llms.txt
```

:::

::: collapsible "Does KimTools support interactive AI agent access (MCP)?"

Not yet for public/remote use.

The documentation site is built with docmd, which ships a local-only MCP server (`docmd mcp`) for developers working directly in this docs project. There's no hosted MCP endpoint for external users at this time — `llms-full.txt` is the recommended way for outside tools to get context today.

:::

::: collapsible "How current is the context file?"

`llms-full.txt` is regenerated automatically on every documentation build, so it always reflects the latest published components and API references.

:::
