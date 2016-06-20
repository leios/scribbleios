---
layout: page
title: Maxwell's Demon
completion: 100%
completion_color: green
permalink: /99MaxwellsDemon
---

<div class="youtube-16-9">
  <iframe height="100%" width="100%" src="https://www.youtube.com/embed/5niDIoptyIU" frameborder="0" allowfullscreen=""></iframe>
</div>

* [Background](#bg)
* [About the code](#code)

<a name="bg"></a>

##Background

So. Let's talk about time travel. I hate to break it to ya, but time travel is 
theoretically impossible. It's not a matter of building or engineering a time
travelling device. It's a matter of creating theoretical breakthroughs that can
combat the arrows of time.

See, time moves forward. It always moves forward and only makes sense in one 
direction: forward. Why? Because of a number of things. Every natural 
time-dependent phenomenon has a reason for moving in the direction it does.
Sure, there are some physics equations that are essentially time-independent, 
but those are another story entirely. For the most part, we call the reason 
time tends to move forward an "arrow of time." 

What is an arrow of time? Well, there are quite a few.

* The quantum arrow of time has to do with measurement. After a quantum state is
  measured, the state is disturbed and forced into the measured state.

* The cosmological arrow of time has to do with the universe. In fact, it is the
  direction of the expansion of the universe.

* The causal arrow of time has to do with events. Cause must come before effect.

These are some of the reasons why time must move forward. Now, here's the thing:
No matter what you do (assuming you are using currently known physics), you will
not be able to physically reverse an arrow of time. You just cannot; however,
some scientists could not help but ponder what kind of being could reverse time.

This leads us to Maxwell's Demon. 

There is an arrow of time known as the thermodynamic arrow of time, which is 
essentially the second law of thermodynamics:

* In any cyclic process the entropy will either increase or remain the same.

It doesn't sound menacing, but it is. Basically this means that in any thermal 
process where we can measure the entropy, things will end up more chaotic than
they started. 

It probably still doesn't make any sense, so let's pretend you had a large
rectangular box in your hands. On the right side, there are only white marbles
and on the left side, there are only black. Let's also pretend there is a 
plastic barrier separating the two sides. If you remove the barrier, the 
marbles just around the barrier will move, but for the most part, all the white
marbles will stay on one side and all the black ones will stay on the other.

But what happens if you put a lid on the box and shake it really, really hard?

Well, all of a sudden the white and black marbles mix. Visually, we 
immediately notice a difference; however, we can describe this process 
thermodynamically as irreversible. It cannot be undone by shaking the box again
and again. Technically, we could remove each of the marbles and carefully place
them on their appropriate side, which would reverse the shaking... but that's
cheating. Nature cannot do that. Nature can only shake the box and hope for the
best.

And this leads us back to entropy. When all the marbles were neatly ordered on
either side of their box, there was the lowest amount of entropy in the system,
and when the marbles were all mixed up, there was the highest amount. Entropy,
then, is basically the amount of disorder in a system. This process of shaking
a box over and over again shows the second law of thermodynamics. If we take an
ordered state (one with little entropy) and shake it, it will become a 
disordered one (one with high entropy). 

Of course this is the case, right! We all know how things thermalize... And yet,
looking at this single arrow, scientists have thought of a way to reverse it. To
become one step closer to reversing time. How?

Maxwell's Demon.

Let's say you just shook your box of marbles and the marbles are in their most
entropic state. Now let's say you placed a small (and magical) plastic barrier 
in the center. The barrier would only allow white marbles to move to the right
and black particles to move to the left, but would not allow the reverse.

If you shake the box again with the magic barrier, the white marbles would 
magically become more likely to move to the right and the black marbles would
magically become more likely to move to the left! Super cool stuff!

Now imagine that instead of black and white marbles, you have particles moving
at different speeds -- particles of different temperature. In this way, we could
take a gas that is at some temperature and force all the cooler particles to one
side and all the hotter particles to another. It would be like an oven and 
fridge combined into a single device!

And this is Maxwell's Demon: A sheet of plastic that allows only certain 
particles to pass through. A simple concept with revolutionary results!

<a href name="code"></a>

## About the code

The code for out Maxwell's Demon simulation can be found [here](https://github.com/leios/simuleios/tree/master/MD/demon), feel free to check it out! It is a simple event-driven [Molecular Dynamics](http://introcs.cs.princeton.edu/java/assignments/collisions.html) (MD) simulation in 3 dimensions. What does this mean?

Well, imagine that every particle in the simulation is a hard sphere of sorts -- like billiard balls. If we give them all an initial kick, they'll be moving all around and bouncing off each other, like billiard balls do. In this case, we know how the should interact with each other (it's a super well-solved system). We basically need to take into account 2 interaction types: 

1. Particle on particle
2. Particle on wall

We assume that the chances of more than two particles interacting is negligible.

Now. Let's take a step back and think about the simulation. When most people think about MD simulations, they think about time-driven ones. Every timestep, we move the particles forward a certain amount depending on their initial velocity. If it happens that a particle overlaps with something, we deal with the interaction accordingly. This is a perfectly legitimate way of doing MD; however, because our simulation is (in a sense) simple, we can do something different and exactly solve the interactions in our system with some simple physics formulae.

Basically, the algorithm creates a list of all the next interactions the particles will undergo and sorts the list by which interactions will occur first. It then moves the entire algorithm to that timestep and recalculates the necessary elements in the list, sorting them again by which interactions will occur first.

In the case of a traditional event-driven MD simulation, this simulation keeps moving forward until a set timestep; however, this is not quite traditional. It's Maxwell's demon! Instead of just stopping the simulation at a particular timestep, we instead allow the particles to thermalize between two boxes. Once complete, we then insert the demon in the center of the box, which will sort the particles according to their velocity. If a particle's velocity is faster than the average velocity of all the particles, it is only allowed to the right. If it is slower, it will only be allowed to pass into the left. In this way, we'vesifted the hot and cold particles into two separate boxes, recreating Maxwell's Demon.

If you are interested in visualizing the code via blender, check out [this code](https://github.com/leios/simuleios/blob/master/visualization/demon.py).


