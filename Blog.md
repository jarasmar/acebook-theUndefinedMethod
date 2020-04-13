# DAILY BLOG

- Problems faced during the day and how we solved them
- Achievements
- Thoughts for the future (ways to improve)
- Personal opinion/reflection

## Monday 6th April 2020

Welcome everyone to our new project: AceBook! Which we wished had something to do with Poker cards, but instead it's a "clone" of Facebook, which is pretty cool too.

Talking about cool things, let me introduce our beautiful team: Nima, Sophia, Rafa and Jara (myself) which looks like a great combination and I'm sure we will have a lot of fun together! (And some work done too I guess). This is our second group project while at Makers, and the first one lasting for two whole weeks. Having so much time to focus in one same thing looks very promising towards managing to get something (not too bad) working.

For those reading this in the future, the date on top may not mean anything special, but it does for us. We have been working from home for three weeks already as we are living the Covid-19 lockdown. What does this mean? Good things (working with pijama trousers), bad things (biscuits intake growing way too fast) and extra challenges: doing a group project fully remote! But we are mastering GitHub after all this weeks, so commits, merge and pull request are no longer a mistery to us. Also Zoom for screen sharing and remote screen control, and our lovely [Trello Board](https://trello.com/b/adiRFheq/the-undefined-method) are awesome tools.

This morning we kicked off the week with all our cohort and then got started in our groups. First things first, fork the project repo, clone it and install everything we needed. We also discussed how to keep track of our work in a visual way, and that's were our Trello comes in! Then we created a team charter discussing the ways to make work productive and create a safe environment for all of us.

To finish with our project set up we divided the roles so that they will rotate amongst us and same with the pairs for each day. This way we will all experience all the roles and work with everyone. Finally we all agreed in the distribution of the working hours and breaks, and how to deal with the weekend and bank holidays we were going to go through.

Another challenge this week? First time for all of us working with Ruby on Rails framework and Active Records, which looks a bit scary, but we made a list of Trello cards to share learning resources and all kind of interesting links, so we have this! To start covering this up we decided to split up for the last hour and make some reading on Rails documentation.

And, after a quick retro, day was over, time flies when you have so many things to do, and here I am, sitting in my terrace wrapping up the very last line of code of the day. Buenas noches!

**Written by Jara**

<br>

## Tuesday 7th April 2020

There is a mantra that goes along the lines of “Alone we can do so little; together we can do so much”.

Having worked alone for so long, I really didn’t agree much with the mantra written above. How could that be the case? If i’m working alone, I can do things my way, I can accomplish things in my own time and I don’t have to be dependent on any person doing their part.

I suppose I haven’t been a team player for most of my life but is that necessarily a bad thing? I think when it comes to learning, I need to be on my own, to read on my own, to experiment on my own, to do things on my own without the pressure of somebody else watching or me having to explain what it is i’m doing. In that sense I think I am a very efficient self learner and I believe I can learn anything within a short space of time.

Though I may be able to learn and absorb information on my own, the reality is that I have to work with people at the end of the day. So for me to be thrust into a group environment is always a little bit nerve wracking as I have this innate fear of being perceived as useless. It is an irrational fear I have as I’ve demonstrated to myself numerous times that I’m not useless and that I can create things that are of value…but still this fear crops up.

As the days go by though, I feel this fear subsiding moment by moment and I feel this is really because of the people in my group. I really feel we all want to put our stamp on this project and we all recognise and emphasise with this. It is part of the reason why we are willing to pick each other up and be there for one another and this environment is helping me flourish.

It also helps that Jara, Sophia and Rafa are very interesting people to talk to and to share thoughts with. I am always conscious if I'm talking too much but they have made me feel at ease which I appreciate.

There is a natural trust there and it is allowing me the freedom to depend on other people which allows me to think on other aspects of a project with my pair partner. When I think of it like that, I can now understand how a team that clicks and is in sync can accomplish so much more than if I ever worked alone.

“Alone we can do so little; together we can do so much” …now this mantra makes a lot more sense!

**Written by Nima**

<br>

## Wednesday 8th April 2020

With our very first two-day sprint under our collective belts, we kicked off the morning with our daily stand-up.

Having agreed the day before that we would spend some time in the morning running through the vaguaries of Travis, we started with a break down of what a typical .yml file should look like and what exactly Travis is trying to do when it runs its build. We definitely want all our projects to include that glorious little green badge at the top of our readmes so getting to grips with this part of the project build was important. Even more so in this case as we were also trying to include automatic deployment to Heroku via the Travis gem, something none of us have tried before.

I am pleased to say that our attempts at connecting Travis to Heroku were more successful today than they were the day before, even if it did take a while for everything to push through. The prep we had done on Tuesday meant that, once the new Heroku was set up (we had to switch from Nima's account to my own as the repo's master is in my github account), all we had left to do was generate an encrypted API key and push to the master branch. This did take quite a few attempts to get right but we learnt the importance of pull requests in the process and made sure that only code merged into the master branch (and fully passing all Travis tests) would automatically upload to Heroku.

While myself and Nima worked on getting Travis and Heroku up and running, Jara and Rafa continued their database mission from the day before. The Devise gem, while relatively easy to set up, was proving much harder to manually configure to include (and automatically update) a username field. Numerous attempts and much research resulted in a correctly modified user table that refused to update properly. That wasn't the only problem. Devise sets up the authentication process on Rails but doesn't automatically allow you to access all those files. As such, it does not show the appropriate views of the sign in and sign up pages, something we thought necessary for future customisation. Thankfully, we now have access to all those files (thank you Jara and Rafa!) and can properly see what is going on under the hood. The updating problem is something we are all planning to continue tackling tomorrow. It may very well require a 'back-to-basics' moment and the dismissal of Devise's services. 

We had a positive catch up with our coach Eóin just after lunch, who assures us we are doing well. Rails is definitely a steep learning curve but as a team we make sure to take away the positives from all of our experiences, no matter how frustrating they may be! We finished the day further on than when we started, and with a greater understanding of the beast we are yet to fully tame.

**Written by Sophia**

<br>

## Thursday 9th April 2020

I am writing this blog entry from the future...Well that sentence can sound really mysterious but the reality is much more mundane. I had to write this entry on thursday but i decided to wait a few days , to have a little more perspective and being able to add my experience from this long easter weekend, so i am writing this the 13th of May, year of our Lord 2020 ( Just to be consistent with this Easter day, we celebrated just yesterday).
  So i have to mentally get into the Delorean and go back where i was on Thursday in the morning.
  I remember I had a real nice feeling. The evening before i had been able to resolve one problem in our code, yeah , something with being able to access strong params in the user controller and finally be able to set up the devise gem User authentication system. 
 I had been with my amazing pair ,Jara, working on the Username implementation, through devise the whole day, and that last one bit prevented us to finish the ticket that we had assigned within our team. Just to put you in context (in case you know what you are talking about regarding rails and you are bored enough to read this entry blog from a nobody), this was just our second complete day studying rails, and, when i say second day, i mean that on monday morning i was in the belief that rails are those things you should use if you are train (something weird to be, but far from my intention to judge you my dear train).
Point made, the thing is, i solved it!!, yeah, nothing glorious, just one lucky search on my continuous journey of trial-error.
The thing is, dear train (just in case you are still with me) ,only  if you are someone who had been in my situation, trying to solve a thing that you actually don't understand not even in a minimum level and finally get to the solution, even by luck, you can understand the joy i felt. It was a simply magnificent feelin, it was ,indeed, a reminder of why i have always known that this coding world was made for me. I felt like this people....

![happy_guy](https://media.giphy.com/media/rjkJD1v80CjYs/giphy.gif)

Well, happy times my friend.....The days as the wind, has gone by, and again i am the miserable coder learner i have always been since i decided to start this awesome journey.
Lets say that now i feel  more or less like this guy....

![angry](https://media.giphy.com/media/3t7RAFhu75Wwg/giphy.gif)


Ok, so, possibly you could ask...what did happen to you in just 3 days???, well, now i can clearly see that you are a train...Code happens!!. Just let me tell you, if someone sometime tell you that you can try to start coding, that don't worry!!!, everything is around on the internet, go ahead, plenty of money, nice career...etc... I don't really know anything about that, i will tell you some years from now, at the moment the only thing i know for sure is coding has the most difficult learning curve i have ever experience in my whole life, and that fact make coding an awful and amazing experience at the same time. 
I must be some kind of masochist because, even i felt like the guy above, i am loving every second of it. I have made like 4 tutorials about rails, the latter more confusing than the previous one, i would not be able to make just a simple model without using scaffold (this is just for you, reader, in case you are a nerd and know what scaffold is) and anyway, i feel that i am loving it, and i am getting closer and closer to finally tame the beast.

So at the end, after many many hours in front of the computer i don't know much more than i knew on thursday but definitely i am sure that my understanding is better and i am more able now to see the end of the tunnel ( My last train reference, i promise).
So, maybe now, i am like this guy.....

![ready](https://media.giphy.com/media/GCSIwtwqAMBTq/giphy.gif)

Finally i need to speak about my team. Mark Twain said once, "Comparison is the end of joy", that is why my team for this project is so amazing, everybody in the team is just uncomparable with the others, bringing their own personalities and skills, always willing to help, listen and understand others needs.
 Nima, Sophia and Jara, my morning star, the best thing i can say about you all, is , for me, we are like this gang. 
 
![enter link description here](https://vignette.wikia.nocookie.net/cine/images/4/4f/The_goonies.jpg/revision/latest/scale-to-width-down/340?cb=20121022223610)

And coming from me, believe me,  that...is to say a lot!.


**Written by Rafa**

<br>

## Friday 10th April 2020

blahblah

**Written by Jara**

<br>

## Monday 13th April 2020

**Written by Nima**

<br>

## Tuesday 14th April 2020

blahblah

**Written by Sophia**

<br>

## Wednesday 15th April 2020

blahblah

**Written by Rafa**

<br>

## Thursday 16th April 2020

blahblah

**Written by Jara**

<br>

## Friday 17th April 2020

blahblah

**Written by Nima**
