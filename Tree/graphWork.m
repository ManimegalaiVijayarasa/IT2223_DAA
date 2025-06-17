% GraphVisualizerAndAnalyzer.m


% 1. Import the graph using source and destination
source = [1, 1, 2, 3, 4];
destination = [2, 3, 4, 4, 5];
G = graph(source, destination);

% 2. Draw the graph
figure;
p = plot(G);
title('Original Graph');

% 3. Find and display the subgraph for specific nodes
subNodes = [2 3 4];
subG = subgraph(G, subNodes);
figure;
plot(subG);
title('Subgraph for Nodes 2, 3, and 4');

% 4. Display adjacent vertices for each node
for i = 1:numnodes(G)
    fprintf('Node %d is connected to: ', i);
    disp(neighbors(G, i)');
end

% 5. Label edges of the graph
figure;
p = plot(G);
title('Graph with Edge Labels');
edgeLabels = cellstr(string(1:numedges(G)));  % Convert edge numbers to strings
labeledge(p, 1:numedges(G), edgeLabels);

% 6. Label nodes of the graph
labelnode(p, 1:numnodes(G), string(1:numnodes(G)));

% 7. Graph coloring using greedy coloring algorithm
colors = zeros(numnodes(G), 1);
for i = 1:numnodes(G)
    neighborColors = colors(neighbors(G, i));
    available = setdiff(1:numnodes(G), neighborColors);
    colors(i) = available(1);  % Assign the lowest-numbered available color
end

% Visualize colored graph
figure;
p = plot(G, 'NodeCData', colors, 'MarkerSize', 8);
title('Graph Coloring');
colormap(jet);  % Optional: use a colorful colormap
colorbar;

% 8. Find and highlight the shortest path from node 1 to node 5
[path, d] = shortestpath(G, 1, 5);
fprintf('Shortest path from node 1 to node 5 is: ');
disp(path);
fprintf('Path length: %d\n', d);

% Highlight shortest path
highlight(p, path, 'EdgeColor', 'r', 'LineWidth', 2);