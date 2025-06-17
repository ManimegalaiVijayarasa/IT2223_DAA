% BFS Traversal with Adjacency Matrix and Plot

nodes = {'A', 'B', 'C', 'D', 'E'};

% Adjacency matrix for the graph
% A-B, B-C, B-D, C-E
adj = [
    0 1 0 0 0;  % A
    1 0 1 1 0;  % B
    0 1 0 0 1;  % C
    0 1 0 0 0;  % D
    0 0 1 0 0   % E
];

% Create graph and plot
G = graph(adj, nodes);

figure;
plot(G, 'Layout', 'layered', 'Direction', 'down', 'NodeFontSize', 12);
title('Graph Structure for BFS');

% Initialize variables
n = size(adj, 1);
visited = zeros(1, n);
queue = [];

% Start from node A (index 1)
startNode = 1;
queue(end+1) = startNode;
visited(startNode) = 1;

% Perform BFS
fprintf('BFS Traversal: ');
while ~isempty(queue)
    current = queue(1);
    queue(1) = [];  % Dequeue

    fprintf('%s ', nodes{current});

    for i = 1:n
        if adj(current, i) == 1 && ~visited(i)
            queue(end+1) = i;  % Enqueue
            visited(i) = 1;
        end
    end
end
fprintf('\n');