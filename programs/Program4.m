format compact
clc % surpresses "format compact and "Program4 file name"

disp("Part 1")
PythagoreanTriples = [];
for i = 1:1:30
    for j = i:1:30
        for k = i:1:30
            if (i^2+j^2 == k^2)
                PythagoreanTriples = [PythagoreanTriples; i,j,k];%this works, but it works by permuation.
            end
        end
    end
end
PythagoreanTriples = PythagoreanTriples

fprintf('\nPart 2\n')
Diff6Primes = [];
for i=1:94
    if isprime(i) && isprime(i+6)
        Diff6Primes = [Diff6Primes; i,i+6];
    end
end
Diff6Primes = Diff6Primes

fprintf('\nPart 3\n')
PerfectNumbers = [];
foo = 0;
for i = 2:1:10000
    foo = 0;
    for j = 1:1:floor(i/2)
        if rem(i,j)==0
            foo = foo + j;
        end
    end
    if (foo == i)
        PerfectNumbers = [PerfectNumbers, i];
    end
    if length(PerfectNumbers)==3
        break;
    end
end
PerfectNumbers = PerfectNumbers