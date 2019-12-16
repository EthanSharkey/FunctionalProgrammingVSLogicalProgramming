% Name: Ethan Sharkey
%Student No.: 17355756

/**Used as test case = ["interview", "interrupt", "integrate", "intermediate"]*/

:- set_prolog_flag(double_quotes, chars).  % "abc" = [a,b,c]

prefix_of(Prefix, List) :- % Appends the Letters intvolved in the prefix to a list
   append(Prefix, _, List).

toString(Str,Longest):-                  %Takes a list of atoms and converts it to a String
    atom_chars(Str,Longest).             %Using inbuilt atom_chars function

longestCommonprefix(Prefix, List) :-
   findall(Letters, maplist(prefix_of(Letters),List), ListOfAllPrefixes), % Between findall and maplist, it finds all prefixes possible  
   last(ListOfAllPrefixes, LongestPrefix),                                % and adds them to a list. last gets the longest element in the list created above.
   toString(Prefix, LongestPrefix).                                       % This is because the last element is the longest. toString creates it as a string.