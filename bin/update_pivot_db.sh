#!/bin/bash

file=$1
password=$2

cd /tmp/pivot
tar -xzf $file

echo 'drop structure'
mysql -u pivot --password=$password pivot -e "drop table trestaurants;"
mysql -u pivot --password=$password pivot -e "drop table treloffre;"
mysql -u pivot --password=$password pivot -e "drop table ttypesusagers;"
mysql -u pivot --password=$password pivot -e "drop table treloffrepoi;"
mysql -u pivot --password=$password pivot -e "drop table tpois;"
mysql -u pivot --password=$password pivot -e "drop table tcampings;"
mysql -u pivot --password=$password pivot -e "drop table thoraires;"
mysql -u pivot --password=$password pivot -e "drop table tparameters;"
mysql -u pivot --password=$password pivot -e "drop table tmices;"
mysql -u pivot --password=$password pivot -e "drop table toffrespromos;"
mysql -u pivot --password=$password pivot -e "drop table ttraductions;"
mysql -u pivot --password=$password pivot -e "drop table tchambres;"
mysql -u pivot --password=$password pivot -e "drop table thebergements;"
mysql -u pivot --password=$password pivot -e "drop table trecettes;"
mysql -u pivot --password=$password pivot -e "drop table tmoyencom;"
mysql -u pivot --password=$password pivot -e "drop table treloffrecontact;"
mysql -u pivot --password=$password pivot -e "drop table tcontacts;"
mysql -u pivot --password=$password pivot -e "drop table treloffreannexe;"
mysql -u pivot --password=$password pivot -e "drop table tannexes;"
mysql -u pivot --password=$password pivot -e "drop table tdurees;"
mysql -u pivot --password=$password pivot -e "drop table trandonnees;"
mysql -u pivot --password=$password pivot -e "drop table treloffrecritere;"
mysql -u pivot --password=$password pivot -e "drop table treltypeoffrecritere;"
mysql -u pivot --password=$password pivot -e "drop table tcriteres;"
mysql -u pivot --password=$password pivot -e "drop table tdates;"
mysql -u pivot --password=$password pivot -e "drop table tvisites;"
mysql -u pivot --password=$password pivot -e "drop table tsalles;"
mysql -u pivot --password=$password pivot -e "drop table tseminaires;"
mysql -u pivot --password=$password pivot -e "drop table tanipeds;"
mysql -u pivot --password=$password pivot -e "drop table ttarifs;"
mysql -u pivot --password=$password pivot -e "drop table treservations;"
mysql -u pivot --password=$password pivot -e "drop table toffres;"
mysql -u pivot --password=$password pivot -e "drop table ttypesoffres;"
echo 'Import structure'
mysql -u pivot --password=$password pivot < export_Trunk.sql
echo 'Import contact'
mysql -u pivot --password=$password pivot < export_Trunk_Contact.sql
echo 'Import Aniped'
mysql -u pivot --password=$password pivot < export_Aniped.sql
echo 'Import Annexe'
mysql -u pivot --password=$password pivot < export_Annexe.sql
echo 'Import Article'
mysql -u pivot --password=$password pivot < export_Article.sql
echo 'Import Artisans'
mysql -u pivot --password=$password pivot < export_Artisans.sql
echo 'Import Artistes'
mysql -u pivot --password=$password pivot < export_Artistes.sql
echo 'Import Boutiques'
mysql -u pivot --password=$password pivot < export_Boutiques.sql
echo 'Import BudgetHolidays'
mysql -u pivot --password=$password pivot < export_BudgetHolidays.sql
echo 'Import Camping'
mysql -u pivot --password=$password pivot < export_Camping.sql
echo 'Import ChambreHote'
mysql -u pivot --password=$password pivot < export_ChambreHote.sql
echo 'Import Circuit_Touristique'
mysql -u pivot --password=$password pivot < export_Circuit_Touristique.sql
echo 'Import Evenements'
mysql -u pivot --password=$password pivot < export_Evenements.sql
echo 'Import Forfait_Groupe'
mysql -u pivot --password=$password pivot < export_Forfait_Groupe.sql
echo 'Import Forfait_Individuel'
mysql -u pivot --password=$password pivot < export_Forfait_Individuel.sql
echo 'Import Gite'
mysql -u pivot --password=$password pivot < export_Gite.sql
echo 'Import Groupe_Hebergement'
mysql -u pivot --password=$password pivot < export_Groupe_Hebergement.sql
echo 'Import Guides_Touristiques'
mysql -u pivot --password=$password pivot < export_Guides_Touristiques.sql
echo 'Import Hotel'
mysql -u pivot --password=$password pivot < export_Hotel.sql
echo 'Import Itineraires'
mysql -u pivot --password=$password pivot < export_Itineraires.sql
echo 'Import Loisirs'
mysql -u pivot --password=$password pivot < export_Loisirs.sql
echo 'Import MICE'
mysql -u pivot --password=$password pivot < export_MICE.sql
echo 'Import MICE_Animation'
mysql -u pivot --password=$password pivot < export_MICE_Animation.sql
echo 'Import Meuble'
mysql -u pivot --password=$password pivot < export_Meuble.sql
echo 'Import OrgLieux'
mysql -u pivot --password=$password pivot < export_OrgLieux.sql
echo 'Import Organismes_Touristiques'
mysql -u pivot --password=$password pivot < export_Organismes_Touristiques.sql
echo 'Import Pois'
mysql -u pivot --password=$password pivot < export_Pois.sql
echo 'Import Producteurs'
mysql -u pivot --password=$password pivot < export_Producteurs.sql
echo 'Import Produits'
mysql -u pivot --password=$password pivot < export_Produits.sql
echo 'Import Recette'
mysql -u pivot --password=$password pivot < export_Recette.sql
echo 'Import Restaurants'
mysql -u pivot --password=$password pivot < export_Restaurants.sql
echo 'Import Seminaires'
mysql -u pivot --password=$password pivot < export_Seminaires.sql
echo 'Import Treltypeoffrecritere'
mysql -u pivot --password=$password pivot < export_Treltypeoffrecritere.sql
echo 'Import Ttraductions'
mysql -u pivot --password=$password pivot < export_Ttraductions.sql
echo 'Import Village'
mysql -u pivot --password=$password pivot < export_Village.sql
