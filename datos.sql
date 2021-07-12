USE RELOJESDUARTE
GO


INSERT INTO  ADMINISTRADOR
(IDAdmin_A, Contraseña_A, Nombre_A, Apellido_A)
SELECT '1013', 'a1234', 'Mauro', 'Gonzalez' UNION
SELECT '1014', 'b115', 'Jeronimo', 'Rufier' UNION
SELECT '1015', 'a5153', 'Andres', 'Tulo' UNION
SELECT '1016', 'c1214', 'Marcos', 'Ayerra' UNION
SELECT '1017', 'j1254', 'Justo', 'Cernadas' UNION
SELECT '1018', 'm1244', 'Pedro', 'Suarez' UNION
SELECT '1019', 'l0149', 'Mateo', 'Pergoni' UNION
SELECT '1020', 'asd12', 'Laura', 'Jazmin' UNION
SELECT '1021', 'jia192', 'Marta', 'Gonzalez' UNION
SELECT '1022', 'lek291', 'Leo', 'Nobile'
GO

INSERT INTO USUARIOS 
(NombreUsuario_U, Contraseña_U, Nombre_U, Apellido_U, Email_U, Telefono_U)
SELECT 'santimorgado', '135ATA', 'Santiago', 'Morgado', 'smorg@hotmail.com', '1148273433' UNION
SELECT 'tpistereli', '0987ab', 'Teo', 'Pistereli', 'tpisterelli@hotmail.com', '1192847453' UNION
SELECT 'mauro12', 'mauro123', 'Mauro', 'Nobler', 'mnobler@yahoo.com.ar', '1148578394' UNION
SELECT 'leonardo2', 'password1', 'Leonardo', 'Mangu', 'lmangu@hotmail.com', '1127328493' UNION
SELECT 'alf39', 'as1934d', 'Alfredo', 'Minujen', 'alfredominujen@gmail.com', '119348394' UNION
SELECT 'mmgonza', 'gjf393', 'Gonzalo', 'Montes', 'mmgonza@hotmail.com', '1193843723' UNION
SELECT 'ssm', '0148ale', 'Santiago', 'Sainz', 'ssm@hotmail.com', '1192839403' UNION
SELECT 'nicoc', 'leonardo1', 'Nicolar', 'Cernadas', 'ncernadas@yahoo.com', '1128706583' 
GO

INSERT INTO CATEGORIAS
(IDCategoria_Cat, Nombre_Cat,Descripcion_Cat, Imagen_Cat)
SELECT '1','TORRE', 'RELOJES DE TORRE URBANOS', 'https://www.publicdomainpictures.net/pictures/210000/nahled/shopping-mall-clock.jpg' UNION
SELECT '2','URBANO', 'RELOJES DE MANO PARA USO COTIDIANO', 'https://stylewatch.vtexassets.com/arquivos/ids/194608-800-auto?width=800&height=auto&aspect=true' UNION
SELECT '3','DEPORTIVO', 'RELOJES DEPORTIVO PARA USO DIARIO', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJCS8iGcuh67TQNjjUP6YgvguZNJy-slceRm9dIWobXQo6U8l_N_eYfBZrnAhYTV_I-dM&usqp=CAU' UNION
SELECT '4','LUJO', 'RELOJES ELEGANTES DE USO ESPECIAL', 'https://http2.mlstatic.com/D_NQ_NP_902044-MLA28161477248_092018-O.jpg'


INSERT INTO ARTICULOS
(CodArticulo_Art, IDCategoria_Art, Descripcion_Art, Stock_Art, Precio_Art, Imagen_Art)
SELECT 'A100', '3', 'Reloj deportivo color negro de uso urbano', 25, 6000, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJCS8iGcuh67TQNjjUP6YgvguZNJy-slceRm9dIWobXQo6U8l_N_eYfBZrnAhYTV_I-dM&usqp=CAU' UNION
SELECT 'A150', '3', 'Reloj deportivo color negro de uso urbano', 10, 5600, 'https://http2.mlstatic.com/D_NQ_NP_845157-MLA44363359912_122020-O.webp' UNION
SELECT 'B113', '1', 'Reloj de torre especial para establecimientos', 5, 70000, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Reloj_Torre_Palacio_Legislatura_Buenos_Aires.jpg/434px-Reloj_Torre_Palacio_Legislatura_Buenos_Aires.jpg' UNION
SELECT 'A215', '3', 'Reloj deportivo color marron de uso urbano', 15, 8000, 'https://http2.mlstatic.com/D_NQ_NP_892633-MLA42333911007_062020-O.webp' UNION
SELECT 'C240', '2', 'Reloj de mano color negro especial para uso cotidiano', 20, 11000, 'https://http2.mlstatic.com/D_NQ_NP_750316-MLA43308770807_082020-O.webp' UNION
SELECT 'B560', '1', 'Reloj de torre para centros comerciales', 3, 112000, 'https://cdn.pixabay.com/photo/2017/08/12/10/18/melbourne-2633977_960_720.jpg' UNION
SELECT 'C115', '2', 'Reloj de mano color azul especial para uso cotidiano ', 10, 5000, 'https://stylewatch.vtexassets.com/arquivos/ids/194417-1600-auto?width=1600&height=auto&aspect=true' UNION
SELECT 'A115', '3', 'Reloj deportivo color negro de uso urbano', 4, 7000, 'https://ae01.alicdn.com/kf/H73d6fa7b5c2c4903b69a81fe71ead325S/GENEVA-reloj-de-pulsera-deportivo-para-hombre-cron-grafo-de-lujo-con-calendario-color-negro.jpg_q50.jpg' UNION
SELECT 'D810', '4', 'Reloj elegante color blanco de uso especial', 8, 45000, 'https://ae01.alicdn.com/kf/H1b85d29a4bfe4ab2968911c9d2a166c6k/GENEVA-reloj-de-pulsera-deportivo-para-hombre-cron-grafo-de-lujo-con-calendario-color-negro.jpg_q50.jpg' UNION
SELECT 'D670', '4', 'Reloj elegante color negro de uso especial', 6, 60000, 'https://ae01.alicdn.com/kf/H1b85d29a4bfe4ab2968911c9d2a166c6k/GENEVA-reloj-de-pulsera-deportivo-para-hombre-cron-grafo-de-lujo-con-calendario-color-negro.jpg_q50.jpg' UNION
SELECT 'C444', '2', 'Reloj de mano color verde especial para uso cotidiano', 13, 4200, 'https://stylewatch.vtexassets.com/arquivos/ids/194608-800-auto?width=800&height=auto&aspect=true' UNION
SELECT 'A100', '3', 'Reloj deportivo color negro de uso urbano', 25, 6000, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJCS8iGcuh67TQNjjUP6YgvguZNJy-slceRm9dIWobXQo6U8l_N_eYfBZrnAhYTV_I-dM&usqp=CAU' UNION
SELECT 'B240', '1', 'Reloj de torre especial para estabecimiento', 7, 38000, 'https://thumbs.dreamstime.com/b/reloj-en-centro-comercial-69103151.jpg' UNION
SELECT 'D310', '4', 'Reloj elegante color negro de uso especial', 4, 55000, 'https://http2.mlstatic.com/D_NQ_NP_902044-MLA28161477248_092018-O.jpg' UNION
SELECT 'A665', '3', 'Reloj deportivo color negro de uso urbano', 5, 11000, 'https://ae01.alicdn.com/kf/H736d6ae2244d40a2ac8a3494167d9bba3/SHAARMS-reloj-de-pulsera-de-cuarzo-para-hombre-cron-grafo-de-malla-de-lujo-color-negro.jpg_Q90.jpg_.webp' UNION
SELECT 'B456', '1', 'Reloj de torre especial para espacios publicos', 9, 74500, 'https://www.publicdomainpictures.net/pictures/210000/nahled/shopping-mall-clock.jpg' 
GO



SELECT * FROM usuarios