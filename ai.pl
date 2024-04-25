% Define nucleotide sequences
sequence(promoter, [a, t, g, c, t, a, t, c, g, a, t]).
sequence(promoter, [c, t, g, a, t, a, t, g, a, t, c]).
sequence(promoter, [g, t, a, t, c, a, t, c, g, a, t]).
sequence(promoter, [a, t, c, g, a, t, c, g, a, t, a]).
sequence(non_promoter, [g, t, a, c, g, t, a, t, g, c, a]).
sequence(non_promoter, [c, t, a, g, c, a, t, c, a, t, c]).
sequence(non_promoter, [a, t, g, c, a, t, a, g, c, a, t]).
sequence(non_promoter, [t, g, a, c, t, g, a, t, c, g, t]).
sequence(non_promoter, [a, t, c, g, t, a, t, g, a, t, a]).

% Define labels
label(promoter).
label(non_promoter).

% Define rules for classifying sequences
classify_sequence(promoter) :-
    sequence(promoter, _).

classify_sequence(non_promoter) :-
    sequence(non_promoter, _).

% Consult the expert system to classify DNA sequences
consult_expert_system :-
    write('Enter the nucleotide sequence (e.g., [a, t, g, c, t, a, t, c, g, a, t]): '), nl,
    read_sequence,
    classify_sequence(Label),
    write('The sequence is classified as: '), write(Label), nl.

read_sequence :-
    write('Sequence: '), read(_).
