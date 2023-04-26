INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<actedIn>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<actedIn>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<hasAcademicAdvisor>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<hasAcademicAdvisor>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<hasChild>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<hasChild>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<hasFamilyName>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<hasFamilyName>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<hasWebsite>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<hasWebsite>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<hasWonPrize>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<hasWonPrize>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<isInterestedIn>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<isInterestedIn>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<isKnownFor>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<isKnownFor>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<directed>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<directed>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<edited>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<edited>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<graduatedFrom>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<graduatedFrom>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<hasGender>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<hasGender>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<hasMusicalRole>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<hasMusicalRole>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<isCitizenOf>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<isCitizenOf>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<isMarriedTo>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<isMarriedTo>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<isPolitician>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<isPolitician>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<playsFor>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<playsFor>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<worksAt>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<worksAt>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<wroteMusicFor>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<wroteMusicFor>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<created>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<created>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<diedIn>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<diedIn>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<hasGivenName>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<hasGivenName>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<influences>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<influences>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<isAffliatedTo>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<isAffliatedTo>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<isLeaderOf>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<isLeaderOf>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<livesIn>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<livesIn>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<owns>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<owns>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<participatedIn>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<participatedIn>";

INSERT OVERWRITE TABLE yago_part PARTITION(predicate = "<wasBornIn>")
SELECT subject,
    object
FROM yago
WHERE predicate = "<wasBornIn>";
