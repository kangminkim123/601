-----------------------------------------------------------------------------------------
--
-- command line Lua
--
-- show how to use an if statement
--  and random numbers
--
-- created on: kangmin kim
-- created by: Mar 6
-----------------------------------------------------------------------------------------

local computernumber = display.newText( "computer choice:", 636, 1200, native.systemFont, 88)


local myText = display.newText( "choose between 1 and 6!", 1036, 400, native.systemFont, 88 )


local numberTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 550, 125 )
numberTextField.id = "number textField" 

local guessButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
guessButton.x = display.contentCenterX
guessButton.y = display.contentCenterY
guessButton.id = "guessButton button"

local function ButtonClick( event )
	-- body
	local clear1 = display.newRect(display.contentCenterX + 100, display.contentCenterY + 15, 100, 150 )

	local clear2 = display.newRect(display.contentCenterX + 200, display.contentCenterY + 25, 100, 250 ) 

	math.randomseed( os.time() )

	local numberToGuess = math.random(6)

	local answerAsNumber = tonumber(numberTextField.text)

	local compChoice = display.newText ( numberToGuess, display.contentCenterX + 900, display.contentCenterY + 1100, native.systemFont, 88)

	if numberToGuess == answerAsNumber then
		local rightAnswer = display.newText ( "Correct", display.contentCenterX, display.contentCenterY + 1200, native.systemFont, 88)

		elseif numberToGuess == answerAsNumber then

	    local wrongAnswer = display.newText( "Incorrect", display.contentCenterX, display.contentCenterY + 1000, native.systemFont, 88)

	end
end

guessButton:addEventListener( "touch", ButtonClick )