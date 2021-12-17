local config = {}

config.rotas = {
---------------------------------------------------------------------------------------------------------------------------------------
-- ROTA DO FERRO
---------------------------------------------------------------------------------------------------------------------------------------
	['ferro'] = { -- Nome da rota que vai aparecer no mapa
        ['items'] = { -- Lista de itens e quantidade que sera recebido por cada ponto
            ['ferro'] = math.random(10,15),
            ['maconha'] = 1
        },
        ['perm'] = { -- Lista de permissoes e coordenadas para iniciar a rota
            ["crips.permissao"] = vector3(1289.22,-1710.52,55.47),
            ["vagos.permissao"] = vector3(360.61,-2032.51,22.39),
        },
        ['coords'] = { -- Coordenadas das rotas
            vector3(-3068.87, 3328.0, 8.8), 
            vector3(-2566.14, 2306.73, 33.22), 
            vector3(-1576.66, 2100.31, 68.49), 
            vector3(-2948.86, 58.54, 11.61), 
            vector3(-2187.72, -408.46, 13.16), 
            vector3(-1471.75, -920.18, 10.03), 
            vector3(-1321.74, -1259.06, 4.6), 
            vector3(-1137.12, -362.22, 37.68), 
            vector3(-1042.72, -521.23, 36.04), 
            vector3(2505.42, -333.5, 93.0), 
            vector3(1126.87, -1302.52, 34.73),
        }
    },
---------------------------------------------------------------------------------------------------------------------------------------
-- ROTA PEÇA DE ARMA
---------------------------------------------------------------------------------------------------------------------------------------
	['pecadearma'] = { -- Nome da rota que vai aparecer no mapa
        ['items'] = { -- Lista de itens e quantidade que sera recebido por cada ponto
            ['pecadearma'] = math.random(30,35),
        },
        ['perm'] = { -- Lista de permissoes e coordenadas para iniciar a rota
            ["mafia.permissao"] = vector3(-1886.34,2062.28,140.98),
            ["milicia.permissao"] = vector3(1908.97,515.13,172.69),
        },
        ['coords'] = { -- Coordenadas das rotas
            vector3(-2217.7, 197.39, 174.61),
            vector3(1020.99, -2434.87, 29.66),
            vector3(-870.03, 770.4, 191.73),
            vector3(1160.71, -311.69, 69.28),
            vector3(-1098.33, -1678.52, 4.36),
            vector3(1271.05, -683.52, 66.04),
            vector3(-1791.46, -683.35, 10.65),
            vector3(1017.92, -2281.58, 30.51),
            vector3(325.39, 537.48, 153.88),
            vector3(-1132.06, -1971.97, 13.17),
            vector3(-667.68, 84.44, 51.93),
            vector3(259.97, -1741.2, 29.46),
        }
    },
---------------------------------------------------------------------------------------------------------------------------------------
-- ROTA FERRO 2
---------------------------------------------------------------------------------------------------------------------------------------
	['ferro2'] = { -- Nome da rota que vai aparecer no mapa
        ['items'] = { -- Lista de itens e quantidade que sera recebido por cada ponto
            ['ferro2'] = math.random(10,15),
        },
        ['perm'] = { -- Lista de permissoes e coordenadas para iniciar a rota
            ["diamond.permissao"] = vector3(1022.21,-2290.67,30.50),
            ["turquia.permissao"] = vector3(1399.63,-785.78,70.02),
        },
        ['coords'] = { -- Coordenadas das rotas
            vector3(-3068.87, 3328.0, 8.8), 
            vector3(-2566.14, 2306.73, 33.22), 
            vector3(-1576.66, 2100.31, 68.49), 
            vector3(-2948.86, 58.54, 11.61), 
            vector3(-2187.72, -408.46, 13.16), 
            vector3(-1471.75, -920.18, 10.03), 
            vector3(-1321.74, -1259.06, 4.6), 
            vector3(-1137.12, -362.22, 37.68), 
            vector3(-1042.72, -521.23, 36.04), 
            vector3(2505.42, -333.5, 93.0), 
            vector3(1126.87, -1302.52, 34.73),
        }
    },
---------------------------------------------------------------------------------------------------------------------------------------
-- ROTA MUNICAO
---------------------------------------------------------------------------------------------------------------------------------------
	['municao'] = { -- Nome da rota que vai aparecer no mapa
        ['items'] = { -- Lista de itens e quantidade que sera recebido por cada ponto
            ['polvora'] = math.random(90,200),
        },
        ['perm'] = { -- Lista de permissoes e coordenadas para iniciar a rota
            ["corleone.permissao"] = vector3(391.97,-10.06,86.67),
            ["grota.permissao"] = vector3(2061.46,-87.42,243.92),
        },
        ['coords'] = { -- Coordenadas das rotas
            vector3(-3068.87, 3328.0, 8.8), 
            vector3(439.38, 3561.53, 33.24), 
            vector3(1601.67, 3562.69, 35.37), 
            vector3(1310.24, 4386.92, 41.23), 
            vector3(1943.85, 4647.04, 40.63), 
            vector3(1736.61, 6423.25, 34.39), 
            vector3(-758.16, 5600.44, 33.83), 
            vector3(264.26, 3096.01, 42.79), 
            vector3(2867.29, 1506.66, 24.57), 
            vector3(2544.2, 377.0, 108.62), 
            vector3(2505.42, -333.5, 93.0), 
            vector3(1126.87, -1302.52, 34.73)
        }
    },
---------------------------------------------------------------------------------------------------------------------------------------
-- ROTA COLETE
---------------------------------------------------------------------------------------------------------------------------------------
	['colete'] = { -- Nome da rota que vai aparecer no mapa
		['items'] = { -- Lista de itens e quantidade que sera recebido por cada ponto
			['pano'] = math.random(5,9),
			['linha'] = math.random(5,9),
		},
		['perm'] = { -- Lista de permissoes e coordenadas para iniciar a rota
			["ballas.permissao"] = vector3(116.32,-1957.45,20.81),
		},
        ['coords'] = { -- Coordenadas das rotas
            vector3(1381.92, -1544.70, 57.10),
            vector3(1229.59, -725.38, 60.95),
            vector3(1899.12, 3781.42, 32.87),
            vector3(1385.50, 3659.51, 34.92),
            vector3(1366.05, 4358.08, 44.50),
            vector3(2564.87, 4680.44, 34.08),
            vector3(2393.57, 3321.65, 47.71),
            vector3(2352.64, 2523.22, 47.68),
            vector3(-9.18, 6653.56, 31.25),
            vector3(-96.82, 6324.25, 31.57),
            vector3(-3205.48, 1152.44, 9.66),
            vector3(-3088.89, 392.21, 11.447),
            vector3(-1931.91, 162.48, 84.65),
            vector3(-1369.16, -136.26, 49.57),
            vector3(-1876.90, -584.35, 11.85),
            vector3(-1113.86, -1193.78, 2.37),
            vector3(-1.96, -1442.09, 30.96),
            vector3(130.39, -1853.16, 25.23),
            vector3(1289.37, -1710.45, 55.47),
            vector3(123.95, 64.71, 79.74)
        }
	},
}

return config