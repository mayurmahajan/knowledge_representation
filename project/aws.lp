% problem
% robot movements: forward, backword, left, right
% a cell contains only one shelve, and a robot carrying no shelve, can go underneath beneath the shelve
% however, if a shelf is surrounded by shelves, robot needs to picup the shelves blocking to clear the path 
% you can have your robots perform more than 1 actions at a time - moving into a cell and picking up a shelve at the same time (optional)
% they cant swap positions.


% inputs
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
% (what needs ot be produced?): an action plan that results in all orders being filled
% Important: robots have to deliver exactly the required number of units
% Module: encoding Action description language: simple and complex transition systems


% actions
% develop sets of constraints that fulfills all requirements
% using this produce action plan, that fulfills the orders

% move: 
occurs(object(robot,’r’),move(’dx’,’dy’),’t’).

% pickup:
occurs(object(robot,’r’),pickup,’t’).

% deliver: 
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



% valid solution: 