-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
Tunnel = module("vrp","lib/Tunnel")
Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECT
-----------------------------------------------------------------------------------------------------------------------------------------
src = Tunnel.getInterface("hv-routes")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
blips = false
service = false
selected = 0
random = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONFIG
-----------------------------------------------------------------------------------------------------------------------------------------
config = module("hv-routes","cfg/config")
-----------------------------------------------------------------------------------------------------------------------------------------
-- START JOB
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function() 
    while true do
        local sleep = 1000
        local ped = PlayerPedId()
        local cds = GetEntityCoords(ped)
        for k,v in pairs(config.rotas) do
            for l,w in pairs(v['perm']) do
                local distance = #(cds - w)
                if distance <= 10 then
                    sleep = 4
                    DrawMarker(21,w.x,w.y,w.z-0.5,0,0,0,0,0.5,0.5,0.5,0.5,0.5,255,165,0,30,1,0,0,1)
                    if distance <= 1.5 then
                        drawTxt("PRESSIONE  ~o~E~w~  PARA ~o~INICIAR A ROTA",4,0.5,0.93,0.50,255,255,255,180)
                        if IsControlJustPressed(0,38) and src.checkPermission(l) then
                            service = true
                            random = src.randomRoute()
                            if random then selected = math.random(#v['coords'])
                            else selected = 1 end
                            StartDelivery(v['coords'], v['items'], k)
                            BlipCreate(v['coords'], selected, k)
                            ExitJob()
                            TriggerEvent('Notify','sucesso','Você inicio o serviço de coleta.')
                        end
                    end
                end
            end
        end
        Citizen.Wait(sleep)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DELIVERY
-----------------------------------------------------------------------------------------------------------------------------------------
function StartDelivery(coords, items, name)
    local locs = coords
    local rewards = items 
    local name = name
    Citizen.CreateThread(function() 
        while service do
            local sleep = 1000
            local ped = PlayerPedId()
            local cds = GetEntityCoords(ped)
            local distance = #(cds - locs[selected])
            if distance <= 25 then
                sleep = 4
				DrawMarker(21,locs[selected].x,locs[selected].y,locs[selected].z-0.7,0,0,0,0,180.0,130.0,1.0,1.0,0.5,240,200,80,30,1,0,0,1)
                if distance <= 1.5 then
					drawTxt("PRESSIONE  ~o~E~w~  PARA ~o~COLETAR OS ITENS",4,0.5,0.93,0.50,255,255,255,180)
                    if IsControlJustPressed(0,38) and not IsPedInAnyVehicle(ped) then
                        if src.checkPayment(rewards) then
                            vRP._playAnim(true,{{"pickup_object","pickup_low"}},false)
                            RemoveBlip(blips)
                            if random then
                                if selected == #locs then
                                    selected = 7
                                 else
                                    selected = math.random(#locs)
                                 end
                            else
                                if selected == #locs then
                                    selected = 1
                                else
                                    selected = selected + 1
                                end
                            end
                            BlipCreate(locs, selected, name)
                         end
                    end
                end
            end
            Citizen.Wait(sleep)
        end
    end)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CANCELAR
-----------------------------------------------------------------------------------------------------------------------------------------
function ExitJob()
    Citizen.CreateThread(function()
        while service do
            drawTxt("~w~PRESSIONE ~b~F7 ~w~SE DESEJA FINALIZAR O EXPEDIENTE",4,0.160,0.930,0.35,255,255,255,180)
            if IsControlJustPressed(0,168) then
                TriggerEvent('Notify','service','Você acabou de sair de serviço.')
                service = false
                if blips then RemoveBlip(blips) end
            end
            Citizen.Wait(4)
        end
    end)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- DRAWTEXT
-----------------------------------------------------------------------------------------------------------------------------------------
function drawTxt(text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- BLIP CREATE
-----------------------------------------------------------------------------------------------------------------------------------------
function BlipCreate(locs, selected, name)
	blips = AddBlipForCoord(locs[selected].x, locs[selected].y, locs[selected].z)
	SetBlipSprite(blips,1)
	SetBlipColour(blips,5)
	SetBlipScale(blips,0.4)
	SetBlipAsShortRange(blips,false)
	SetBlipRoute(blips,true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Coleta de "..name)
	EndTextCommandSetBlipName(blips)
end