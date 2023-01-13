function [score, numTries] = HigherLowerGame(maxNum)

    if nargin < 1
        error('HigherLowerGame:NotEnoughInputs', 'Not enough input arguments')
    end
    if ~isscalar(maxNum) || ~isnumeric(maxNum) || maxNum < 1 || maxNum > 100
        error('HigherLowerGame:InvalidMaxNum', 'Invalid value for maxNum')
    end


    score = 10;
    numTries = 0;
    secretNum = randi(maxNum);


    while numTries < 10

        guess = input('Enter a number: ');


        if ~isscalar(guess) || ~isnumeric(guess) || guess < 1 || guess > maxNum
            fprintf('Invalid guess. Please enter a number between 1 and %d.\n', maxNum);
            continue
        end


        numTries = numTries + 1;
        score = score - 1;


        if guess == secretNum
            fprintf('You guessed correctly! It took you %d tries.\n', numTries);
            break
        elseif guess > secretNum
            fprintf('The secret number is lower.\n');
        else
            fprintf('The secret number is higher.\n');
        end
    end


    if numTries == 10
        fprintf('You ran out of tries. The secret number was %d.\n', secretNum);
    end
end
