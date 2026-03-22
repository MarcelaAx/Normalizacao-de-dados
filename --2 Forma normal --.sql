--2 Forma normal --

-- Criar a tabela "enderecos"
CREATE TABLE enderecos (
  id INT PRIMARY KEY,
  id_usuario INT,
  rua VARCHAR(255) NOT NULL,
  numero VARCHAR(10) NOT NULL,
  cidade VARCHAR(100) NOT NULL,
  estado VARCHAR(100) NOT NULL,
  pais VARCHAR(100) NOT NULL,
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

-- Inserir os dados de endereço na tabela "enderecos"
INSERT INTO enderecos (id, id_usuario, rua, numero, cidade, estado, pais)
SELECT id, id, rua, numero, cidade, estado, pais
FROM usuarios;

-- Remover os atributos de endereço da tabela "usuarios"
ALTER TABLE usuarios
DROP COLUMN rua,
DROP COLUMN numero,
DROP COLUMN cidade,
DROP COLUMN estado,
DROP COLUMN pais;