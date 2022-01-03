# Computer Number Guessing Game in Julia
# This program is based on 10-Julia-Projects-for-Beginners by logankilpatrick

using Random

function play_number_guess_computer()

    # Initialize variables
    cont = 0
    print("Please enter a number between 1 and 50000 for the computer to try and guess: ")

    # Take in the user input and convert it to a number
    target_number = parse(Int64, readline())

    # Create an array of 50000 numbers
    guess_order = collect(1:50000)

    # Define our random seed
    rng = MersenneTwister(12345)

    # Shuffle the array randomly given ur seed
    shuffled_guess = shuffle(rng, guess_order)

    # Loop through each guess and see if it right
    for guess in shuffled_guess

        if guess == target_number
            print("\nThe computer cracked the code and guessed it right!")
            break # Stop the for loop if we get it right
        end

        print("\nComputer guessed: $guess")
        cont = cont + 1
    end
    print("\nThe computer took $cont guesses to guess the number.")
end

play_number_guess_computer()