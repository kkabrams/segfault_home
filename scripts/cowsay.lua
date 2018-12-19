
-- my drawing
function ascii_nerd( name )
	local s = ""
	s = s .. [[

\ | | /
| o o |
 \ O /
  | |
]]
	local l = string.len(name)
	for i=1,l+4 do s = s .. "+" end
	s = s .. "\n| " .. name .. " |\n"
	for i=1,l+4 do s = s .. "+" end
	return s
end

--from beej.us
function ascii_goat( text )
	local s = ""
	s = s .. [[    )_)
 ___|oo) ]]
	s = s .. text .. "\n"
	s = s .. [['|  |\_|                            
 |||| #
 ````]]
	return s
end

--http://ascii.co.uk/art/shoot
function ascii_shoot( name )
	local s = ""
	if name == nil then name = "" else
	name = "("..name..")" end
	s = s .. [[
   O
  <\==-   -   - -   -  -  - ---
 ./ \                            _/\_\O ]] .. name .. [[
]]
	return s
end

function ascii_lurker( name )
end

function ascii_hunt( name )
end

function ascii_pc( pccmd )
end

function ascii_dickbutt( name )
	local s = ""
	if name == nul then name = "" else
	name = "("..name..")\n" end
	s = s .. [[
 ___
/   \ <--- ]] .. name .. [[
|o o|
| > |
|__/|  /\
|   |_ ||
|  |  \||
|  J   )_)
 \____/
   |
  ='
]]
	return s
end

v="help"
for k,v in ipairs(arg) do
	if v == "nerd" then
		print( ascii_nerd( arg[k+1] ) )
	elseif v == "goat" then
		print( ascii_goat( arg[k+1] ) )
	elseif v == "shoot" then
		print( ascii_shoot( arg[k+1] ) )
	elseif v == "dickbutt" then
		print( ascii_dickbutt( arg[k+1] ) )
	end
end
--if v == "help" then
--	print("usage: sayp [nerd|goat|shoot|dickbutt] [name]")
--end
