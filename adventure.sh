#!/bin/bash

welcome() {
    echo "Welcome back to the fantasy world!!! Wait, are you new here?"
    read -p "What is your name? " name
}

adventure_1() {
    echo -e "Are you\n1. Princess\n2. Commoner\n"
    read -p "Choose a Role (1/2): " choice1
    if [ "$choice1" -eq 1 ]; then
        princess
    elif [ "$choice1" -eq 2 ]; then
        commoner
    else
        echo "Invalid choice, try again."
        adventure_1
    fi
}

princess() {
    echo "Hello Princess $name"
    echo ""
    echo "You are next in line to the throne. You have been kept inside the palace for a long time for your safety."
    echo "One night, you sneak out of the palace."
    echo "As you finally get a chance to breathe some fresh air outside the palace,"
    echo "you hear a noise behind the bushes."
    echo "What will you do?"
    echo -e "Are you\n1. Investigate the noise\n2. Run back to the palace\n3. Ignore it and continue your walk\n"
    read -p "Choose an option (1/2/3): " choice2

    if [ "$choice2" -eq 1 ]; then
        investigate
    elif [ "$choice2" -eq 2 ]; then
        run
    elif [ "$choice2" -eq 3 ]; then
        ignore
    else
        echo "Invalid choice, try again."
        princess
    fi
}

commoner() {
    echo "Hello, $name."
    echo "You are a hardworking commoner, working late nights to make ends meet."
    echo "While walking, you hear a sound behind the bushes."
    echo "What will you do?"
    echo -e "Will you\n1. Investigate the noise\n2. Walk quickly to avoid the bushes\n3. Ignore it and continue your walk\n"
    read -p "Choose an option (1/2/3): " choice2

    if [ "$choice2" -eq 1 ]; then
        meet_princess
    elif [ "$choice2" -eq 2 ]; then
        get_caught
    elif [ "$choice2" -eq 3 ]; then
        get_noticed
    else
        echo "Invalid choice, try again."
        commoner
    fi
}

investigate() {
    echo "You start investigating the sound."
    echo "You see a man, just as surprised as you are."
    echo -e "Will you\n1. Ask him why he was there\n2. Trust him to take you back to the palace\n3. Call for guards and arrest him\n"
    read -p "Choose your option (1/2/3): " choice

    if [ "$choice" -eq 1 ]; then
        ask_about_figure
    elif [ "$choice" -eq 2 ]; then
        echo "You start walking towards the palace"
        echo "On the way you see a hidden path"
        explore_path
    elif [ "$choice" -eq 3 ]; then
        arrest
    else
        echo "Invalid choice, try again."
        investigate
    fi
}

ask_about_figure() {
    echo "You ask the man why he was there. He explains he was just on his way to home. He asks 'Who are you?' "
    echo -e "Do you:\n1. Apologize for the misunderstanding\n2. Demand further explanation\n"
    read -p "Choose your option (1/2): " choice

    if [ "$choice" -eq 1 ]; then
        apologize_confrontation
    elif [ "$choice" -eq 2 ]; then
        demand_explanation
    else
        echo "Invalid choice, try again."
        ask_about_figure
    fi
}

demand_explanation() {
    echo "You demand further explanation. The man explains he was on a mission and meant no harm."
    echo -e "Do you:\n1. Apologize for the confrontation\n2. Offer to help him find his way\n"
    read -p "Choose your option (1/2): " choice

    if [ "$choice" -eq 1 ]; then
        apologize_confrontation
    elif [ "$choice" -eq 2 ]; then
        offer_help
    else
        echo "Invalid choice, try again."
        demand_explanation
    fi
}

apologize_confrontation() {
    echo "You apologize for the confrontation. The man accepts and shares his story."
    echo "As the two of you walk further away from the place, you find a hidden grove with a beautiful, glowing pond."
    echo -e "Do you\n1. Investigate the pond\n2. Return to the palace\n"
    read -p "Choose your option (1/2): " choice

    if [ "$choice" -eq 1 ]; then
        investigate_pond
    elif [ "$choice" -eq 2 ]; then
        return_to_palace
    else
        echo "Invalid choice, try again."
        ignore
    fi
}

offer_help() {
    echo "You offer to help him find his way. He appreciates it and shares more about his mission."
    love_story
}

arrest() {
    echo "You call for guards, and the man is arrested."
    echo "Later, you find out he was a misunderstood traveler."
    echo "You regret your decision and try to make amends, but he is already gone."
    echo "You feel regret over not getting a chance to ask for forgiveness"
}

run() {
    echo "You start running back to the palace."
    echo "The sound is getting closer to you."
    echo "Suddenly, you trip and fall, and the figure catches up to you."
    echo -e "Do you\n1. Scream for help\n2. Try to fight the figure\n"
    read -p "Choose your option (1/2): " choice

    if [ "$choice" -eq 1 ]; then
        scream_for_help
    elif [ "$choice" -eq 2 ]; then
        fight
    else
        echo "Invalid choice, try again."
        run
    fi
}

scream_for_help() {
    echo "You scream for help."
    arrest
}

fight() {
    echo "You try to fight the figure, but it turns out to be a harmless traveler who was just lost."
    apologize_confrontation
}

ignore() {
    echo "You ignore the sound and continue your walk."
    echo "As you walk further away from the place, you find a hidden grove with a beautiful, glowing pond."
    echo -e "Do you\n1. Investigate the pond\n2. Return to the palace\n"
    read -p "Choose your option (1/2): " choice

    if [ "$choice" -eq 1 ]; then
        investigate_pond
    elif [ "$choice" -eq 2 ]; then
        return_to_palace
    else
        echo "Invalid choice, try again."
        ignore
    fi
}

investigate_pond() {
    echo "You decide to investigate the pond."
    echo -e "Do you:\n1. Touch the water\n2. Look for creatures in the pond\n"
    read -p "Choose your option (1/2): " choice

    if [ "$choice" -eq 1 ]; then
        touch_water
    elif [ "$choice" -eq 2 ]; then
        look_for_creatures
    else
        echo "Invalid choice, try again."
        investigate_pond
    fi
}

touch_water() {
    echo "You touch the water, and it feels strangely warm and calming."
    echo -e "Do you:\n1. Dip your feet in the pond\n2. Look for something floating in the pond\n"
    read -p "Choose your option (1/2): " choice

    if [ "$choice" -eq 1 ]; then
        dip_feet
    elif [ "$choice" -eq 2 ]; then
        look_floating
    else
        echo "Invalid choice, try again."
        touch_water
    fi
}

dip_feet(){
    echo "You stay there with your feet dipped in the water next to the guy who was behind the bushes"
    echo "He talks to you and you find that you have a lot in common"
    love_story

}
look_for_creatures() {
    echo "You look for hidden creatures around the pond."
    echo -e "You see some unusual fish swimming. Do you:\n1.Try to catch a fish\n2.Observe the fish from a distance\n"
    read -p "Choose an option (1/2): " choice

    if [ "$choice" -eq 1 ]; then
        catch_fish
    elif [ "$choice" -eq 2 ]; then
        observe_fish
    else
        echo "Invalid choice, try again."
        look_for_creatures
    fi
}

catch_fish() {
    echo "You attempt to catch a fish but only manage to scare it away."
    echo -e "Do you:\n1. Try again\n2. Decide to leave the pond\n"
    read -p "Choose an option (1/2): " choice

    if [ "$choice" -eq 1 ]; then
        echo "You finally caught the fish"
        observe_fish
    elif [ "$choice" -eq 2 ]; then
        leave_pond
    else
        echo "Invalid choice, try again."
        catch_fish
    fi
}

observe_fish() {
    echo "You observe the fish and notice they are very beautiful."
    echo "You decide to enjoy the moment and relax by the pond."
    echo "You start walking back to the palace and see a new path"
    echo -e "Do you \n1. Go back to place \n2. explore the path"
    read -p "Choose an option (1/2): " choice
    if [ "$choice" -eq 1 ]; then
        return_to_palace
    elif [ "$choice" -eq 2 ]; then
        explore_path
    else
        echo "Invalid choice, try again."
        observe_fish
    fi

}

return_to_palace() {
    echo "You decide to return to the palace, as it has been really late at night."
    echo "You feel relieved and head back safely."
}

look_floating() {
    echo "You look for something floating in the pond and find an ancient artifact."
    echo -e "Do you:\n1. Retrieve the artifact\n2. Leave it and walk away\n"
    read -p "Choose an option (1/2): " choice

    if [ "$choice" -eq 1 ]; then
        retrieve_object
    elif [ "$choice" -eq 2 ]; then
        walk_away
    else
        echo "Invalid choice, try again."
        look_floating
    fi
}

retrieve_object() {
    echo "You retrieve the object from the water and discover it is an ancient artifact."
    echo "You decide to take it back to the palace and show it to the scholars."
    echo "They are impressed and you are celebrated for your discovery."
}

walk_away() {
    echo "You leave the mysterious object and walk away."
    echo "You return to the palace and ponder what could have been."
}

explore_path() {
    echo "You explore the hidden path and discover a secluded area with a beautiful view."
    echo -e "Do you:\n1. Sit and enjoy the view\n2. Continue exploring\n"
    read -p "Choose an option (1/2): " choice

    if [ "$choice" -eq 1 ]; then
        enjoy_view
    elif [ "$choice" -eq 2 ]; then
        continue_exploring
    else
        echo "Invalid choice, try again."
        explore_path
    fi
}

enjoy_view() {
    echo "You sit and enjoy the breathtaking view. It helps you clear your mind."
    echo "Eventually, you head back to the palace, feeling at peace."
}

continue_exploring() {
    echo "You continue exploring and find a hidden village with friendly inhabitants."
    echo -e "Do you:\n1. Spend time with the villagers\n2. Head back to the palace\n"
    read -p "Choose an option (1/2): " choice

    if [ "$choice" -eq 1 ]; then
        spend_time_villagers
    elif [ "$choice" -eq 2 ]; then
        return_to_palace
    else
        echo "Invalid choice, try again."
        continue_exploring
    fi
}

spend_time_villagers() {
    echo "You spend time with the villagers and learn about their culture and stories."
    echo "You make some new friends and gain valuable experiences."
    echo "You return to the palace with a renewed sense of purpose."
}

meet_princess() {
    echo "While you try to see who is behind the bushes, your head gets hit by a hand."
    echo "To your surprise, a beautiful girl comes from behind."
    echo "She yells, 'Who are you?'"
    echo -e "What will you do?\n1. Yell back at her for hitting your head\n2. Tell her your name\n3. Leave quietly\n"
    read -p "Choose an option (1/2/3): " choice4

    if [ "$choice4" -eq 1 ]; then
        yell_back
    elif [ "$choice4" -eq 2 ]; then
        tell_name
    elif [ "$choice4" -eq 3 ]; then
        leave_quietly
    else
        echo "Invalid choice, try again."
        meet_princess
    fi
}

yell_back() {
    echo "You yell back at her for hitting your head. She apologizes and explains she was startled."
    echo "You both calm down and talk."
    echo -e "Do you:\n1. Ask her about her story\n2. Suggest leaving the area together\n"
    read -p "Choose your option (1/2): " choice4

    if [ "$choice4" -eq 1 ]; then
        ask_about_story
    elif [ "$choice4" -eq 2 ]; then
        suggest_leaving
    else
        echo "Invalid choice, try again."
        yell_back
    fi
}

ask_about_story() {
    echo "You ask her about her story. She shares her life as a princess and her desire for freedom."
    echo "You both develop a deep connection."
    love_story
}

suggest_leaving() {
    echo "You suggest leaving the area together. She agrees, and you walk back to the palace."
    love_story
}

tell_name() {
    echo "You tell her your name. She seems intrigued and invites you to the palace."
    echo "You both head to the palace where you talk and get to know each other."
    love_story
}

leave_quietly() {
    echo "You decide to leave quietly and avoid further confrontation."
    echo "Later, you think about what could have been, but you return to your normal life."
}

get_caught() {
    echo "You try to walk quickly but are caught by the palace guards."
    echo "They question you and you explain you were just trying to avoid the noise."
    echo "They let you go with a warning."
    return_home
}

get_noticed() {
    echo "You continue walking and are noticed by the palace guards."
    echo "They question you about your whereabouts and intentions."
    echo "You explain yourself and are allowed to continue."
    return_home
}

return_home() {
    echo "You return home and reflect on the night's events."
    echo "You are relieved to be safe but wonder about the missed opportunities."
}

love_story() {
    echo "As you spend time with the person, you both fall deeply in love."
    echo "You face various challenges but overcome them together."
    echo "You live happily ever after, cherishing your time together."
}

welcome
adventure_1
