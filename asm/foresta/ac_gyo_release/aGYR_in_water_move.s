lbl_80426534:
/* 80426534  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80426538  7C 08 02 A6 */	mflr r0
/* 8042653C  38 A0 00 03 */	li r5, 3
/* 80426540  90 01 00 34 */	stw r0, 0x34(r1)
/* 80426544  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80426548  7C 9F 23 78 */	mr r31, r4
/* 8042654C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80426550  7C 7E 1B 78 */	mr r30, r3
/* 80426554  4B FF FC 01 */	bl aGYR_effect_hamon
/* 80426558  38 9E 00 28 */	addi r4, r30, 0x28
/* 8042655C  38 60 04 37 */	li r3, 0x437
/* 80426560  48 20 7A 49 */	bl sAdo_OngenTrgStart
/* 80426564  39 20 FF FF */	li r9, -1
/* 80426568  38 A0 00 00 */	li r5, 0
/* 8042656C  91 21 00 08 */	stw r9, 8(r1)
/* 80426570  38 00 00 03 */	li r0, 3
/* 80426574  7F E4 FB 78 */	mr r4, r31
/* 80426578  38 7F 1D A8 */	addi r3, r31, 0x1da8
/* 8042657C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80426580  38 A0 00 85 */	li r5, 0x85
/* 80426584  38 C0 00 00 */	li r6, 0
/* 80426588  39 00 00 00 */	li r8, 0
/* 8042658C  A8 FE 01 7C */	lha r7, 0x17c(r30)
/* 80426590  90 E1 00 10 */	stw r7, 0x10(r1)
/* 80426594  91 21 00 14 */	stw r9, 0x14(r1)
/* 80426598  90 01 00 18 */	stw r0, 0x18(r1)
/* 8042659C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 804265A0  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 804265A4  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 804265A8  A8 FE 00 36 */	lha r7, 0x36(r30)
/* 804265AC  89 3F 00 E4 */	lbz r9, 0xe4(r31)
/* 804265B0  89 5F 00 E5 */	lbz r10, 0xe5(r31)
/* 804265B4  4B F4 F1 95 */	bl Actor_info_make_actor
/* 804265B8  7F C3 F3 78 */	mr r3, r30
/* 804265BC  4B F4 DE 85 */	bl Actor_delete
/* 804265C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804265C4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804265C8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804265CC  7C 08 03 A6 */	mtlr r0
/* 804265D0  38 21 00 30 */	addi r1, r1, 0x30
/* 804265D4  4E 80 00 20 */	blr 
