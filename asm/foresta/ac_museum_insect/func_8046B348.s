lbl_8046B348:
/* 8046B348  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046B34C  7C 08 02 A6 */	mflr r0
/* 8046B350  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046B354  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8046B358  7C 9F 23 78 */	mr r31, r4
/* 8046B35C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8046B360  7C 7E 1B 78 */	mr r30, r3
/* 8046B364  7F E3 FB 78 */	mr r3, r31
/* 8046B368  4B F6 E2 D9 */	bl get_player_actor_withoutCheck
/* 8046B36C  7C 64 1B 78 */	mr r4, r3
/* 8046B370  38 7E 00 1C */	addi r3, r30, 0x1c
/* 8046B374  38 84 00 28 */	addi r4, r4, 0x28
/* 8046B378  4B F4 FC 5D */	bl search_position_distance
/* 8046B37C  3C 60 80 64 */	lis r3, lit_4129@ha /* 0x806448C4@ha */
/* 8046B380  C0 03 48 C4 */	lfs f0, lit_4129@l(r3)  /* 0x806448C4@l */
/* 8046B384  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046B388  40 81 00 3C */	ble lbl_8046B3C4
/* 8046B38C  80 1E 00 90 */	lwz r0, 0x90(r30)
/* 8046B390  2C 00 FF FF */	cmpwi r0, -1
/* 8046B394  41 82 00 30 */	beq lbl_8046B3C4
/* 8046B398  A8 1E 00 7A */	lha r0, 0x7a(r30)
/* 8046B39C  2C 00 00 00 */	cmpwi r0, 0
/* 8046B3A0  40 82 00 24 */	bne lbl_8046B3C4
/* 8046B3A4  38 00 00 00 */	li r0, 0
/* 8046B3A8  7F E4 FB 78 */	mr r4, r31
/* 8046B3AC  B0 1E 00 7C */	sth r0, 0x7c(r30)
/* 8046B3B0  80 7E 00 90 */	lwz r3, 0x90(r30)
/* 8046B3B4  4B F4 E7 4D */	bl mEnv_CancelReservedPointLight
/* 8046B3B8  38 00 FF FF */	li r0, -1
/* 8046B3BC  90 1E 00 90 */	stw r0, 0x90(r30)
/* 8046B3C0  48 00 00 AC */	b lbl_8046B46C
lbl_8046B3C4:
/* 8046B3C4  3C 60 80 64 */	lis r3, lit_4129@ha /* 0x806448C4@ha */
/* 8046B3C8  C0 03 48 C4 */	lfs f0, lit_4129@l(r3)  /* 0x806448C4@l */
/* 8046B3CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046B3D0  40 81 00 28 */	ble lbl_8046B3F8
/* 8046B3D4  80 1E 00 90 */	lwz r0, 0x90(r30)
/* 8046B3D8  2C 00 FF FF */	cmpwi r0, -1
/* 8046B3DC  41 82 00 1C */	beq lbl_8046B3F8
/* 8046B3E0  A8 1E 00 7C */	lha r0, 0x7c(r30)
/* 8046B3E4  2C 00 00 00 */	cmpwi r0, 0
/* 8046B3E8  41 82 00 10 */	beq lbl_8046B3F8
/* 8046B3EC  38 00 00 00 */	li r0, 0
/* 8046B3F0  B0 1E 00 7C */	sth r0, 0x7c(r30)
/* 8046B3F4  48 00 00 78 */	b lbl_8046B46C
lbl_8046B3F8:
/* 8046B3F8  3C 60 80 64 */	lis r3, lit_4129@ha /* 0x806448C4@ha */
/* 8046B3FC  C0 03 48 C4 */	lfs f0, lit_4129@l(r3)  /* 0x806448C4@l */
/* 8046B400  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046B404  4C 40 13 82 */	cror 2, 0, 2
/* 8046B408  40 82 00 64 */	bne lbl_8046B46C
/* 8046B40C  38 00 00 96 */	li r0, 0x96
/* 8046B410  B0 1E 00 7C */	sth r0, 0x7c(r30)
/* 8046B414  80 1E 00 90 */	lwz r0, 0x90(r30)
/* 8046B418  2C 00 FF FF */	cmpwi r0, -1
/* 8046B41C  40 82 00 50 */	bne lbl_8046B46C
/* 8046B420  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 8046B424  3C 60 80 64 */	lis r3, lit_586@ha /* 0x80644634@ha */
/* 8046B428  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 8046B42C  38 A0 00 78 */	li r5, 0x78
/* 8046B430  C0 03 46 34 */	lfs f0, lit_586@l(r3)  /* 0x80644634@l */
/* 8046B434  7F E3 FB 78 */	mr r3, r31
/* 8046B438  90 81 00 08 */	stw r4, 8(r1)
/* 8046B43C  38 81 00 08 */	addi r4, r1, 8
/* 8046B440  38 C0 00 FF */	li r6, 0xff
/* 8046B444  38 E0 00 B4 */	li r7, 0xb4
/* 8046B448  90 01 00 0C */	stw r0, 0xc(r1)
/* 8046B44C  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 8046B450  90 01 00 10 */	stw r0, 0x10(r1)
/* 8046B454  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8046B458  EC 01 00 2A */	fadds f0, f1, f0
/* 8046B45C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8046B460  A9 1E 00 7A */	lha r8, 0x7a(r30)
/* 8046B464  4B F4 E4 69 */	bl mEnv_ReservePointLight
/* 8046B468  90 7E 00 90 */	stw r3, 0x90(r30)
lbl_8046B46C:
/* 8046B46C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046B470  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8046B474  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8046B478  7C 08 03 A6 */	mtlr r0
/* 8046B47C  38 21 00 20 */	addi r1, r1, 0x20
/* 8046B480  4E 80 00 20 */	blr 
