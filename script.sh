# debut de mon script
clear
echo " "
echo "***************************************************************************************************************************** "
echo "*********************  BIENVENU DANS LE SCRIPT DE NOUTCHOMWO et PUEFFO   ********************************************** "
echo "***************************************************************************************************************************** "
echo " "
echo " "
echo "1- installation des bureaux"
echo " "
echo "2- desinstallation des bureaux"
echo " "
echo "faites votre choix:"
read choix

# test pour vérifier le choix de l'utilisateur à vouloir soit faire une installation ou une desinstallation

if [ "$choix" = "1" ]; then
	clear
    echo "***************************************************************************************************************************** "
    echo "*********************  BIENVENUE DANS L'ASSISTANT D'INSTALLATION DES BUREAUX    ********************************************** "
    echo "***************************************************************************************************************************** "
    echo " "
    echo " "
    echo "Choisir le bureau à installer "
    echo " "
	echo "1- installation du bureau UNITY "
	echo " "
	echo "2- installation du bureau GNOME "
	echo " "
	echo "3- installation du bureau KDE "
	echo " "
	echo "4- installation du bureau XFCE "
	echo " "
	echo "faites votre choix:"
	read bureau
	if [ "$bureau" = "1" ]; then
		echo " Vous avez la possibilité d'installer le bureau UNITY avec tous ces programmes(Complete) ou alors uniquement le core(minimale) "
		echo " "
		echo "1- installation du bureau UNITY version COMPLETE "
		echo " "
		echo "2- installation du bureau UNITY version MINIMALE "
		echo "faites votre choix:"
		read version
		if [ "$version" = "1" ]; then
			
			sudo apt-get install unity gnome-session
			
		
		elif [ "$version" = "2" ]; then
		
			sudo apt-get install unity
			
			
		else
			echo "Valeur $version n'est pas une valide, vous devez entre le nombre 1 ou 2"
		fi
	elif [ "$bureau" = "2" ]; then
		echo " Vous avez la possibilité d'installer le bureau GNOME avec tous ces programmes(Complete) ou alors uniquement le core(minimale) "
		echo " "
		echo "1- installation du bureau GNOME version COMPLETE "
		echo " "
		echo "2- installation du bureau GNOME version MINIMALE "
		echo "faites votre choix:"
		read version
		if [ "$version" = "1" ]; then
			
			sudo apt-get install ubuntu-desktop
		
		elif [ "$version" = "2" ]; then
		
			sudo apt-get install gnome-core
			
		else
			echo "Valeur $version n'est pas une valide, vous devez entre le nombre 1 ou 2"
		fi
	elif [ "$bureau" = "3" ]; then
		echo " Vous avez la possibilité d'installer le bureau KDE avec tous ces programmes(Complete) ou alors uniquement le core(minimale) "
		echo " "
		echo "1- installation du bureau KDE version COMPLETE "
		echo " "
		echo "2- installation du bureau KDE version MINIMALE "
		echo "faites votre choix:"
		read version
		if [ "$version" = "1" ]; then
			
			sudo apt-get install kubuntu-desktop
			
		elif [ "$version" = "2" ]; then
			
			sudo apt-get install kde-core
		
		else
			echo "Valeur $version n'est pas une valide, vous devez entre le nombre 1 ou 2"
		fi
	elif [ "$bureau" = "4" ]; then
    	echo " Vous avez la possibilité d'installer le bureau XFCE avec tous ces programmes(Complete) ou alors uniquement le core(minimale) "
		echo " "
		echo "1- installation du bureau XFCE version COMPLETE "
		echo " "
		echo "2- installation du bureau XFCE version MINIMALE "
		echo "faites votre choix:"
		read version
		if [ "$version" = "1" ]; then
			
			sudo apt-get install xubuntu-desktop
		
		elif [ "$version" = "2" ]; then
			
			sudo apt-get install xfce4
		
		else
			echo "Valeur $version n'est pas une valide, vous devez entre le nombre 1 ou 2"
		fi
	else
		echo "Valeur $bureau n'est pas une valide, vous devez entre le nombre 1,2,3 ou 4"
	fi
	clear
	echo " "
	echo "********************************************************************** "
	echo "******* INSTALLATION ET CONFIGURATION DU SERVEUR DE MESSAGERIE  *******"
	echo "********************************************************************** "

	echo " Installation du sendmail et ses utilitaires "

		sudo apt-get install sendmail
		sudo apt-get install ssmtp
		sudo apt-get install mailutils

		//

		clear
		echo "Editer et enregistrer en superadministrateur le fichier suivant et ajouter la valeur de votre email de notification comme suit:"
		

		echo "		root=alinolandry2@gmail.com"
		echo " "
		echo "		mailhub=smtp.gmail.com:465"
		echo " "
		echo "		AuthUser=alinolandry2@gmail.com"
		echo " "
		echo "		AuthPass=695222345"
		echo " "
		echo "		UseTLS=YES"
		echo " "
		echo "		rewriteDomain=gmail.com"
		echo " "
		echo "		hostname=alino-Satellite-L505D"
		echo " "
		echo "		FromLineOverride=YES"
		echo " "
		echo "- Utiliser les informations précedantes pour modifier: nano /etc/ssmtp/ssmtp.conf"

		sudo gnome-terminal -x nano /etc/ssmtp/ssmtp.conf
		echo " "
		
		read -p "Après modification du fichier /etc/ssmtp/ssmtp.conf; appuyer sur une touche pour continuer ..."
		clear
		
		
		echo " "
		echo "		Editer le fichier suivant: nano /etc/ssmtp/revaliases"
		echo " "
		echo "		root:alinolandry2@gmail.com:smtp.gmail.com:465"
		echo " "
		echo "		maxi:alinolandry2@gmail.com:smtp.gmail.com:465"
		echo " "
		echo "	 Utiliser les informations précedantes pour modifier: nano /etc/ssmtp/revaliases"

		sudo gnome-terminal -x nano /etc/ssmtp/revaliases
		echo " "
		read -p "Après modification du fichier /etc/ssmtp/revaliases; appuyer sur une touche pour continuer ..."
		echo " "
		echo " "
		echo "Configuration des autorisation sur les fichiers modifiers"
		sudo chmod 640 /etc/ssmtp/ssmtp.conf
		sudo chown root:mail /etc/ssmtp/ssmtp.conf
		
		//

	clear
	echo " "
	echo "Votre environnement graphique a bien été configuré" |mail -s "NOTIFICATION SERVEUR" alinolandry2@gmail.com



	
elif [ "$choix" = "2" ]; then
	clear
    echo "***************************************************************************************************************************** "
    echo "*********************  BIENVENU DANS L'ASSISTANT DESINSTALLATION DES BUREAUX    ********************************************* "
    echo "***************************************************************************************************************************** "
else
    echo "Valeur $choix n'est pas une valide, vous devez entre le nombre 1 ou 2"
fi