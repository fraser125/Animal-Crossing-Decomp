lbl_803ED754:
/* 803ED754  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803ED758  7C 08 02 A6 */	mflr r0
/* 803ED75C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803ED760  90 01 00 24 */	stw r0, 0x24(r1)
/* 803ED764  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803ED768  7C 7F 1B 78 */	mr r31, r3
/* 803ED76C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803ED770  3C 83 00 02 */	addis r4, r3, 2
/* 803ED774  88 04 41 6F */	lbz r0, 0x416f(r4)
/* 803ED778  38 84 41 6C */	addi r4, r4, 0x416c
/* 803ED77C  28 00 00 00 */	cmplwi r0, 0
/* 803ED780  40 82 00 0C */	bne lbl_803ED78C
/* 803ED784  38 60 00 00 */	li r3, 0
/* 803ED788  48 00 00 54 */	b lbl_803ED7DC
lbl_803ED78C:
/* 803ED78C  38 61 00 08 */	addi r3, r1, 8
/* 803ED790  48 00 5C ED */	bl mTM_ymd_2_time
/* 803ED794  7F E4 FB 78 */	mr r4, r31
/* 803ED798  38 61 00 08 */	addi r3, r1, 8
/* 803ED79C  48 01 91 79 */	bl lbRTC_IsOverTime
/* 803ED7A0  2C 03 FF FF */	cmpwi r3, -1
/* 803ED7A4  40 82 00 0C */	bne lbl_803ED7B0
/* 803ED7A8  38 60 00 00 */	li r3, 0
/* 803ED7AC  48 00 00 30 */	b lbl_803ED7DC
lbl_803ED7B0:
/* 803ED7B0  7F E4 FB 78 */	mr r4, r31
/* 803ED7B4  38 61 00 08 */	addi r3, r1, 8
/* 803ED7B8  48 01 92 E5 */	bl lbRTC_GetIntervalDays
/* 803ED7BC  34 03 FF FF */	addic. r0, r3, -1
/* 803ED7C0  40 80 00 0C */	bge lbl_803ED7CC
/* 803ED7C4  38 60 00 00 */	li r3, 0
/* 803ED7C8  48 00 00 14 */	b lbl_803ED7DC
lbl_803ED7CC:
/* 803ED7CC  2C 00 00 06 */	cmpwi r0, 6
/* 803ED7D0  38 60 00 06 */	li r3, 6
/* 803ED7D4  41 81 00 08 */	bgt lbl_803ED7DC
/* 803ED7D8  7C 03 03 78 */	mr r3, r0
lbl_803ED7DC:
/* 803ED7DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803ED7E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803ED7E4  7C 08 03 A6 */	mtlr r0
/* 803ED7E8  38 21 00 20 */	addi r1, r1, 0x20
/* 803ED7EC  4E 80 00 20 */	blr 
