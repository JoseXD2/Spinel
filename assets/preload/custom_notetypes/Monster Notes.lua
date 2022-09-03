--botPlayOn = false

local stopAnimTimer = 0;
local targetTime = 0;
function onCreate()
    for i = 0, getProperty('unspawnNotes.length')-1 do
        if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Monster Notes' then
               
            setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); --Stops original animations

            if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
                --setPropertyFromGroup('unspawnNotes', i, 'hitByOpponent', true); --Miss has no penalties
                setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
            end
        end
    end
end






    function opponentNoteHit(id, direction, noteType, isSustainNote)
        if noteType == 'Monster Notes' then
            anim = ''
            animAlt = ''
            if direction == 0 then
                anim = 'singLEFT'
                animAlt = 'singLEFT-alt'
            elseif direction == 1 then
                anim = 'singDOWN'
                animAlt = 'singDOWN-alt'
            elseif direction == 2 then
                anim = 'singUP'
                animAlt = 'singUP-alt'
            elseif direction == 3 then
                anim = 'singRIGHT'
                animAlt = 'singRIGHT-alt'
            end
            --characterPlayAnim('gf', anim, true);
            triggerEvent('Play Animation', anim, 'gf');
            triggerEvent('Play Animation', animAlt, 'dad');
        end
    end

    function goodNoteHit(id, direction, noteType, isSustainNote)

        if noteType == 'Monster Notes' then
            anim = ''
            animAlt = ''
            if direction == 0 then
                anim = 'singLEFT'
                animAlt = 'singLEFT-alt'
            elseif direction == 1 then
                anim = 'singDOWN'
                animAlt = 'singDOWN-alt'
            elseif direction == 2 then
                anim = 'singUP'
                animAlt = 'singUP-alt'
            elseif direction == 3 then
                anim = 'singRIGHT'
                animAlt = 'singRIGHT-alt'
            end
            --characterPlayAnim('gf', anim, true);
            triggerEvent('Play Animation', anim, 'gf');
            triggerEvent('Play Animation', animAlt, 'dad');
        end

    end
