lbl_80576308:
/* 80576308  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057630C  7C 08 02 A6 */	mflr r0
/* 80576310  90 01 00 14 */	stw r0, 0x14(r1)
/* 80576314  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80576318  7C 7F 1B 78 */	mr r31, r3
/* 8057631C  93 C1 00 08 */	stw r30, 8(r1)
/* 80576320  7C 9E 23 78 */	mr r30, r4
/* 80576324  4B FF FF 21 */	bl aSEN_set_matrix
/* 80576328  88 1F 07 52 */	lbz r0, 0x752(r31)
/* 8057632C  28 00 00 01 */	cmplwi r0, 1
/* 80576330  40 82 00 14 */	bne lbl_80576344
/* 80576334  38 7F 09 A4 */	addi r3, r31, 0x9a4
/* 80576338  48 0B 80 F9 */	bl sAdos_GetKappaCounter
/* 8057633C  7F E3 FB 78 */	mr r3, r31
/* 80576340  4B FF DE C9 */	bl func_80574208
lbl_80576344:
/* 80576344  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80576348  7F E3 FB 78 */	mr r3, r31
/* 8057634C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80576350  7F C4 F3 78 */	mr r4, r30
/* 80576354  3C A5 00 02 */	addis r5, r5, 2
/* 80576358  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8057635C  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 80576360  7D 89 03 A6 */	mtctr r12
/* 80576364  4E 80 04 21 */	bctrl 
/* 80576368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057636C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80576370  83 C1 00 08 */	lwz r30, 8(r1)
/* 80576374  7C 08 03 A6 */	mtlr r0
/* 80576378  38 21 00 10 */	addi r1, r1, 0x10
/* 8057637C  4E 80 00 20 */	blr 