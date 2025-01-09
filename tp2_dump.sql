-- Criação das tabelas
CREATE TABLE Estado (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE Educacao (
    id SERIAL PRIMARY KEY,
    territorialidade_id INT REFERENCES Estado(id),
    taxa_analfabetismo DECIMAL(5,2) NOT NULL,
    percentual_fundamental DECIMAL(5,2) NOT NULL
);

CREATE TABLE QualidadeVida (
    id SERIAL PRIMARY KEY,
    territorialidade_id INT REFERENCES Estado(id),
    esperanca_vida DECIMAL(5,2) NOT NULL,
    idhm_longevidade DECIMAL(5,3) NOT NULL,
    idhm DECIMAL(5,3) NOT NULL
);

-- Inserção dos dados nas tabelas
INSERT INTO Estado (nome) VALUES
('Acre'),
('Alagoas'),
('Amapá'),
('Amazonas'),
('Bahia'),
('Ceará'),
('Distrito Federal'),
('Espírito Santo'),
('Goiás'),
('Maranhão'),
('Mato Grosso do Sul'),
('Mato Grosso'),
('Minas Gerais'),
('Paraíba'),
('Paraná'),
('Pará'),
('Pernambuco'),
('Piauí'),
('Rio de Janeiro'),
('Rio Grande do Norte'),
('Rio Grande do Sul'),
('Rondônia'),
('Roraima'),
('Santa Catarina'),
('São Paulo'),
('Sergipe'),
('Tocantins');

INSERT INTO Educacao (territorialidade_id, taxa_analfabetismo, percentual_fundamental) VALUES
(1, 12.03, 63.32),
(2, 18.24, 52.37),
(3, 5.85, 71.58),
(4, 5.81, 68.13),
(5, 13.15, 56.44),
(6, 13.92, 60.07),
(7, 2.94, 79.26),
(8, 5.07, 66.47),
(9, 5.24, 67.10),
(10, 15.89, 56.22),
(11, 5.05, 63.68),
(12, 6.72, 64.79),
(13, 6.08, 62.31),
(14, 17.02, 52.54),
(15, 4.72, 66.74),
(16, 9.04, 59.99),
(17, 12.65, 61.27),
(18, 16.07, 54.35),
(19, 2.13, 75.42),
(20, 13.95, 59.07),
(21, 2.67, 65.87),
(22, 6.51, 58.41),
(23, 6.43, 72.48),
(24, 2.61, 68.63),
(25, 2.71, 74.81),
(26, 13.46, 57.65),
(27, 9.98, 61.75);

INSERT INTO QualidadeVida (territorialidade_id, esperanca_vida, idhm_longevidade, idhm) VALUES
(1, 74.51, 0.825, 0.733),
(2, 72.25, 0.788, 0.689),
(3, 74.42, 0.824, 0.741),
(4, 72.31, 0.789, 0.718),
(5, 73.87, 0.815, 0.710),
(6, 74.15, 0.819, 0.739),
(7, 78.52, 0.892, 0.845),
(8, 78.83, 0.897, 0.788),
(9, 74.42, 0.824, 0.771),
(10, 71.11, 0.769, 0.686),
(11, 76.00, 0.850, 0.770),
(12, 74.68, 0.828, 0.778),
(13, 77.73, 0.879, 0.784),
(14, 73.69, 0.812, 0.711),
(15, 77.61, 0.877, 0.805),
(16, 72.41, 0.790, 0.707),
(17, 74.53, 0.826, 0.735),
(18, 71.30, 0.772, 0.699),
(19, 76.76, 0.863, 0.805),
(20, 76.08, 0.851, 0.739),
(21, 78.30, 0.888, 0.797),
(22, 71.69, 0.778, 0.730),
(23, 72.01, 0.784, 0.760),
(24, 79.70, 0.912, 0.819),
(25, 78.63, 0.894, 0.837),
(26, 73.05, 0.801, 0.710),
(27, 73.81, 0.814, 0.749);
