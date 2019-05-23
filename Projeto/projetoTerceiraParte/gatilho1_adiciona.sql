
CREATE TRIGGER UpdateEmpresaTree
AFTER DELETE ON Empresa
FOR EACH ROW
BEGIN
	DELETE FROM Publicidade WHERE (Publicidade.idEmpresa=old.idEmpresa)
	DELETE FROM Estudio WHERE (Estudio.idEmpresa=old.idEmpresa)
END;