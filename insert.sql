INSERT INTO focaccia (nom_focaccia, prix) VALUES
    ('Mozaccia', 9.80),
    ('Gorgonzollaccia', 10.80),
    ('Raclaccia', 8.90),
    ('Emmentalaccia', 9.80),
    ('Tradizione', 8.90),
    ('Hawaienne', 11.20),
    ('Américaine', 10.80),
    ('Paysanne', 12.80);

INSERT INTO ingredients (nom_ingredient) VALUES
    ('Base tomate'),
    ('Mozarella'),
    ('Cresson'),
    ('Jambon fumé'),
    ('Ail'),
    ('Artichaut'),
    ('Champignon'),
    ('Parmesan'),
    ('Poivre'),
    ('Olive noire'),
    ('Gorgonzola'),
    ('Raclette'),
    ('Emmental'),
    ('Base crème'),
    ('Oignon'),
    ('Jambon cuit'),
    ('Olive verte'),
    ('Bacon'),
    ('Ananas'),
    ('Piment'),
    ('Pomme de terre'),
    ('Chèvre'),
    ('Œuf');



INSERT INTO marque (nom_marque) VALUES
    ('Coca-cola'),
    ('Pepsico'),
    ('Monster'),
    ('Cristalline');

INSERT INTO boisson (id_boisson, nom_boisson) VALUES
    (1, 'Coca-cola zéro'),
    (2, 'Coca-cola original'),
    (3, 'Fanta citron'),
    (4, 'Fanta orange'),
    (5, 'Capri-sun'),
    (6, 'Pepsi'),
    (7, 'Pepsi Max Zéro'),
    (8, 'Lipton zéro citron'),
    (9, 'Lipton Peach'),
    (10, 'Monster energy ultra gold'),
    (11, 'Monster energy ultra blue'),
    (12, 'Eau de source');


INSERT INTO client (nom_client, age, cp_client) VALUES ('Alice', 30, 12345);
INSERT INTO menu (nom_menu, prix_menu) VALUES ('Menu Spécial', 15.50);