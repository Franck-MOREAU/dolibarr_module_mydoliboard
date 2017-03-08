-- ===================================================================
-- Copyright (C) 2013 Charles-Fr Benke <charles.fr@benke.fr>
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 2 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program. If not, see <http://www.gnu.org/licenses/>.
--
-- ===================================================================

create table llx_mydoliboardsheet
(
 	rowid		integer AUTO_INCREMENT PRIMARY KEY, -- cl� principale
 	fk_mdbpage	integer,							-- id de la page o� positionner le tableau
	titlesheet	varchar(20) NULL DEFAULT NULL ,		-- titre du tableau de bord
	description	varchar(50) NULL DEFAULT NULL ,		-- description du tableau de bord
	displaycell	varchar(1) NULL DEFAULT NULL ,		-- cellule ou il est positionn� (de A � D)
	cellorder	integer NULL DEFAULT NULL ,			-- ordre de pr�sentation dans la cellule (de 1 � 9)
	author		varchar(50) NULL DEFAULT NULL ,		-- auteur du tableau
	active		integer NULL DEFAULT NULL ,			-- le tableau est actif ou pas
	perms		text NULL DEFAULT NULL ,			-- droit d'acc�s associ� au tableau
	langs		text NULL DEFAULT NULL ,
	querymaj	text NULL DEFAULT NULL ,			-- requete r�alisant des consolidations avant 
	querydisp	text NULL DEFAULT NULL, 				-- requete renvoyant la ou les lignes de donn�es
	graphtype	text NULL DEFAULT NULL 				-- type de graph
	
)ENGINE=innodb;