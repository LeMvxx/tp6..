function validerFormulaire() {
    // Récupération des valeurs des champs
    const nom = document.getElementById("nom").value.trim();
    const prenom = document.getElementById("prenom").value.trim();
    const adresse = document.getElementById("adresse").value.trim();
    
    // Vérification si les champs sont remplis
    if (nom === "" || prenom === "" || adresse === "") {
        document.getElementById("message-erreur").textContent = "Veuillez remplir tous les champs obligatoires.";
    } else {
        document.getElementById("message-erreur").textContent = "";
        alert("Formulaire validé avec succès !");
        // Vous pouvez également envoyer les données ici
    }
}

function annulerFormulaire() {
    // Réinitialiser les champs du formulaire
    document.getElementById("nom").value = "";
    document.getElementById("prenom").value = "";
    document.getElementById("adresse").value = "";
    document.getElementById("date-naissance").value = "";
    document.getElementById("message-erreur").textContent = "";
}
