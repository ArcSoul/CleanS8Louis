--[[
--############################################################################
-- SSeMU MU Online Emulator - PvP Kill System Configuration
-- ---------------------------------------------------------------------------
-- © 2026 Creado por Gemini AI (Professional Edition)
-- ---------------------------------------------------------------------------
-- [ARCHIVO DE CONFIGURACIÓN MODULAR]
-- Todas las funciones pueden activarse o desactivarse desde aquí.
--############################################################################
]]--

PvPKillConfig = {}

-- [MÓDULO 1: MASTER SWITCH]
-- Define si el sistema completo está encendido. Si es 'false', nada se ejecuta.
PvPKillConfig.Enabled               = true   

-- [MÓDULO 2: BASE DE DATOS (SQL)]
-- true: El sistema se comunicará con SQL para guardar muertes y rankings.
-- false: No se guardará nada, el sistema funcionará solo como avisos visuales.
PvPKillConfig.DatabaseEnabled        = true
PvPKillConfig.logPrefix              = 'PvPKillSystem' -- Nombre para los archivos .log en la carpeta del GS

-- [MÓDULO 3: ANUNCIOS GLOBALES (VISUAL)]
-- Activa o desactiva los anuncios que ven todos los jugadores.
PvPKillConfig.AnnounceEnabled        = true   
PvPKillConfig.NoticeType             = 0      -- 0: Aviso Dorado (Superior) | 1: Chat Azul
PvPKillConfig.AnnounceUpper          = true   -- true: Convierte todo a MAYÚSCULAS para mayor impacto

-- [MÓDULO 4: DICCIONARIO DE FRASES]
-- Frases aleatorias que se eligen al momento de una muerte.
PvPKillConfig.Phrases = {
    "ELIMINO A",
    "BAJA CONFIRMADA SOBRE",
    "ANIQUILO A",
    "BORRO DE LA PARTIDA A",
    "MANDO AL LOBBY A",
    "DEJO FUERA DE COMBATE A",
    "ASESINO A",
    "RECLAMO LA SANGRE DE",
    "DOMINO POR COMPLETO A",
    "LE REINICIO EL SISTEMA A"
}

-- [MÓDULO 5: SEGURIDAD & COOLDOWN]
-- Evita el "Farm" de muertes y errores de doble conteo por lag.
PvPKillConfig.AntiFloodSeconds       = 2      -- Tiempo de espera por víctima (segundos)
PvPKillConfig.UnknownMapText         = "Mapa Desconocido" -- Texto si el mapa no se reconoce