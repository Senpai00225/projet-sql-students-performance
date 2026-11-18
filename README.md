# Analyse SQL : performance d'étudiants

Analyse en SQL (MySQL) du jeu de données public *Students Performance in Exams* : quels groupes et quels profils d'étudiants dépassent 200 points sur 300 ?

## Objectif
Comparer les scores moyens (maths + lecture + écriture) selon le groupe de l'étudiant et selon son profil (type de repas, niveau d'éducation des parents), puis classer chaque résultat en **TOP** (>= 200) ou **FLOP** (< 200).

## Contenu
- `analyse_students_performance.sql` : les deux analyses

## Méthode
- Calcul du score total moyen avec `AVG(math + reading + writing)`
- Regroupement avec `GROUP BY`
- Utilisation d'une **CTE** pour isoler le calcul des moyennes
- Classement TOP / FLOP avec `CASE`

## Résultats clés

**Analyse 1 : par groupe (A à E)**

| Groupe | Score moyen | Résultat |
|---|---|---|
| E | 218,3 | TOP |
| D | 207,5 | TOP |
| C | 201,4 | TOP |
| B | 196,4 | FLOP |
| A | 189,0 | FLOP |

- Le groupe E obtient la meilleure moyenne, environ 29 points de plus que le groupe A.
- Trois groupes sur cinq (C, D, E) dépassent le seuil de 200 points.
- Le groupe C ne dépasse le seuil que de 1,4 point.

**Analyse 2 : repas et niveau d'éducation des parents**
- *(à compléter avec la comparaison standard / réduit)*

## Limites
- Ces résultats montrent des écarts de moyenne, pas des causes.
- Les groupes A à E sont anonymisés dans le jeu de données.
- Le seuil de 200 points est choisi pour l'exercice.

## Outils
MySQL : CTE, GROUP BY, CASE, AVG

## Aperçu
*<img width="1005" height="543" alt="Capture d&#39;écran 2026-11-18 192847" src="https://github.com/user-attachments/assets/80b00f5b-1e5e-497b-9ea0-e9a3a4044c4c" />
*
*<img width="1156" height="530" alt="Capture d&#39;écran 2026-11-18 192924" src="https://github.com/user-attachments/assets/057ae053-1153-49a5-b47b-11dee61ad429" />
*

## Auteur
Senpai00225 wilfried.saw00225@gmail.com
