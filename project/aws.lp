% problem
% -------
% robot movements: forward, backword, left, right
% a cell contains only one shelve, and a robot carrying no shelve, can go underneath beneath the shelve
% however, if a shelf is surrounded by shelves, robot needs to picup the shelves blocking to clear the path 
% you can have your robots perform more than 1 actions at a time - moving into a cell and picking up a shelve at the same time (optional)
% they cant swap positions.


% inputs
% -------
% cell/node label : 'n' (integer) with co-ordinates: (x,y)
init(object(node,'n'),value(at,pair('x','y'))).

% label of node and label of highway with same co ordinates, have same label (integer)
% so a highway cell has to be a node
init(object(highway,'h'),value(at,pair('x','y')))

% unlike highway cell, the (x,y) of pstation doesn't correspond to node's.
init(object(pickingStation,’p’),value(at,pair(’x’,’y’))).

% unlike highway's cell, the (x,y) of robot doesn't correspond to node's.
init(object(robot,’r’),value(at,pair(’x’,’y’))).

% unlike highway's cell, the (x,y) of robot doesn't correspond to node's.
init(object(shelf,’s’),value(at,pair(’x’,’y’))).

% products are labeled. they are not defined at (x,y) location
% instead they are defined with shelves, and u is number of quantity.
% cant place on shelf that doesnt exists
% product 4 can be at shelf 5 with quantity 1 and shelf 6 with quantity 1
init(object(product,’i’),value(on,pair(’s’,’u’))).

% product i with quantity u is being added to order o.
init(object(order,’o’),value(line,pair(’i’,’u’))).

% a specific order goes to the same pstation not multiple.
init(object(order,’o’),value(pickingStation,’p’)).



% output
% -------
% (what needs ot be produced?): an action plan that results in all orders being filled
% Important: robots have to deliver exactly the required number of units
% Module: encoding Action description language: simple and complex transition systems


% actions
% -------
% develop sets of constraints that fulfills all requirements
% using this produce action plan, that fulfills the orders

% move: 
% t: time step
% (x+dx, y+dy)
occurs(object(robot,’r’),move(’dx’,’dy’),’t’).

% pickup:
occurs(object(robot,’r’),pickup,’t’).

% deliver: 
% order o
% product i
% units u
% reduce units
occurs(object(robot,’r’),deliver(’o’,’i’,’u’),’t’).

% putdown: may not be used at times
% scenario: single shelf, single robot, single order, 
% robot just need to move to shelf's location, perform pickup, 
% and move to pstation, and perform the delivery action.
occurs(object(robot,’r’),putdown,’t’).

% optimal plan
% minimize actions, its optional


% example: based on scenario 1
% provides with an action plan



% hints/tips
% -------
% 1. blocks world
% 2. work on one action at a time : solve on how to perform move action, state changes.
% 3. write all rules in plain english.
% 4. write your instances to test, for ex for movement : define nodes of the grid and robots
% simply create a goal consition:L any given robot should be located at a given spot.
% you can experiment with diff number of robots, goals, grid shapes, and you can use it to test movement, collision requiremnts.


p1:shelf3-1
p2:shelf4-1
p3:shelf6-4
p4:shelf5-1
p4:shelf6-1

shelf3:(1,4)
shelf4:(2,1)
shelf6:(3,4)

% orders
o1:station1
o1:p1-1
o1:p3-4

o2:station2
o2:p2-1

o3:station2
o3:p4-1