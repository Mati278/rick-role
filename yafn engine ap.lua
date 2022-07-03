local r = getsenv(game.Players.LocalPlayer.PlayerGui.GameUI.GameHandler)
local oops = r.GoodHit
local cond = require(game.ReplicatedStorage.Modules.Conductor)
local bad = function(o)
    o.StrumTime = cond.AdjustedSongPos
    oops(o)
end
r.MissNote = bad
r.GoodHit = bad
local p
p = hookmetamethod(Instance.new'BindableEvent',"__namecall",function(i,v,...)
if v == "Death" then
return
end
return p(i,v,...)
end)
