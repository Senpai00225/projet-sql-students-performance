/* Projet SQL : performance des étudiants (jeu de données StudentsPerformance)
   Question : quels groupes et quels profils dépassent 200 points sur 300 ? */
   
   -- Analyse 1 : score total moyen par groupe (A à E)
   
SELECT *
FROM studentsperformance;

WITH Moyenne_Group AS
(
SELECT AVG(`math score` + `reading score` + `writing score`) AS score_moyen_totale, `race/ethnicity`
FROM studentsperformance
group by `race/ethnicity`
)
SELECT score_moyen_totale, `race/ethnicity`,
CASE
WHEN score_moyen_totale >= 200 THEN 'TOP'
WHEN score_moyen_totale < 200 THEN 'FLOP'
 END AS Resultats
FROM Moyenne_Group;

-- Analyse 2 : score selon le repas et le niveau d'éducation des parents

WITH Perf_par_resultat AS
(
SELECT lunch, AVG(`math score` + `reading score` + `writing score`) AS Finale_Score_moyen, `parental level of education`, count(*) AS nbre_Prtcipant
FROM studentsperformance
GROUP BY lunch,`parental level of education`
order by nbre_Prtcipant desc
)
SELECT lunch,Finale_Score_moyen,`parental level of education`,nbre_Prtcipant,
CASE
WHEN Finale_Score_moyen >= 200 THEN 'TOP'
WHEN Finale_Score_moyen < 200 THEN 'FLOP'
END AS Performance  
FROM Perf_par_resultat;















