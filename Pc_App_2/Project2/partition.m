function [S1, S2, sumS1, sumS2] = partition(n)


% Kalkuloji ndarjet parciale te bashkesise
q = floor(n/2); % q eshte kardialiteti i S1 dhe S2
r = q + 1; % r perdoret per te vendosur elementet ne gjysmen e dyte

% Inicializojme S1 dhe S2
S1 = [];
S2 = [];

% Gjenerojme elementet e S1 dhe S2
for i = 1:n
    if mod(i,2) == 1 && i <= q
        S1 = [S1 i]; % Shtojme elementet tek nga 1 deri ne q ne S1
    elseif mod(i,2) == 0 && i >= r
        S1 = [S1 i]; % Shtojme elementet cift nga r deri ne n ne S1
    elseif mod(i,2) == 0 && i <= q
        S2 = [S2 i]; % Shtojme elementet cift nga 1 deri ne q ne S2
    elseif mod(i,2) == 1 && i >= r
        S2 = [S2 i]; % Shtojme elementet tek nga r deri ne n ne S2
    end
end

% Kalkulojme mbledhjet mes elementeve te S1 dhe S2
sumS1 = sum(S1);
sumS2 = sum(S2);

% Kalkulojme katrorin e shumes mes elementeve te S1 dhe S2
squareS1 = sumS1^2;
squareS2 = sumS2^2;

% Paraqit infot

fprintf('Elementet e S1 jane: [ ');
fprintf('%d ', S1);
fprintf(']\n');
fprintf('Shuma e elementeve te S1 eshte: %d\n', sumS1);
fprintf('Katrori i shumes se elementeve te S1 eshte: %d\n\n', squareS1);


fprintf('Elementet e S2 jane: [ ');
fprintf('%d ', S2);
fprintf(']\n');
fprintf('Shuma e elementeve te S2 eshte: %d\n', sumS2);
fprintf('Katrori i shumes se elementeve te S2 eshte: %d\n\n', squareS2);
end

