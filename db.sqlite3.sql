BEGIN TRANSACTION;
DROP TABLE IF EXISTS "django_migrations";
CREATE TABLE IF NOT EXISTS "django_migrations" (
	"id"	integer NOT NULL,
	"app"	varchar(255) NOT NULL,
	"name"	varchar(255) NOT NULL,
	"applied"	datetime NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "auth_group_permissions";
CREATE TABLE IF NOT EXISTS "auth_group_permissions" (
	"id"	integer NOT NULL,
	"group_id"	integer NOT NULL,
	"permission_id"	integer NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("permission_id") REFERENCES "auth_permission"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("group_id") REFERENCES "auth_group"("id") DEFERRABLE INITIALLY DEFERRED
);
DROP TABLE IF EXISTS "auth_user_groups";
CREATE TABLE IF NOT EXISTS "auth_user_groups" (
	"id"	integer NOT NULL,
	"user_id"	integer NOT NULL,
	"group_id"	integer NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("group_id") REFERENCES "auth_group"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED
);
DROP TABLE IF EXISTS "auth_user_user_permissions";
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" (
	"id"	integer NOT NULL,
	"user_id"	integer NOT NULL,
	"permission_id"	integer NOT NULL,
	FOREIGN KEY("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("permission_id") REFERENCES "auth_permission"("id") DEFERRABLE INITIALLY DEFERRED,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "django_admin_log";
CREATE TABLE IF NOT EXISTS "django_admin_log" (
	"id"	integer NOT NULL,
	"action_time"	datetime NOT NULL,
	"object_id"	text,
	"object_repr"	varchar(200) NOT NULL,
	"change_message"	text NOT NULL,
	"content_type_id"	integer,
	"user_id"	integer NOT NULL,
	"action_flag"	smallint unsigned NOT NULL CHECK("action_flag" >= 0),
	FOREIGN KEY("content_type_id") REFERENCES "django_content_type"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "django_content_type";
CREATE TABLE IF NOT EXISTS "django_content_type" (
	"id"	integer NOT NULL,
	"app_label"	varchar(100) NOT NULL,
	"model"	varchar(100) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "auth_permission";
CREATE TABLE IF NOT EXISTS "auth_permission" (
	"id"	integer NOT NULL,
	"content_type_id"	integer NOT NULL,
	"codename"	varchar(100) NOT NULL,
	"name"	varchar(255) NOT NULL,
	FOREIGN KEY("content_type_id") REFERENCES "django_content_type"("id") DEFERRABLE INITIALLY DEFERRED,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "auth_group";
CREATE TABLE IF NOT EXISTS "auth_group" (
	"id"	integer NOT NULL,
	"name"	varchar(150) NOT NULL UNIQUE,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "auth_user";
CREATE TABLE IF NOT EXISTS "auth_user" (
	"id"	integer NOT NULL,
	"password"	varchar(128) NOT NULL,
	"last_login"	datetime,
	"is_superuser"	bool NOT NULL,
	"username"	varchar(150) NOT NULL UNIQUE,
	"last_name"	varchar(150) NOT NULL,
	"email"	varchar(254) NOT NULL,
	"is_staff"	bool NOT NULL,
	"is_active"	bool NOT NULL,
	"date_joined"	datetime NOT NULL,
	"first_name"	varchar(150) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "django_session";
CREATE TABLE IF NOT EXISTS "django_session" (
	"session_key"	varchar(40) NOT NULL,
	"session_data"	text NOT NULL,
	"expire_date"	datetime NOT NULL,
	PRIMARY KEY("session_key")
);
DROP TABLE IF EXISTS "service_category";
CREATE TABLE IF NOT EXISTS "service_category" (
	"id"	integer NOT NULL,
	"code"	varchar(150) NOT NULL UNIQUE,
	"name"	varchar(150) NOT NULL,
	"description"	varchar(500) NOT NULL,
	"info"	text NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "service_service";
CREATE TABLE IF NOT EXISTS "service_service" (
	"id"	integer NOT NULL,
	"name"	varchar(100) NOT NULL,
	"description"	varchar(500) NOT NULL,
	"icon"	varchar(50) NOT NULL,
	"info"	text NOT NULL,
	"category_id"	bigint NOT NULL,
	"illustration"	varchar(50) NOT NULL,
	"code"	varchar(50) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("category_id") REFERENCES "service_category"("id") DEFERRABLE INITIALLY DEFERRED
);
DROP TABLE IF EXISTS "work_work";
CREATE TABLE IF NOT EXISTS "work_work" (
	"id"	integer NOT NULL,
	"client"	varchar(50) NOT NULL,
	"name"	varchar(150) NOT NULL,
	"banner"	varchar(100) NOT NULL,
	"duration"	varchar(100) NOT NULL,
	"slug"	varchar(200) NOT NULL UNIQUE,
	"challenge"	text NOT NULL,
	"solution"	text NOT NULL,
	"website"	varchar(150) NOT NULL,
	"service_id"	bigint NOT NULL,
	"preview"	varchar(100) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("service_id") REFERENCES "service_service"("id") DEFERRABLE INITIALLY DEFERRED
);
INSERT INTO "django_migrations" ("id","app","name","applied") VALUES (1,'contenttypes','0001_initial','2024-08-13 09:55:57.350760'),
 (2,'auth','0001_initial','2024-08-13 09:55:57.397666'),
 (3,'admin','0001_initial','2024-08-13 09:55:57.416399'),
 (4,'admin','0002_logentry_remove_auto_add','2024-08-13 09:55:57.437191'),
 (5,'admin','0003_logentry_add_action_flag_choices','2024-08-13 09:55:57.455057'),
 (6,'contenttypes','0002_remove_content_type_name','2024-08-13 09:55:57.491255'),
 (7,'auth','0002_alter_permission_name_max_length','2024-08-13 09:55:57.507793'),
 (8,'auth','0003_alter_user_email_max_length','2024-08-13 09:55:57.528758'),
 (9,'auth','0004_alter_user_username_opts','2024-08-13 09:55:57.545192'),
 (10,'auth','0005_alter_user_last_login_null','2024-08-13 09:55:57.559672'),
 (11,'auth','0006_require_contenttypes_0002','2024-08-13 09:55:57.565459'),
 (12,'auth','0007_alter_validators_add_error_messages','2024-08-13 09:55:57.578465'),
 (13,'auth','0008_alter_user_username_max_length','2024-08-13 09:55:57.594297'),
 (14,'auth','0009_alter_user_last_name_max_length','2024-08-13 09:55:57.610801'),
 (15,'auth','0010_alter_group_name_max_length','2024-08-13 09:55:57.626986'),
 (16,'auth','0011_update_proxy_permissions','2024-08-13 09:55:57.640369'),
 (17,'auth','0012_alter_user_first_name_max_length','2024-08-13 09:55:57.667102'),
 (18,'service','0001_initial','2024-08-13 09:55:57.683779'),
 (19,'service','0002_populate_initial_data','2024-08-13 09:59:37.617928'),
 (20,'sessions','0001_initial','2024-08-13 09:59:37.635337'),
 (21,'service','0003_rename_servicecategory_category','2024-08-13 10:04:25.527808'),
 (22,'service','0004_service_illustration','2024-08-15 20:54:16.383053'),
 (23,'service','0005_auto_20240815_2140','2024-08-15 21:40:22.831123'),
 (24,'service','0006_service_code','2024-08-16 00:05:40.772112'),
 (25,'work','0001_initial','2024-08-16 12:03:46.224670'),
 (26,'work','0002_work_preview','2024-08-16 16:33:50.484111');
INSERT INTO "django_admin_log" ("id","action_time","object_id","object_repr","change_message","content_type_id","user_id","action_flag") VALUES (1,'2024-08-13 22:17:05.514579','1','Service object (1)','[{"added": {}}]',8,1,1),
 (2,'2024-08-13 22:19:06.719650','1','Service object (1)','[]',8,1,2),
 (3,'2024-08-15 21:55:11.466500','1','Développement de Site Web','[{"changed": {"fields": ["Name", "Description", "Icon", "Info"]}}]',8,1,2),
 (4,'2024-08-15 21:55:39.762607','1','Développement de Site Web','[{"changed": {"fields": ["Info"]}}]',8,1,2),
 (5,'2024-08-15 22:01:29.870403','1','Développement de Site Web','[{"changed": {"fields": ["Icon"]}}]',8,1,2),
 (6,'2024-08-15 22:11:50.938838','1','Développement de Site Web','[{"changed": {"fields": ["Illustration"]}}]',8,1,2),
 (7,'2024-08-15 22:12:29.334575','1','Développement de Site Web','[{"changed": {"fields": ["Info"]}}]',8,1,2),
 (8,'2024-08-15 23:30:27.900578','1','Développement Web','[{"changed": {"fields": ["Name", "Description", "Info"]}}]',8,1,2),
 (9,'2024-08-15 23:31:05.823078','1','Développement Web','[{"changed": {"fields": ["Info"]}}]',8,1,2),
 (10,'2024-08-15 23:32:27.036573','1','Développement Web','[{"changed": {"fields": ["Info"]}}]',8,1,2),
 (11,'2024-08-15 23:41:32.726868','1','Développement Web','[{"changed": {"fields": ["Info"]}}]',8,1,2),
 (12,'2024-08-15 23:50:41.633313','2','Développement  Mobile','[{"added": {}}]',8,1,1),
 (13,'2024-08-16 00:06:12.602933','2','Développement  Mobile','[{"changed": {"fields": ["Code"]}}]',8,1,2),
 (14,'2024-08-16 00:06:19.384906','1','Développement Web','[{"changed": {"fields": ["Code"]}}]',8,1,2),
 (15,'2024-08-16 00:25:20.608672','1','Développement Web','[{"changed": {"fields": ["Info"]}}]',8,1,2),
 (16,'2024-08-16 00:35:14.408981','3','Développement de Solutions sur Mesure','[{"added": {}}]',8,1,1),
 (17,'2024-08-16 00:38:00.033334','3','Développement de Solutions sur Mesure','[{"changed": {"fields": ["Info"]}}]',8,1,2),
 (18,'2024-08-16 00:39:34.281882','3','Développement de Solutions sur Mesure','[]',8,1,2),
 (19,'2024-08-16 00:43:37.123375','4','Maintenance et Support Technique','[{"added": {}}]',8,1,1),
 (20,'2024-08-16 00:58:15.638089','5','Design d''Interfaces Utilisateur (UI)','[{"added": {}}]',8,1,1),
 (21,'2024-08-16 00:59:00.009829','5','Design d''Interfaces Utilisateur (UI)','[{"changed": {"fields": ["Icon"]}}]',8,1,2),
 (22,'2024-08-16 01:23:47.636537','6','Expérience Utilisateur (UX)','[{"added": {}}]',8,1,1),
 (23,'2024-08-16 01:25:28.948388','6','Expérience Utilisateur (UX)','[{"changed": {"fields": ["Info"]}}]',8,1,2),
 (24,'2024-08-16 01:26:26.225014','5','Design d''Interfaces Utilisateur (UI)','[{"changed": {"fields": ["Info"]}}]',8,1,2),
 (25,'2024-08-16 01:30:16.184232','7','Identité Visuelle et Branding','[{"added": {}}]',8,1,1),
 (26,'2024-08-16 01:30:25.403188','7','Identité Visuelle et Branding','[{"changed": {"fields": ["Info"]}}]',8,1,2),
 (27,'2024-08-16 01:33:35.018119','7','Identité Visuelle et Branding','[]',8,1,2),
 (28,'2024-08-16 01:38:40.040441','8','Rédaction de Contenus','[{"added": {}}]',8,1,1),
 (29,'2024-08-16 01:46:36.393839','9','Création de Vidéos','[{"added": {}}]',8,1,1),
 (30,'2024-08-16 01:48:20.198185','9','Création de Vidéos','[]',8,1,2),
 (31,'2024-08-16 01:56:14.638816','10','Gestion de Contenu et Réseaux Sociaux','[{"added": {}}]',8,1,1),
 (32,'2024-08-16 01:56:49.210137','10','Gestion de Contenu et Réseaux Sociaux','[{"changed": {"fields": ["Info"]}}]',8,1,2),
 (33,'2024-08-16 01:57:35.650299','10','Gestion de Contenu et Réseaux Sociaux','[]',8,1,2),
 (34,'2024-08-16 01:57:38.671625','10','Gestion de Contenu et Réseaux Sociaux','[]',8,1,2),
 (35,'2024-08-16 02:01:48.647418','11','Photographie et Retouche','[{"added": {}}]',8,1,1),
 (36,'2024-08-16 05:12:45.658118','11','Photographie et Retouche','[]',8,1,2),
 (37,'2024-08-16 13:12:32.937199','1','Centre Culturel AKANGA - Africatown Omotunde Mural','[{"added": {}}]',9,1,1),
 (38,'2024-08-16 13:16:47.324415','1','Centre Culturel AKANGA - Africatown  Mural','[{"changed": {"fields": ["Name", "Website"]}}]',9,1,2),
 (39,'2024-08-16 16:53:57.645172','2','Seeda Optimum - USTAARABU','[{"added": {}}]',9,1,1),
 (40,'2024-08-16 16:59:05.251235','1','Centre Culturel AKANGA - Africatown  Mural','[{"changed": {"fields": ["Preview"]}}]',9,1,2),
 (41,'2024-08-16 18:35:26.481553','2','Design Graphique','[{"changed": {"fields": ["Name", "Description", "Info"]}}]',7,1,2),
 (42,'2024-08-16 18:35:37.822094','1','Développement Logiciel','[{"changed": {"fields": ["Name", "Info"]}}]',7,1,2),
 (43,'2024-08-16 21:21:45.442267','1','Centre Culturel AKANGA - Africatown  Mural','[{"changed": {"fields": ["Banner"]}}]',9,1,2),
 (44,'2024-08-16 21:22:11.346555','2','Seeda Optimum - USTAARABU','[{"changed": {"fields": ["Banner"]}}]',9,1,2),
 (45,'2024-08-17 08:35:51.278773','1','Centre AKANGA - Africatown  Mural','[{"changed": {"fields": ["Client"]}}]',9,1,2),
 (46,'2024-08-17 09:21:20.781145','1','Centre AKANGA - Africatown  Mural','[{"changed": {"fields": ["Challenge", "Solution"]}}]',9,1,2),
 (47,'2024-08-17 09:28:51.938662','1','Centre AKANGA - Africatown  Mural','[{"changed": {"fields": ["Challenge", "Solution"]}}]',9,1,2),
 (48,'2024-08-17 10:04:15.172967','2','Seeda Optimum - USTAARABU','[{"changed": {"fields": ["Challenge", "Solution"]}}]',9,1,2),
 (49,'2024-08-17 22:52:11.343060','3','ConsFood - Affiche Promotion St Valentin','[{"added": {}}]',9,1,1),
 (50,'2024-08-17 22:59:16.659930','3','ConsFood - Affiche Promotion St Valentin','[{"changed": {"fields": ["Preview"]}}]',9,1,2),
 (51,'2024-08-17 22:59:30.309552','3','ConsFood - Affiche Promotion St Valentin','[{"changed": {"fields": ["Preview"]}}]',9,1,2),
 (52,'2024-08-18 23:53:28.883061','3','ConsFood - Affiche Promotion St Valentin','[{"changed": {"fields": ["Challenge", "Solution"]}}]',9,1,2),
 (53,'2024-08-19 00:03:14.099060','3','ConsFood - Affiche Promotion St Valentin','[{"changed": {"fields": ["Solution"]}}]',9,1,2);
INSERT INTO "django_content_type" ("id","app_label","model") VALUES (1,'admin','logentry'),
 (2,'auth','permission'),
 (3,'auth','group'),
 (4,'auth','user'),
 (5,'contenttypes','contenttype'),
 (6,'sessions','session'),
 (7,'service','category'),
 (8,'service','service'),
 (9,'work','work');
INSERT INTO "auth_permission" ("id","content_type_id","codename","name") VALUES (1,1,'add_logentry','Can add log entry'),
 (2,1,'change_logentry','Can change log entry'),
 (3,1,'delete_logentry','Can delete log entry'),
 (4,1,'view_logentry','Can view log entry'),
 (5,2,'add_permission','Can add permission'),
 (6,2,'change_permission','Can change permission'),
 (7,2,'delete_permission','Can delete permission'),
 (8,2,'view_permission','Can view permission'),
 (9,3,'add_group','Can add group'),
 (10,3,'change_group','Can change group'),
 (11,3,'delete_group','Can delete group'),
 (12,3,'view_group','Can view group'),
 (13,4,'add_user','Can add user'),
 (14,4,'change_user','Can change user'),
 (15,4,'delete_user','Can delete user'),
 (16,4,'view_user','Can view user'),
 (17,5,'add_contenttype','Can add content type'),
 (18,5,'change_contenttype','Can change content type'),
 (19,5,'delete_contenttype','Can delete content type'),
 (20,5,'view_contenttype','Can view content type'),
 (21,6,'add_session','Can add session'),
 (22,6,'change_session','Can change session'),
 (23,6,'delete_session','Can delete session'),
 (24,6,'view_session','Can view session'),
 (25,7,'add_servicecategory','Can add service category'),
 (26,7,'change_servicecategory','Can change service category'),
 (27,7,'delete_servicecategory','Can delete service category'),
 (28,7,'view_servicecategory','Can view service category'),
 (29,8,'add_service','Can add service'),
 (30,8,'change_service','Can change service'),
 (31,8,'delete_service','Can delete service'),
 (32,8,'view_service','Can view service'),
 (33,7,'add_category','Can add category'),
 (34,7,'change_category','Can change category'),
 (35,7,'delete_category','Can delete category'),
 (36,7,'view_category','Can view category'),
 (37,9,'add_work','Can add work'),
 (38,9,'change_work','Can change work'),
 (39,9,'delete_work','Can delete work'),
 (40,9,'view_work','Can view work');
INSERT INTO "auth_user" ("id","password","last_login","is_superuser","username","last_name","email","is_staff","is_active","date_joined","first_name") VALUES (1,'pbkdf2_sha256$260000$9BRWfJPaSwCehy949mVYRC$VqVhOUJYm8hWSnWJ/EgxPFJAbwkUTO4q206iy5/D9sY=','2024-08-15 00:24:18.739472',1,'abiodoun','','contact@abiodoun.dev',1,1,'2024-08-13 22:12:29.785215','');
INSERT INTO "django_session" ("session_key","session_data","expire_date") VALUES ('41614j2gz7h4n4yaxi1ax3ps2gygwaqt','.eJxVjMsOwiAQRf-FtSFSKA-X7v0GMswMUjWQlHZl_HfbpAvdnnPufYsI61Li2nmOE4mLUOL0yxLgk-su6AH13iS2usxTknsiD9vlrRG_rkf7d1Cgl209jqMymTOh0dqRAxsgcdZq2Cj7xGc0NviA4IzFwelgMyafsyJPXjvx-QL6ZDiI:1sdzmN:8ESIM_dZ345JKw435I1PvEBlTjMQdL070eAgzKxGR2E','2024-08-27 22:14:11.368587'),
 ('uszn5wmrvlfd1hpqgj3a2cderyzradbn','.eJxVjMsOwiAQRf-FtSFSKA-X7v0GMswMUjWQlHZl_HfbpAvdnnPufYsI61Li2nmOE4mLUOL0yxLgk-su6AH13iS2usxTknsiD9vlrRG_rkf7d1Cgl209jqMymTOh0dqRAxsgcdZq2Cj7xGc0NviA4IzFwelgMyafsyJPXjvx-QL6ZDiI:1seOHq:hHpoCncdBYwaEOUhu5hQ0VVlE4v9UxgPpFdFIXQoCi8','2024-08-29 00:24:18.747861');
INSERT INTO "service_category" ("id","code","name","description","info") VALUES (1,'software_dev','Développement Logiciel','Des sites web et applications réactifs, performants, sécurisées et adaptés à vos besoins.','<p>Le p&ocirc;le de D&eacute;veloppement logiciel chez Rezolusoft est d&eacute;di&eacute; &agrave; la cr&eacute;ation de solutions num&eacute;riques sur mesure pour r&eacute;pondre &agrave; vos besoins sp&eacute;cifiques. Notre &eacute;quipe d''experts en d&eacute;veloppement travaille avec les technologies les plus r&eacute;centes pour concevoir des logiciels robustes, &eacute;volutifs et adapt&eacute;s &agrave; vos exigences. Que ce soit pour des applications mobiles, des plateformes web, ou des logiciels d''entreprise, nous transformons vos id&eacute;es en produits performants.</p>'),
 (2,'design_ux','Design Graphique','L''identité visuelle qui correspond à votre marque ou                        produit.','<p>Le p&ocirc;le Design graphique et UX de Rezolusoft se consacre &agrave; cr&eacute;er des exp&eacute;riences visuelles et interactives qui captivent les utilisateurs tout en renfor&ccedil;ant l&rsquo;identit&eacute; de marque de nos clients. Nous croyons que le design est plus qu''une simple esth&eacute;tique : il s''agit d''une exp&eacute;rience globale qui combine l''attrait visuel, l''ergonomie et la facilit&eacute; d''utilisation. Notre &eacute;quipe de designers talentueux travaille pour transformer vos id&eacute;es en cr&eacute;ations visuelles percutantes et intuitives.</p>'),
 (3,'content','Création de Contenu','Engager votre audience avec des contenus pertinents et
                        de qualité.','Le pôle Création de contenu de Rezolusoft se spécialise dans la production de contenus captivants et pertinents qui résonnent avec votre audience cible. Que ce soit pour le web, les réseaux sociaux, ou des campagnes marketing, notre équipe de créateurs talentueux élabore des textes, des vidéos, et des visuels qui racontent votre histoire de manière authentique et engageante. Nous transformons vos idées en contenus percutants qui renforcent votre présence en ligne et soutiennent vos objectifs commerciaux.');
INSERT INTO "service_service" ("id","name","description","icon","info","category_id","illustration","code") VALUES (1,'Développement Web','Développement Web','fa-light fa-laptop-code','<p>Rezolusoft cr&eacute;e des sites et applications<strong> </strong>web sur mesure, robustes et &eacute;volutives, adapt&eacute;es aux besoins sp&eacute;cifiques de chaque entreprise, en utilisant les technologies les plus r&eacute;centes.</p>
<ul>
<li>D&eacute;veloppement de sites vitrines</li>
<li>D&eacute;veloppement Front-end</li>
<li>D&eacute;veloppement Back-end</li>
<li>Int&eacute;gration d''API et de microservices</li>
<li>Optimisation des performances web</li>
<li>Tests et d&eacute;ploiement continu</li>
</ul>',1,'1.svg','web'),
 (2,'Développement  Mobile','Développement  Mobile','fa-light fa-mobile','<p>Conception et d&eacute;veloppement d''applications mobiles natives ou hybrides, offrant une exp&eacute;rience utilisateur fluide sur toutes les plateformes mobiles.</p>
<ul>
<li>D&eacute;veloppement iOS</li>
<li>D&eacute;veloppement Android</li>
<li>D&eacute;veloppement multi-plateforme</li>
<li>Int&eacute;gration avec des services cloud</li>
<li>Maintenance et mise &agrave; jour d''applications</li>
</ul>',1,'2.svg','mobile'),
 (3,'Développement de Solutions sur Mesure','Développement de Solutions sur Mesure','fa-light fa-rocket-launch','<p>R&eacute;alisation de solutions logicielles personnalis&eacute;es pour r&eacute;pondre aux besoins sp&eacute;cifiques des entreprises, garantissant une parfaite ad&eacute;quation avec leurs processus m&eacute;tier.</p>
<ul>
<li>Analyse des besoins et conseils</li>
<li>Conception de logiciels m&eacute;tiers</li>
<li>Automatisation des processus internes</li>
<li>Int&eacute;gration avec des syst&egrave;mes existants</li>
<li>Support technique et &eacute;volutivit&eacute;</li>
</ul>',1,'3.svg','on-demand'),
 (4,'Maintenance et Support Technique','Maintenance et Support Technique','fa-light fa-screwdriver-wrench','<p>Services de maintenance et de support pour assurer la continuit&eacute; des op&eacute;rations, la s&eacute;curit&eacute; des donn&eacute;es et la performance des applications d&eacute;ploy&eacute;es.</p>
<ul>
<li>Surveillance et gestion des incidents</li>
<li>Mises &agrave; jour de s&eacute;curit&eacute; et correctifs</li>
<li>Optimisation des performances</li>
<li>Support utilisateur et formation</li>
<li>Gestion des sauvegardes et des restaurations</li>
</ul>',1,'4.svg','support'),
 (5,'Design d''Interfaces Utilisateur (UI)','Design d''Interfaces Utilisateur (UI)','fa-light fa-pen-fancy','<p>Cr&eacute;ation d''interfaces utilisateur attrayantes et intuitives, con&ccedil;ues pour offrir une exp&eacute;rience visuelle agr&eacute;able et une navigation fluide.</p>
<ul>
<li>Cr&eacute;ation de maquettes et prototypes</li>
<li>Design responsive et mobile-first</li>
<li>Conception de syst&egrave;mes de design</li>
<li>Am&eacute;lioration et refonte d''interfaces existantes</li>
<li>Testing utilisateur et ajustements UX/UI</li>
</ul>',2,'5.svg','ui'),
 (6,'Expérience Utilisateur (UX)','Expérience Utilisateur (UX)','fa-solid fa-user','<p>Optimisation de l''exp&eacute;rience utilisateur pour maximiser l''engagement, la satisfaction et la fid&eacute;lisation des utilisateurs &agrave; travers une compr&eacute;hension approfondie de leurs besoins et comportements.</p>
<ul>
<li>Recherche utilisateur (interviews, sondages)</li>
<li>Cr&eacute;ation de parcours utilisateur et personas</li>
<li>Wireframing et sc&eacute;narios d''utilisation</li>
<li>Tests d''utilisabilit&eacute; et A/B testing</li>
<li>Am&eacute;lioration continue de l''UX</li>
</ul>',2,'6.svg','ux'),
 (7,'Identité Visuelle et Branding','Identité Visuelle et Branding','fa-light fa-palette','<p>D&eacute;veloppement d''une identit&eacute; visuelle coh&eacute;rente et forte, align&eacute;e avec les valeurs et les objectifs de l''entreprise, pour se d&eacute;marquer sur le march&eacute;.</p>
<ul>
<li>Cr&eacute;ation de logos et chartes graphiques</li>
<li>Conception de supports de communication</li>
<li>D&eacute;veloppement de guidelines de marque</li>
<li>Refonte et modernisation d''identit&eacute; visuelle</li>
<li>Design de packaging et signal&eacute;tique</li>
</ul>',2,'7.svg','branding'),
 (8,'Rédaction de Contenus','Rédaction de Contenus','fa-thin fa-typewriter','<p>Production de contenus &eacute;crits engageants et optimis&eacute;s pour le web, destin&eacute;s &agrave; informer, s&eacute;duire et convertir les lecteurs.</p>
<ul>
<li>R&eacute;daction d''articles de blog</li>
<li>Copywriting pour pages web et landing pages</li>
<li>Cr&eacute;ation de newsletters et email marketing</li>
<li>Contenus optimis&eacute;s SEO</li>
<li>R&eacute;daction de livres blancs et guides</li>
</ul>',3,'8.svg','redc'),
 (9,'Création de Vidéos','Création de Vidéos','fa-thin fa-camera-movie','<p>R&eacute;alisation de vid&eacute;os de qualit&eacute; professionnelle pour captiver l''audience, renforcer la pr&eacute;sence en ligne et transmettre des messages cl&eacute;s.</p>
<ul>
<li>Vid&eacute;os promotionnelles et publicitaires</li>
<li>Vid&eacute;os explicatives et tutorielles</li>
<li>Interviews et t&eacute;moignages clients</li>
<li>Montage et post-production</li>
</ul>',3,'9.svg','video'),
 (10,'Gestion de Contenu et Réseaux Sociaux','Gestion de Contenu et Réseaux Sociaux','fa-thin fa-megaphone','<p>Gestion compl&egrave;te des contenus num&eacute;riques et des r&eacute;seaux sociaux, de la planification &agrave; la publication, en passant par l''analyse des performances.</p>
<ul>
<li>Strat&eacute;gie de contenu et calendrier &eacute;ditorial</li>
<li>Gestion des comptes r&eacute;seaux sociaux</li>
<li>Cr&eacute;ation de visuels et vid&eacute;os pour les r&eacute;seaux</li>
<li>Campagnes publicitaires sur les r&eacute;seaux</li>
<li>Analyse et reporting des performances</li>
</ul>
<h4>&nbsp;</h4>',3,'10.svg','social'),
 (11,'Photographie et Retouche','Photographie et Retouche','fa-sharp fa-light fa-aperture','<p>Captation et retouche d''images pour des projets divers, allant de la photographie produit &agrave; la photographie &eacute;v&eacute;nementielle, en passant par la retouche professionnelle.</p>
<ul>
<li>Photographie produit et e-commerce</li>
<li>Photographie corporate et portraits professionnels</li>
<li>Retouche d''images et optimisation pour le web</li>
<li>Photographie &eacute;v&eacute;nementielle</li>
<li>Cr&eacute;ation de banques d''images sur mesure</li>
</ul>',3,'11.svg','photo');
INSERT INTO "work_work" ("id","client","name","banner","duration","slug","challenge","solution","website","service_id","preview") VALUES (1,'Centre AKANGA','Africatown  Mural','media/services/banner/banner2_wxtvb4','3 semaines','africatown-Omotunde-Mural','<p>Lors de la conception du site&nbsp; <strong>Africatown Omotunde Mural</strong>&nbsp;pour <strong>Jeki Esso</strong>, Directrice du <strong>Centre de Culture Akanga</strong> nous avons &eacute;t&eacute; confront&eacute;s &agrave; plusieurs d&eacute;fis majeurs, notamment&nbsp;<strong>la n&eacute;cessit&eacute; de restituer de fa&ccedil;on int&eacute;grale la vision de l''artiste</strong>. Il &eacute;tait &eacute;galement essentiel de&nbsp;<strong>mettre en valeur les diff&eacute;rents aspect de la fresque murale et les messages transmis par chaque symbole du mur </strong>. Ces d&eacute;fis ont n&eacute;cessit&eacute; une r&eacute;flexion approfondie et une approche innovante pour garantir que chaque aspect du projet r&eacute;ponde aux attentes &eacute;lev&eacute;es du client.</p>','<p>Nous avons mise en place <strong>une ossature simple avec un design responsive afin que le site s''adapte sur tous les &eacute;crans.</strong> De plus, nous avons&nbsp;<strong>d&eacute;velopp&eacute; une gallerie moderne pour mettre en valeur les diff&eacute;rents aspects et symboles du&nbsp; mur</strong>. Gr&acirc;ce &agrave; ces approches, nous avons non seulement r&eacute;pondu aux besoins imm&eacute;diats, mais aussi positionn&eacute;&nbsp;<strong>avec notre strategie SEO</strong> <strong>l''&oelig;uvre de Jeki</strong> pour une meilleure visibilit&eacute; en ligne.</p>','africatownmural.com',1,'media/services/preview/case-1_qhvxl3'),
 (2,'Seeda Optimum','USTAARABU','media/services/banner/banner1_ycxokr','En cours','ustaarabu','<p>Le d&eacute;veloppement du site pour le Centre Mondial de Recherches et de Pratiques sur les Humanit&eacute;s Classiques Africaines (USTAARABU) a pr&eacute;sent&eacute; des d&eacute;fis complexes. Il s''agissait d''int&eacute;grer des fonctionnalit&eacute;s vari&eacute;es telles qu''une banque d''images africaines, des espaces communautaires, la plateformes de discussion "Rencontre des Fanonvi", et le services &eacute;ducatif "Classes Ustaarabu". La gestion de ces multiples fonctionnalit&eacute;s tout en garantissant une exp&eacute;rience utilisateur coh&eacute;rente et performante a &eacute;t&eacute; un d&eacute;fi majeur.</p>','<p>Pour r&eacute;pondre &agrave; ces d&eacute;fis, nous avons con&ccedil;u une architecture modulaire qui permet une gestion efficace des ressources num&eacute;riques et des interactions communautaires. La banque d''images a &eacute;t&eacute; optimis&eacute;e pour un acc&egrave;s rapide et s&eacute;curis&eacute;, tandis que des outils de discussion et de rencontre ont &eacute;t&eacute; int&eacute;gr&eacute;s avec des fonctionnalit&eacute;s de mod&eacute;ration pour maintenir un environnement s&ucirc;r et accueillant. Les services &eacute;ducatifs et le chemin initiatique ont &eacute;t&eacute; d&eacute;velopp&eacute;s pour offrir une navigation intuitive et une interaction immersive, renfor&ccedil;ant ainsi l''engagement des utilisateurs.</p>','ustaarabu.org',1,'media/services/preview/case-2_rfetnk'),
 (3,'ConsFood','Affiche Promotion St Valentin','media/services/banner/banner3_b7dyj6','2 Jours','affiche-promotion-st-valentin','<p>le principal d&eacute;fi &eacute;tait de capturer l''essence romantique de cette f&ecirc;te tout en refl&eacute;tant l''identit&eacute; du restaurant. Il fallait aussi trouver un &eacute;quilibre entre l''esth&eacute;tique visuelle et la transmission claire des informations cl&eacute;s..</p>','<p>Nous avons opt&eacute; pour un design &eacute;l&eacute;gant et chaleureux, utilisant des couleurs douces et des &eacute;l&eacute;ments graphiques subtils pour &eacute;voquer l''amour et l''&eacute;l&eacute;gance. Les informations sur les menus sp&eacute;ciaux et les offres ont &eacute;t&eacute; mises en valeur avec une typographie attrayante, tout en garantissant que le message principal reste clair et accrocheur.</p>','',7,'media/services/preview/case-3_j8wac4');
DROP INDEX IF EXISTS "auth_group_permissions_group_id_permission_id_0cd325b0_uniq";
CREATE UNIQUE INDEX IF NOT EXISTS "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" (
	"group_id",
	"permission_id"
);
DROP INDEX IF EXISTS "auth_group_permissions_group_id_b120cbf9";
CREATE INDEX IF NOT EXISTS "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" (
	"group_id"
);
DROP INDEX IF EXISTS "auth_group_permissions_permission_id_84c5c92e";
CREATE INDEX IF NOT EXISTS "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" (
	"permission_id"
);
DROP INDEX IF EXISTS "auth_user_groups_user_id_group_id_94350c0c_uniq";
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" (
	"user_id",
	"group_id"
);
DROP INDEX IF EXISTS "auth_user_groups_user_id_6a12ed8b";
CREATE INDEX IF NOT EXISTS "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" (
	"user_id"
);
DROP INDEX IF EXISTS "auth_user_groups_group_id_97559544";
CREATE INDEX IF NOT EXISTS "auth_user_groups_group_id_97559544" ON "auth_user_groups" (
	"group_id"
);
DROP INDEX IF EXISTS "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq";
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" (
	"user_id",
	"permission_id"
);
DROP INDEX IF EXISTS "auth_user_user_permissions_user_id_a95ead1b";
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" (
	"user_id"
);
DROP INDEX IF EXISTS "auth_user_user_permissions_permission_id_1fbb5f2c";
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" (
	"permission_id"
);
DROP INDEX IF EXISTS "django_admin_log_content_type_id_c4bce8eb";
CREATE INDEX IF NOT EXISTS "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" (
	"content_type_id"
);
DROP INDEX IF EXISTS "django_admin_log_user_id_c564eba6";
CREATE INDEX IF NOT EXISTS "django_admin_log_user_id_c564eba6" ON "django_admin_log" (
	"user_id"
);
DROP INDEX IF EXISTS "django_content_type_app_label_model_76bd3d3b_uniq";
CREATE UNIQUE INDEX IF NOT EXISTS "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" (
	"app_label",
	"model"
);
DROP INDEX IF EXISTS "auth_permission_content_type_id_codename_01ab375a_uniq";
CREATE UNIQUE INDEX IF NOT EXISTS "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" (
	"content_type_id",
	"codename"
);
DROP INDEX IF EXISTS "auth_permission_content_type_id_2f476e4b";
CREATE INDEX IF NOT EXISTS "auth_permission_content_type_id_2f476e4b" ON "auth_permission" (
	"content_type_id"
);
DROP INDEX IF EXISTS "django_session_expire_date_a5c62663";
CREATE INDEX IF NOT EXISTS "django_session_expire_date_a5c62663" ON "django_session" (
	"expire_date"
);
DROP INDEX IF EXISTS "service_service_category_id_1cbf2f9f";
CREATE INDEX IF NOT EXISTS "service_service_category_id_1cbf2f9f" ON "service_service" (
	"category_id"
);
DROP INDEX IF EXISTS "service_service_code_88d241f1";
CREATE INDEX IF NOT EXISTS "service_service_code_88d241f1" ON "service_service" (
	"code"
);
DROP INDEX IF EXISTS "work_work_service_id_8a08631a";
CREATE INDEX IF NOT EXISTS "work_work_service_id_8a08631a" ON "work_work" (
	"service_id"
);
COMMIT;
