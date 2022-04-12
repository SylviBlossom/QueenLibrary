return {
    wall = function(cutscene, event)
        cutscene:text("* Why Is This Wall So\nFunky", "lmao", "queen")
    end,

    starwalker = function(cutscene, event)
        cutscene:text("* These [color:yellow]stairs[color:reset] are [color:yellow]Pissing[color:reset] me\noff...")
        cutscene:text("* I'm the original   [color:yellow]Starwalker[color:reset]")
        cutscene:text("* Sorry About The Stair\nProblem Get Well Soon", "what", "queen")
        cutscene:text("*       [color:yellow]Thank[wait:5]s")
    end,

    parting = function(cutscene)
        if Game.party[1].id ~= "queen" then return end

        cutscene:detachCamera()
        cutscene:detachFollowers()

        local queen = cutscene:getCharacter("queen")
        local noelle = cutscene:getCharacter("noelle")

        queen = queen:convertToNPC()
        noelle = noelle:convertToPlayer()

        Game:removePartyMember("queen")

        cutscene:text("* Ah Theres The Room\nTransition", "smile", "queen")
        cutscene:wait(cutscene:walkTo(queen, queen.x + 80, queen.y, 8))
        cutscene:wait(0.25)
        cutscene:text("* Noelle Sweetie Gravy Im\nAfraid This Is Where\nWe Must Part", "sorry", "queen")
        cutscene:text("* For Reasons So Complex\nI Simply Cannot Say In\nThis Small Textbox", "smile_side_l", "queen")
        cutscene:wait(0.2)
        cutscene:text("* O-Okay...", "confused_surprise", "noelle")
        cutscene:wait(0.5)
        cutscene:look(queen, "left")
        cutscene:wait(1)
        cutscene:text("* Ok Bye", "smile", "queen")
        cutscene:setAnimation(queen, "stupid_run_right")
        Assets.playSound("queen/pirouette")
        cutscene:wait(cutscene:slideTo(queen, 820, queen.y, 8))
        queen:remove()

        cutscene:attachCamera()
    end
}