nodes = {'A', 'B', 'C', 'D', 'E', 'F', 'G'};


% DEFINE EDGES USING SOURCE AND TARGET NODES
s = [1 1 2 2 3 3];   % from
t = [2 3 4 5 6 7];   % to



% create a direct graph
G = digraph(s, t ,[], nodes );   % here  we can use [] for empty weight array

%plot the tree
plot(G, 'layout', 'layered', 'Direction', 'down');
title('Simple tree with three level');