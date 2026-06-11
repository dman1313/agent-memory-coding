---
recording_id: aRicqcdx
duration: 5m54s
created_at: 2026-06-05
updated_at: 2026-06-05

processed: true
processed_at: 2026-06-10T01:35:00Z
processed_note: retro-stamped 2026-06-11 by hyperagent (T-0007); archived by the 2026-06-10 batch compile — see wiki/log.md
---
# Agent Ready: making websites readable and cheaper for AI agents

Date: 2026-06-05

## Meeting Report

## Overview
The meeting explained the shift from chatbots/coding frameworks to agentic frameworks, where multiple autonomous agents can execute tasks on a user’s behalf. It introduced Agent Ready as a way to make websites easier/cheaper for agents to scan by serving content in agent-friendly formats via a Cloudflare Worker layer, improving token efficiency during site scanning.

## Agentic frameworks vs. chatbots
- Chatbots/coding frameworks referenced: OpenClaw, Spark, Claude Work
- Agentic frameworks described as environments that host multiple “virtual workers” (agents)
- “Agentic” framed as the ability to create/run agents that can take actions (not just respond)
- Agents can be configured with personas and delegated specific roles (e.g., travel planning)

## Example use case: delegated task execution
- Scenario: user wants a trip to Hawaii
  - Instead of searching manually, a dedicated travel agent persona can find deals
  - Next-stage capability discussed: the agent can also purchase tickets on the user’s behalf
- Cryptocurrency mentioned as relevant to enabling agent-driven purchasing

## Tokens, cost model, and why websites need to adapt
- Agents are not “free”; they consume tokens (“piece of LLM energy”) tied to providers (e.g., OpenAI, Claude, Google, various Chinese providers)
- Visiting/scanning a webpage costs money in token usage
- Market pressure: users/companies don’t want agents overspending tokens, so efficiency matters

## Agent Ready: purpose and approach
- Agent Ready described as a service that:
  - Searches/tests a website to assess what’s in HTML vs. agent-friendly formats
  - Helps ensure content is accessible in formats agents prefer (Markdown/JSON; simple/digestible structures)
  - Aims to reduce token usage and improve scanning efficiency
- Key positioning:
  - Humans prefer rich HTML/videos/photos; agents prefer simpler technical formats for fast digestion and collation
  - Goal: make a site easily “visited” and understood by agents as agent usage increases

## Implementation details (Cloudflare Worker layer)
- “No change required” claim: test the site without requiring the customer to modify anything initially
- Connection to Cloudflare to deploy a Worker that adds a layer to make the site “agent ready”
- Intended outcome: maximize efficiency of agent scanning and token usage

## Trial status and early results
- Currently in trial period
- Tested with a few customers
- Reported outcome: more efficient token usage when agents scan websites

## Action items
- Give it a whirl (try Agent Ready during the trial period)
- Connect to Cloudflare to enable the Worker layer that makes the website agent ready

## Transcript

So, this is the agent generation. And for some of you people who are wondering, "What is an agent?" I know I talk to friends about this, they think I'm talking about real estate. However, that's not what an agent is. (wind blowing) So, probably many people have heard about OpenClaw, or Spark, or Claude Work. That is called a chatbot or a coding framework. However, what's coming out now is called agentic frameworks. And what an agentic framework is, is it's a place where you hold multiple virtual workers. So an agent is basically one virtual chatbot. However, the word agentic means to be able to create and run and do stuff. So that's the big change here. 

So, with Claude Work in that you can set some routines, get it to do some stuff, but that's where we are. However, our next step is moving towards agents that can go out and do stuff on your behalf and think for you. Think. Uh, it feels like thinking. And you can set up a persona for each of these agents. So, what's gonna happen now is, for example, you wanna buy, you wanna, you wanna go to Hawaii. You're not hopping on Google anymore. The next stage is you're gonna have your Claude agent, or your Claude agentic framework, and you'll have a travel agent, agent. And you'll say, "Hey, Jimmy," whatever persona you give them. He'll run out and he'll find you the best deals on trips to Hawaii. 

And, yeah, here we go, here's that next step which is crazy, and, uh, not for the faint of heart. And this is kind of where cryptocurrency really comes into play. He can purchase you those tickets. So it's moving very quickly. And so this is where Agent Ready comes into play. Everybody's gonna have these agents. Many people have these agents now, or agentic frameworks, that have multiple agents that do lots of work. However, these agents do not work for free, like anyone. They cost tokens. And a token is a piece of LLM energy. Basically, the fact is that you have to pay some LLM provider, AI provider, like, uh, some, there's a bunch of Chinese providers, there's Google, there's, uh, OpenAI, there's Claude. 

And if you want to have these kind of freestanding, not all in one subscription, these agents will use tokens. And that's how they get paid, kind of, in a way. That's how they do the work. Now, if you have a web page, it costs money for these agents to come and look at your web page. And, you know, this is a free market. People don't like overspending. So this is where Agent Ready comes into play. What Agent Ready does is it will search your website. It will look at which stuff is in HTML, which is in the proper format that makes it easy for an agent to read. 

Agents like simplicity. They like technical files like Markdown and JSON. They want it in an agent-ready format. That way they can come and scan your website and just get it done very quickly. So this is where Agent Ready comes in. We test your website, you don't have to change anything. And then what we will do is you connect to Cloudflare, which everybody knows Cloudflare, very secure great system. And we have a worker on Cloudflare that will get to put a layer on that sets your website up to be agent ready so agents can read it and maximizes their token usage. 

So that's where we are. If you want to have your website ready and visited by all these practical agents now, you need to have it agent ready. And that's not something that, uh, is great for a human. Humans like HTML, they like videos, they like photos. Agents don't. Agents like Markdown, they like simple, they want to digest that information and collate it and then move forward. So, up came was the idea of Agent Ready. And this is still in our trial period, but we would like you to give it a whirl. And we've been testing it out with a couple different customers and they've found that it makes the token usages in scanning the websites more efficient.

# Related notes

- [[2026-05-21 Human good AI Agent Ready and AI back office for schoolsnonprofits]]
- [[2026-05-13 Agentic AI is here now — stop waiting, start drip-feeding your team]]
- [[2026-05-13 Agent-ready HTML reduces scan cost and attracts more AI visitors]]