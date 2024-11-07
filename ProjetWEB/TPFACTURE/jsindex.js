function calculer() {
    // Récupère les valeurs et calcule les résultats pour chaque article
    const prix1 = parseFloat(document.getElementById("prix1").value) || 0;
    const quantite1 = parseInt(document.getElementById("quantite1").value) || 0;
    const resultat1 = prix1 * quantite1;
    document.getElementById("resultat1").value = resultat1;

    const prix2 = parseFloat(document.getElementById("prix2").value) || 0;
    const quantite2 = parseInt(document.getElementById("quantite2").value) || 0;
    const resultat2 = prix2 * quantite2;
    document.getElementById("resultat2").value = resultat2;

    const prix3 = parseFloat(document.getElementById("prix3").value) || 0;
    const quantite3 = parseInt(document.getElementById("quantite3").value) || 0;
    const resultat3 = prix3 * quantite3;
    document.getElementById("resultat3").value = resultat3;

    // Calcule le total
    const total = resultat1 + resultat2 + resultat3;
    document.getElementById("total").value = total;
}

function reinitialiser() {
    // Réinitialise tous les champs
    document.getElementById("prix1").value = "";
    document.getElementById("quantite1").value = "";
    document.getElementById("resultat1").value = "";

    document.getElementById("prix2").value = "";
    document.getElementById("quantite2").value = "";
    document.getElementById("resultat2").value = "";

    document.getElementById("prix3").value = "";
    document.getElementById("quantite3").value = "";
    document.getElementById("resultat3").value = "";

    document.getElementById("total").value = "";
}
