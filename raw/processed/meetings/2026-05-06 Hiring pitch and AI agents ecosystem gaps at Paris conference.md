---
recording_id: za1G6cRx
duration: 28m19s
created_at: 2026-05-06
updated_at: 2026-05-06

---
# Hiring pitch and AI agents ecosystem gaps at Paris conference

Date: 2026-05-06

## Meeting Report

### Présentation & clôture de session

- Speaker 1 indique être sur sa dernière slide et mentionne avoir retiré une slide la veille.
- Demande implicite de prendre une photo d’une slide contenant une citation (Speaker 1 mentionne que la personne citée ne pensait pas être citée dans la présentation).
- Annonce d’un format complémentaire : session “lunch and learn” à 12:00 PM pour partager davantage sur le “journey”.

### Recrutement & opportunités (Paris/Remote/Barcelone)

- Speaker 1 décrit Paris comme un “great ecosystem”.
- Recrutements mentionnés :
  - Une personne (présentée comme “this lady”) recrute davantage de scientists.
  - Opportunités possibles avec relocalisation à Barcelone, ou jobs remote depuis Paris.
  - Boaz cherche aussi à agrandir son équipe.
  - Speaker 1 recrute également.
- Point de contact : ajout LinkedIn et prise de contact directe avec Speaker 1.

### Organisation informelle & logistique sur place

- Discussion sur l’espace (“flat OIS”) et disponibilité de café/eau.
- Pause planifiée : prendre un café, démarrer dans cinq minutes ; passage aux toilettes avant de commencer.
- Incident matériel : laptop cassé le matin (trackball, Wi‑Fi, Bluetooth), puis annoncé comme réparé et retour à 100% de productivité.

### Échanges techniques & apprentissage (hackathon, Rust, parcours)

- Mention d’un hackathon à venir.
- Speaker 4 exprime vouloir se mettre au code et regarder Rust, après un parcours en “education integration”.
- Clarification de “education integration” :
  - Intégration de la technologie de la maternelle à la terminale (K‑12) : enseignants utilisant la tech pour enseigner et enseignant la tech.
  - Travail en cours autour des LLM : aider les enfants à apprendre à s’auto-former, via des conversations “agentic” de coaching (plutôt que générer directement un devoir).

### Discussion écosystème “AI agents” & manque de référentiel/marketplace

- Problème soulevé : absence d’un dépôt/marketplace central et reconnu pour les agents IA (analogie avec NPM / écosystème JS / Cargo pour Rust).
- Constat partagé : pas de site évident connu par les intervenants.
- Référence à une tentative passée (Context 7) perçue comme initiative startup sans devenir une ressource majeure.
- Réflexion governance/fondation :
  - Idée qu’il manque une fondation/gouvernance dédiée à l’écosystème IA (comparaison avec Linux Foundation et autres fondations de langages).
  - Mention d’impulsions open-source, notamment via des sponsors chinois.

### Critiques sur les mécanismes actuels (services/skills/inputs, MCP, hooks)

- Position exprimée : les mécanismes actuels pour “expanding” (services, skills, input) sont jugés insuffisants.
- MCP servers : reconnus comme ayant des problèmes connus, mais désaccord sur le fait que ce soit le problème fondamental.
- Point central discuté :
  - La curation seule n’apporte pas d’amélioration d’ordre de grandeur si l’agent reste décisionnaire (quand charger, quoi utiliser).
  - Les “skills” (ex. fichiers Markdown + ressources) échouent si l’agent ne sait pas choisir de les utiliser.
  - Les “hooks” sont perçus comme non standards et plutôt “fallback relationship”.

### Travail d’équipe & soumission (structure, repo, périmètre)

- Speaker 7 indique une contrainte de temps : finir en moins d’une heure.
- Speaker 4 explique qu’il faut décider s’ils avancent et soumettent ou non (“moving forward on it”).
- Retour sur recommandations de “Pod” : ne travailler que sur une partie, car faire les trois parties rend l’ensemble trop complexe ; suggestion de se concentrer sur le front-end et “pick one”.
- Problème de process identifié : oubli de cloner le dépôt Git envoyé le matin ; action demandée : Git clone du repo.
- Friction sur la structure :
  - Critique d’une approche jugée mauvaise (“same structure …”, “shitty approach”) et question “why you didn’t use the ChatGPT … structure / why you didn’t create something new?”
  - Focus mentionné sur une “structure” intégrant activement les préférences.

### Accès outils & abonnements (Gemini/Google Pro/Assistant)

- Discussion sur Google Pro/Gemini Pro et une possible gratuité pour étudiants universitaires, finalement précisée comme réservée aux étudiants US.
- Usage de Google Assistant pour des articles, et accès via des établissements (ex. Danemark) mentionné.
- Contraintes d’accès à des articles payants (ex. IEEE) et recours à des sites/applications alternatifs pour télécharger.
- Mention d’essais d’outils avec limite de tokens et refus de payer, et de “3 tokens” obtenus lors d’un hackathon précédent.

### Déplacements à Paris (transport, retards)

- Temps de trajet mentionné : environ une heure pour venir.
- Retards et interruptions de lignes/itinéraires la veille ; changements de ligne et retards répétés ; constat que les retards sont fréquents à Paris.

### Idées diverses & networking

- Demande d’ajout LinkedIn ; réponse : un participant n’a pas LinkedIn.
- Blague/idéation : système de “tattoo”/identifiant au contact (“chips that touch each other”) comme “next generation”.
- Échange sur la recherche d’un partenaire (“I don’t have a partner yet”).

## Transcript

[00:00:00] Speaker 1: Times you actually need both sides, uh, to, to, uh, to solve, you know, uh, those, uh, uh, those problems. And, and, uh, I believe this is my last slide, uh, and I, I removed, uh, one from my presentation, uh, uh, yesterday. And, and if you guys can also take a picture of, uh, this, he actually deemed he did not believe I would put, uh, I will quote him on this presentation. Uh, uh, thank you very much. And, and so there is a little bit also of thinking here is, uh, you know, we believe Paris, uh, is, uh, is a great, uh, ecosystem, and we are actually, uh, looking to hire for having people following us into, into this journey. So this, um, this lady is, is, uh, looking to hire more scientists, uh, and if you want to relocate, you know, to Barcelona, uh, or even, uh, the job are remote from, from Paris. Uh, Boaz also is looking to expand his team, and I'm also looking to hire. So if, if, uh, if you know people or if you guys are interested, um, you know, you can, you can reach out to me. Uh, you have my name, so you can add me on LinkedIn. And again, I have a lunch and learn, uh, session at 12:00 PM where I will, uh, share more about this, uh, journey.

[00:01:04] Speaker 2: That's a great share.

[00:01:05] Speaker 1: More than anything.

[00:01:06] Speaker 2: Helpful.

[00:01:06] Speaker 1: Thanks.

[00:01:07] Speaker 2: So, uh, the, the problem is when you, uh, hey.

[00:01:39] Speaker 3: Sorry, I wanted to check that flat. The flat OIS was pretty cool. Do they have coffee and water or whatever?

[00:01:44] Speaker 4: Yeah.

[00:01:45] Speaker 3: Definitely get a coffee. Here, I'll give you the I'll fire up my laptop first so you can start.

[00:01:51] Speaker 4: By the way, this morning my laptop was broken. Immediately, ta- uh, the trackball not working, Wi-Fi not working, Bluetooth not working. I, I was thinking that I fixed everything.

[00:02:02] Speaker 3: Okay, okay.

[00:02:03] Speaker 4: So I'm fully 100% productive. Oh, let's grab a coffee?

[00:02:06] Speaker 3: Yeah.

[00:02:06] Speaker 4: Drink it, and we'll be starting in five minutes.

[00:02:09] Speaker 3: Okay. I'm gonna go to the bathroom first.

[00:02:11] Speaker 4: Yeah.

[00:02:12] Speaker 5: Thank you.

[00:02:12] Speaker 3: Let me grab a coffee.

[00:02:14] Speaker 4: Okay.

[00:02:16] Speaker 3: Back there. Is that okay?

[00:02:16] Speaker 4: Yeah, okay, okay, okay.

[00:02:17] Speaker 3: Yeah, it should be there. Make more aggressive.

[00:04:06] Speaker 4: Oh, really?

[00:04:06] Speaker 3: Right? And then you end up marking it. But you could have done it in theory. You just couldn't.

[00:04:10] Speaker 4: Mais attends, mais.

[00:04:11] Speaker 3: Attends, mais je les ai remplies déjà.

[00:04:13] Speaker 4: Ouais, tu les as.

[00:04:13] Speaker 3: You know?

[00:04:13] Speaker 4: Je les ai vidées.

[00:04:14] Speaker 3: So, okay.

[00:04:14] Speaker 4: Oh, I, uh, I actually just I'm trying to start some quotes here right now.

[00:04:19] Speaker 3: Oh, yeah?

[00:04:20] Speaker 4: Yeah, yeah, yeah. Give it a while. I like that's something we need right now.

[00:04:23] Speaker 3: Je vous écoute. Vous n'avez rien dit.

[00:04:26] Speaker 4: J'ai compris, pas. J'ai pas compris.

[00:04:29] Speaker 3: Oh, okay.

[00:04:30] Speaker 4: Et je peux te faire faire le suivant.

[00:04:35] Speaker 3: Bonjour, monsieur. Vous avez choisi?

[00:04:36] Speaker 4: Oui, c'est ça.

[00:04:37] Speaker 3: Oh, super. You already used one?

[00:04:43] Speaker 4: No, I've just got into it. I've never used it in a different field before. It's just the whole idea of the coding has been something I've wanted to get into. I worked in education, uh, integration for a long time, so.

[00:04:58] Speaker 3: We have one hackathon coming up.

[00:05:00] Speaker 4: Oh, I see. It's a good time for me because I'm gonna start looking at Rust now because I've been trying to think about where to go with it.

[00:05:07] Speaker 3: Interesting. What, what is education integration?

[00:05:10] Speaker 4: Integration? So basically, we're thinking about basically kindergarten to grade 12, right? Teachers integrating technol uh, using technology and teaching technology. And then we're looking at integration too, right?

[00:05:26] Speaker 3: I see.

[00:05:27] Speaker 4: One, there's that point where teachers are actually using it to help teach the kids. But then the next part we're, we're working on right now with LLM, and I've been working with my daughter is teaching the kids to teach themselves. Using technology.

[00:05:39] Speaker 3: Mm-hmm.

[00:05:40] Speaker 4: And so teaching themselves programs, teaching themselves not just saying, "Hey, go on the LLM. I need to write a paper on so-and-so." You know, the idea that I have that agentic conversation where, "Hey, here's my idea. I've got to write a paper on so-and-so. This is what I'm thinking right now. Can you coach me along the way?" Getting kids to really think about that's a big part of it right now because in the university now, they're, they're on board. But, like, in general education, teachers are, like, uh, probably three in high school now. And beyond that, they said kids are gonna change things, so they're afraid that too. And.

[00:06:25] Speaker 3: Yeah.

[00:06:26] Speaker 4: I would say or the thing is, is rhyming is a very important thing for a lot of people. Because there are a lot of people in the world who are like, "Wait, wait, I think we're we haven't created anything." It's kind of good, but it's not good. Okay. I wanna do that. Do that. I follow up on that. But, like, stars are not that good. Uh, and why I think that we're letting bad poor users go into us for the fact that, "Holy shit. We have this amazing, empowering technology." And it's finally a match to where you're at, what you understand, what you wanna do, and what's the gap. That's actually the thing that's going to work. Uh, but it but I get it also because, you know, I've I've interviewed people. You know, it's a it's a pleasure to especially where you've marketed it for the promise of it for what you're gonna expect. You know, promises and listening to success.

[00:07:33] Speaker 3: Yeah.

[00:07:33] Speaker 4: But it's not actually this.

[00:07:34] Speaker 3: Yeah, right.

[00:07:35] Speaker 4: You know, it's a tool for being successful. You're gonna be self-confident.

[00:07:39] Speaker 3: I know. I've got a question about the reason that you're changing priorities. You know, she was right. They had more than 50% of the people in the world who were changing their own strategies to stay on the job they liked. And then bounded by the brain systems that they were tied to, right? So there were a lot of places that have those strategies for years. And last year, they had the best leadership there in 2011, I think. And they rendered technology to be a powerful company. And they're a thought candidate for us. And we can trust with that. And we can have a class rise in the left. And if they're, you know, they're candidates to become leaders, that kind of, uh, exchange was, was tough. I think they're in the right, you know, direction. I think they're trying to be part of the process of being successful. But yeah, a lot of questions about how you can become successful.

[00:08:39] Speaker 4: Yeah.

[00:08:40] Speaker 3: So one of the things that I've been thinking about is, uh, how I could do it. I've never heard of it before.

[00:08:48] Speaker 4: And I know. And I know how to do it.

[00:08:50] Speaker 3: And you've tried it.

[00:08:51] Speaker 4: It's called the, uh, the one thing that you can do to succeed is, uh, you can take it. You can walk away from this job and not go anywhere.

[00:09:02] Speaker 3: And you also wouldn't consider your just joining us for the most part.

[00:09:05] Speaker 4: Yes, yes.

[00:09:07] Speaker 3: Okay.

[00:09:07] Speaker 4: So thank you for inviting me. I didn't think to ask you, uh, because I, I asked, uh, uh, some of the folks at AI Expo a few months ago. Uh, I think it's good because there seems to be no, um, unit, obviously, but also the, uh, re uh, central repository of AI skills, uh, defines agents. And it's a bit of a jingle for me as a I'm still a beginner when it comes to developing AI agents. And I still don't know if there is some kind of safe place or widely recognized place to find the AI agents, something like NPM or the US ecosystem or the, the cargo store for us.

[00:09:58] Speaker 3: Yeah.

[00:09:59] Speaker 4: I'm not aware any sites like that.

[00:10:01] Speaker 3: Yes.

[00:10:01] Speaker 4: Um, there are it's a bit it's a kind of wide agent for cargo and for, uh, for WordPress.

[00:10:08] Speaker 3: I think so, as well as.

[00:10:13] Speaker 4: It seems to me let me ask you a couple of things. Yeah, yeah. Part of the problem is nobody is creating the software software. Like, pod like, there's a pod for a marketplace, but it's different from a job. There is there was for a time, like, Context 7, which kind of was a new thing.

[00:10:38] Speaker 3: Yeah.

[00:10:39] Speaker 4: But they were some startup, and it was sort of like, "Come contribute and help us get this selling, you know, IP offer." You know, it's not like that. It's not any major resource.

[00:10:49] Speaker 3: Yeah, yeah. But people make money with Python.

[00:10:52] Speaker 4: Of this, uh, the US ecosystem, and we have Python. We have NPM.

[00:10:57] Speaker 3: Yeah, I know. That's what I'm saying because they were there was a willingness to build something in that fashion knowing there was a layout later, and we haven't seen that layout as I don't know why.

[00:11:08] Speaker 4: Maybe.

[00:11:09] Speaker 3: What I maybe it's changed, but maybe that's it's entirely now. There's, uh, there's still a midway left, but open source foundation really dedicated to AI ecosystem. We start to see that with, uh, especially pushed by some Chinese sponsors. But, uh, there is no I know I know a bit of, uh, Linux foundation that makes it completely automated. And, uh, every foundation you can think of for programming languages. But we still have no, uh, maybe the AI ecosystem develops something bigger, uh, in terms of foundation or governance.

[00:11:50] Speaker 4: I don't know. I, I also feel like there's another problem with the things that the mechanism for expanding are very, very simple. So you have service. You have skills. You have input. In my opinion, they all suck. Um, and I think we're missing still something more fundamental that would allow for further expansion. I, I have a theory of how it might be, but, but, but I don't know that right. But, like, you can actually they all suck. Okay. MCP servers. Okay. They have some known problems, though, in context of. I don't actually think that's fundamental. There's a whole there's a whole, like, series of arguments about it.

[00:12:39] Speaker 6: You almost have to approach language and understand the next server, so.

[00:12:43] Speaker 4: This, this is not my I don't think this is the problem. This is a problem.

[00:12:46] Speaker 3: We need the iteration steps.

[00:12:48] Speaker 4: I don't think that's the problem.

[00:12:50] Speaker 3: You do, but that's not it. Like, you could do that. That's what we're talking about, right? The problem is now you're curating, but they don't they aren't able they're still, like, fundamentally at the mercy of the agent. The agent decides when to agent decides when to load the hardness or the hardness. And, and they're not able to fundamentally improve code on those in any way. So they're kind of like they can do percentage-wise improvements, but not order of magnitude. And skills are kind of the same. It's like, "Here's a Markdown file, and some resources. You can choose to use if you choose to." But what happens when the agent is too dumb to choose to use this? Um, then I, I think that's a problem, right? So, uh, hooks are very nonstandard, and they're also still fundamentally a fallback relationship.

[00:13:41] Speaker 4: You can't go back in code.

[00:13:42] Speaker 3: You can go back in code.

[00:13:45] Speaker 4: You can go back in code.

[00:13:46] Speaker 3: Yeah.

[00:13:46] Speaker 4: Both electric people. And I told these guys come back, guys. She's a conversation with the guys. A very good networking opportunity. Yes. Okay. So.

[00:14:13] Speaker 7: Because we need to finish it, so I think, uh, less than one hour. And it's not faster so I think we can miss it.

[00:14:22] Speaker 4: No, no, no. So we have this. We just have to decide if we're okay we'll just put it through if we wanna if we're okay with moving forward on it or not.

[00:14:59] Speaker 7: Okay. So, uh, what do we have?

[00:15:21] Speaker 4: In specific requests based on the conversation. A maped out the cognitive coaching flow. Gamified token economy. Good. The team alignment logic. The obsidian obsidianal, um, whenever I encounter it. Period. Necessarily explicit target UOI layout decision. So we have to submit it. So we have to think about a UOI lay I added an explicit missing tag along with the closed walkthrough. Or to factor review the quick summary. Built on a recommend. Let me know if you need any adjustments. Okay. So what do we wanna do next? I don't know because we're following his process, right? Proceed. Are we gonna submit a f are we so what re when, uh, when I was talking to Pod today, he only recommended that we work on one part because everything's if we do all three parts, it's quite complex. So we submit probably the. It said to work on the front end. Just pick one of them.

[00:17:11] Speaker 7: I didn't need you to send it everything, or you just?

[00:17:16] Speaker 4: Let me go back. I just went off. We only have a minute of time. Can I have a little more coffee, please?

[00:17:36] Speaker 8: So I'm just on the speech. So I'm just on the speech.

[00:17:40] Speaker 4: Yes, yes, yes.

[00:17:42] Speaker 8: So that could be for any, any, anything, right?

[00:17:44] Speaker 4: Yes. It fits on Monday. Uh, I mean, whatever.

[00:17:46] Speaker 8: Just milk.

[00:17:46] Speaker 4: I do extraction from a.

[00:17:48] Speaker 8: Really? I have, like, uh, big demarks up here. I think for this conference because there are no conferences.

[00:17:56] Speaker 4: Uh, could you add me on LinkedIn?

[00:17:58] Speaker 8: Uh, I don't have LinkedIn.

[00:18:01] Speaker 4: There's a question here. You can just start a new tattoo system where people will get tattoos from LD at any of the chips that touch each other. There you go. There is the next generation.

[00:18:15] Speaker 8: That's a good idea.

[00:18:16] Speaker 4: People love that.

[00:18:19] Speaker 8: We need something we need something that's new.

[00:18:21] Speaker 4: Sorry. Who is your partner?

[00:18:23] Speaker 8: I'm just in the landing zone.

[00:18:25] Speaker 4: I don't have a partner yet.

[00:18:27] Speaker 8: I think maybe I could find find the right next one.

[00:18:29] Speaker 4: Yeah.

[00:18:30] Speaker 8: Make sure, like.

[00:18:30] Speaker 4: Sort of help you feel. Just come and put us on a wave. Come back in a second. And then maybe just give me where, where you want us to go, and then we can come back in a second.

[00:18:43] Speaker 8: Is it good to I get it. It's a good time to check.

[00:18:46] Speaker 4: All right. I think you you read the what our Gemini is supposed to.

[00:18:51] Speaker 8: I did. I did. So I kept I kept moving forward. It was fine. I'm just wanna write this is where we are right now.

[00:18:56] Speaker 4: This is the fucking problem that we.

[00:18:57] Speaker 8: It's built everything.

[00:18:58] Speaker 4: Who forgot to submit their GitHub, uh.

[00:19:03] Speaker 8: We didn't ask him.

[00:19:04] Speaker 4: Again, same, same structure sh-shit yet.

[00:19:07] Speaker 8: This is the new structure here, right?

[00:19:09] Speaker 4: Why, what the shit? Why he did, did this? Ask him why you didn't use the ChatGPT of the structure. Why you didn't create something new?

[00:19:17] Speaker 8: Okay, okay.

[00:19:17] Speaker 4: Because it's a shitty approach. I will come back. We, we did one mistake. We forgot to Git clone the Git repo I sent you this morning.

[00:19:25] Speaker 8: Right. Okay, okay. So you wanna clone that, right?

[00:19:29] Speaker 4: If you keep cloning right here, I will come and ask you.

[00:21:25] Speaker 8: So it takes you an hour to get here?

[00:21:27] Speaker 7: Hmm?

[00:21:27] Speaker 8: It takes you an hour to get here. Which part of Paris are you living in?

[00:21:31] Speaker 7: So, like, Stéphanie, Seoul.

[00:21:35] Speaker 8: Seoul? Okay. Save.

[00:21:39] Speaker 7: To change. And yesterday, I couldn't come back. All the routes were stopped. I don't know why.

[00:21:46] Speaker 8: Oh, really?

[00:21:48] Speaker 7: There's a lot of delays. I changed to number one. It was delayed. I changed to number one. It was delayed.

[00:21:55] Speaker 8: There's always delays here. That's, that's, uh, that's.

[00:21:59] Speaker 7: Well, I mean, yesterday, it was always delayed, but it's usually outside of Paris. But yesterday, it was, like, inside, so it was, like.

[00:22:06] Speaker 8: Oh, really? I, I've had some a lot of problems in Paris where the get off the train in the morning, and it's just like, "Really? Okay."

[00:22:14] Speaker 7: Yeah. It's.

[00:22:54] Speaker 4: Okay. I'm focused on the structure that is actively integrating the preference. Okay.

[00:23:20] Speaker 8: Do you have you signed up for, uh, Google Pro yet? Because I think as a university student, you can get a free note.

[00:23:32] Speaker 7: Google?

[00:23:33] Speaker 8: Yeah, yeah. So the Pro Agentic one. So you can get free access to the Pro Gemini and stuff. Not sure if they're still doing it, but that's how I got access to it. I was able to just send a screenshot of my trans um, my app link to my university web page, and they were I had gotten signed up for it.

[00:23:55] Speaker 7: Are you still registered? You're still a university student, right?

[00:24:00] Speaker 8: Um. Oh, it's US students. That's why.

[00:24:56] Speaker 7: Hmm?

[00:24:57] Speaker 8: It's only for US students. I, uh, go to an online university, so I was able to get it free.

[00:25:05] Speaker 7: I even sometimes use Google Assistant for articles. It's very great.

[00:25:10] Speaker 8: Oh, really?

[00:25:12] Speaker 7: So it's some of the articles I use with, uh, with Google Assistant. Uh, there is a website which is, like, a good access to use it.

[00:25:26] Speaker 8: Wow. Yeah.

[00:25:27] Speaker 7: Or sometimes I was asked something, and I will use Google Assistant. And I went to some school in Denmark.

[00:25:33] Speaker 8: Yeah, yeah.

[00:25:34] Speaker 7: They provided access. So in Denmark, I was able to download it.

[00:25:37] Speaker 8: The school here didn't.

[00:25:39] Speaker 7: No.

[00:25:39] Speaker 8: It's interesting because my, my online school that I'm using I'm a whole uh, University of the People. Phenomenal research. Cheapest chips too. Like, my whole MBA is, like, about $5,000.

[00:25:52] Speaker 7: For example, some articles I from EE.

[00:25:55] Speaker 8: Yeah, yeah.

[00:25:57] Speaker 7: It's not almost I couldn't download it. Yeah, it's pretty expensive. So I use this kind of strange websites where you can download it.

[00:26:07] Speaker 8: Yeah. E-exactly.

[00:26:08] Speaker 7: Strange applications.

[00:26:10] Speaker 8: Yeah. I've done that too. Plan to incorporate cartel ideas and improve the project folder structure. Yes.

[00:27:43] Speaker 7: Google's available?

[00:27:45] Speaker 8: I tried it, but, like, uh, I ran out of tokens, and I didn't wanna pay for it.

[00:27:52] Speaker 7: I got three tokens in, uh, in previous Wicaton.

[00:27:57] Speaker 8: Oh, okay, okay. So that's why I kinda switch around. But I've been trying to I realized that, uh, I've been spending a lot of time on my agents and getting my, uh, my agentic framework to do all my coding for me and my things.

[00:28:17] Speaker 7: And you import?



## Parent note

- [[2026-05-06 Symposium keynote Rust, agents, and community toolchain plus tabular functional models]]