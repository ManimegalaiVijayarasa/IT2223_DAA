nodes = {'A', 'B', 'C', 'D', 'E', 'F', 'G'};


% DEFINE EDGES USING SOURCE AND TARGET NODES
s = [1 1 2 2 3 3];   % from
t = [2 3 4 5 6 7];   % to

% Define edge weights
weights = [5 3 2 4 6 1];

% create a direct graph
G = digraph(s, t ,weights, nodes );   % here  we can use [] for empty weight array

%plot the tree
plot(G, 'layout', 'layered', 'Direction', 'down', 'EdgeLabel', G.Edges.Weight);
title('Weighted tree with three level');