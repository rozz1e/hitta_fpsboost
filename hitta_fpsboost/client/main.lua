
CreateThread(function()
    lib.registerContext({
        id = 'fpsMenu',
        title = 'FPS Boost',
        options = {
            {
                title = '< Reset',
                description = 'Resets your graphics to default.',
                onSelect = function()
                    ResetGraphics()
                end
            },
            {
                title = 'Low',
                description = 'Turns off lighting system',
                onSelect = function()
                    LOW()
                end
            },
            {
                title = 'Very Low',
                description = 'Changes your rendering to a minimal',
                onSelect = function()
                    VERYLOW()
                end
            },
            {
                title = 'Potato',
                description = 'Are you playing on nintendo?',
                onSelect = function()
                    POTATO()
                end
            }
        }
    })
end)

RegisterCommand(Config.Command, function()
    lib.showContext('fpsMenu')
end)

RegisterKeyMapping(Config.Command, 'FPS Menu', 'keyboard', Config.Key)