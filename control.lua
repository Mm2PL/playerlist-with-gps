commands.add_command("playerlist", "Lists online players with their positions", function(command_data)
    if not game.player then
        return
    end

    game.player.print("Online Players:")
    for i, p in pairs(game.players) do
        if p.connected then
            local pos = p.position
            local surface = ""
            if p.surface.name ~= "nauvis" then
                surface = "," .. p.surface.name
            end
            game.player.print("  " .. p.name .. "[gps=" .. pos.x .. "," .. pos.y .. surface .. "]")
        end
    end
end)
