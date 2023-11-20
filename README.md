# PeoplePerTask
Le schéma de données fondamental pour la plateforme PeoplePerTask a été élaboré afin de répondre de manière efficace aux exigences
de mise en relation entre utilisateurs, projets, catégories, sous-catégories, freelances, offres, et témoignages. Dans cette conception,
chaque entité principale, telle que les utilisateurs, les projets, les catégories, les sous-catégories, les freelances, les offres, et les témoignages,
est représentée par une table distincte. Chacune de ces tables est dotée d'une clé primaire pour garantir l'unicité des enregistrements,
et des clés étrangères sont utilisées pour établir des liens entre les tables, permettant ainsi une gestion cohérente et intégrée des données.
Par exemple, la table des offres contient des clés étrangères pointant vers les tables des projets et des freelances, 
assurant ainsi la traçabilité des relations entre ces entités. Ce schéma offre une base solide pour la gestion des informations essentielles sur la plateforme PeoplePerTask,
favorisant une interconnexion fluide entre les différentes composantes du système.
