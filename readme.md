# Introdução a Banco de Dados 
## UFMG - 2024/02


### Introdução

As informações utilizadas neste trabalho foram extraídas do [Atlas Brasil](http://www.atlasbrasil.org.br/), uma das maiores plataformas de divulgação de informações sobre o desenvolvimento humano do Brasil. Os dados presentes neste site são obtidos por meio das pesquisas do Censo Demográfico e da PNAD (ambas do IBGE) e disponibilizadas de forma fácil para a população.

## Objetivo
  O Objetivo deste trabalho é relacionar o nível de educação de uma população com a qualidade de vida experienciada por ela. Para isso, foram extraídos dados do ano de 2018 de todos os estados brasileiros referentes a alguns indicadores de escolaridade e desenvolvimento humano, explicitados no tópico a seguir.

### Estrutura
Neste repositório existem 2 arquivos, sendo eles:
  - dados_brutos.xlsx
  - tp2_dump.sql

O primeiro arquivo (dados_brutos.xlsx) se refere ao relatório extraído do Atlas Brasil, a partir dos indicadores:
  - Esperança de vida ao nascer
  - Taxa de analfabetismo - 18 anos ou mais de idade 
  -	% de 18 anos ou mais de idade com ensino fundamental completo 	
  - IDHM Longevidade 
  -	IDHM

Os dados foram agregados por estado brasileiro e todos são referentes ao ano de 2018.


O segundo arquivo (tp2_dump.sql), por sua vez, se refere a estrutura do banco de dados montada a partir dos dados coletados. Para a realização deste trabalho foi utilizado o SGBD [Postgresql](https://www.postgresql.org/). Foram criadas 3 tabelas, para separar as informações referente aos estados, aos indicadores de escolaridade e aos indicadores de desenvolvimento humano. Ele possui tanto a estrutura das tabelas quanto os comandos para inserir os dados necessários em cada uma.