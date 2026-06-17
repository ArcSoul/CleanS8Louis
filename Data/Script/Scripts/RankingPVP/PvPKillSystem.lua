--[[
--############################################################################
-- SSeMU MU Online Emulator - PvP Kill System Core
-- ---------------------------------------------------------------------------
-- © 2026 Creado por Gemini AI (Professional Edition)
-- ---------------------------------------------------------------------------
-- [LÓGICA DEL MOTOR]
-- Este archivo procesa la muerte, valida los datos y llama a los módulos.
--############################################################################
]]--

-- Vinculación de la función al evento de muerte del GameServer
BridgeFunctionAttach('OnUserDie', 'PvPKill_OnUserDie')

-- Tabla temporal para controlar el Anti-Flood (No se guarda en DB)
local AntiDuplicate = {}

function PvPKill_OnUserDie(victimIndex, killerIndex)
    -- [VALIDACIÓN: SWITCH MAESTRO]
    if not PvPKillConfig.Enabled then return end
    
    -- [VALIDACIÓN: INTEGRIDAD DE PUNTEROS]
    -- Evitamos errores si el servidor no envía correctamente los índices.
    if victimIndex == nil or killerIndex == nil then return end

    -- [VALIDACIÓN: TIPO DE OBJETO]
    -- El sistema solo debe procesar si AMBOS son jugadores (User).
    -- Esto ignora muertes contra Monsters o NPCs.
    if GetObjectType(victimIndex) ~= ObjectType.OBJECT_USER or GetObjectType(killerIndex) ~= ObjectType.OBJECT_USER then
        return 
    end

    -- [DATOS BÁSICOS]
    local victimName = GetObjectName(victimIndex)
    local currentTime = os.time()

    -- [LÓGICA ANTI-FLOOD MODULAR]
    -- Verificamos si la víctima murió hace menos del tiempo configurado.
    if AntiDuplicate[victimName] and (currentTime - AntiDuplicate[victimName] < PvPKillConfig.AntiFloodSeconds) then
        return -- Si es muy pronto, ignoramos el proceso para evitar duplicidad
    end
    AntiDuplicate[victimName] = currentTime -- Registramos el tiempo de la muerte actual

    -- [LÓGICA DE MAPA]
    local killerName = GetObjectName(killerIndex)
    local mapCode    = GetObjectMap(killerIndex)
    local mapName    = GetMapName(mapCode) or PvPKillConfig.UnknownMapText

    -- [MÓDULO: PERSISTENCIA SQL]
    -- Si está habilitado, envía la consulta asíncrona para no congelar el GS.
    if PvPKillConfig.DatabaseEnabled then
        SQLAsyncQuery(
            string.format("EXEC [dbo].[WZ_PvP_AddKill] '%s', '%s', '%s'", killerName, victimName, mapName),
            "PvPKill.Register", -- ID de retorno para manejar resultados (opcional)
            string.format("%d;%d", killerIndex, victimIndex) -- Parámetros extra
        )
    end

    -- [MÓDULO: ANUNCIOS GLOBALES]
    -- Procesa la parte visual del sistema.
    if PvPKillConfig.AnnounceEnabled then
        -- Seleccionamos una frase aleatoria de la tabla en el Config.
        local fraseElegida = PvPKillConfig.Phrases[math.random(#PvPKillConfig.Phrases)]
        
        -- Formateamos el mensaje final
        local msg = string.format("! %s %s %s EN %s !", killerName, fraseElegida, victimName, mapName)
        
        -- Verificamos si debemos forzar MAYÚSCULAS
        if PvPKillConfig.AnnounceUpper then
            msg = msg:upper()
        end
        
        -- Envío del anuncio a todo el servidor
        NoticeSendToAll(PvPKillConfig.NoticeType, msg)
        
        -- Registro en el archivo .log del servidor (Carpeta Log)
        LogInfo(PvPKillConfig.logPrefix, "[PVP] " .. msg)
    end
end