% DFS Traversal with Adjacency Matrix and Plot (Corrected Version)

nodes = {'A', 'B', 'C', 'D', 'E'};

% Adjacency matrix (A-B, B-C, B-D, C-E)
adj = [
    0 1 0 0 0;  % A
    1 0 1 1 0;  % B
    0 1 0 0 1;  % C
    0 1 0 0 0;  % D
    0 0 1 0 0   % E
];

G = graph(adj, nodes);

% Plot the graph
figure;
plot(G, 'Layout', 'layered', 'Direction', 'down', 'NodeFontSize', 12);
title('Graph Structure for DFS');

% DFS Traversal
visited = zeros(1, numel(nodes));
fprintf('DFS Traversal: ');
startNode = 1; % A
dfs_recursive(startNode, adj, visited, nodes);
fprintf('\n');

% --- Recursive DFS Function ---
function dfs_recursive(node, adj, visited, nodes)
    visited(node) = 1;
    fprintf('%s ', nodes{node});

    for i = 1:length(nodes)
        if adj(node, i) == 1 && ~visited(i)
            dfs_recursive(i, adj, visited, nodes);
        end
    end
end