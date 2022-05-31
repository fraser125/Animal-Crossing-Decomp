lbl_803DA368:
/* 803DA368  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DA36C  7C 08 02 A6 */	mflr r0
/* 803DA370  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DA374  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA378  4B CC 0B 59 */	bl func_8009AED0
/* 803DA37C  7C 7C 1B 78 */	mr r28, r3
/* 803DA380  7C 9D 23 78 */	mr r29, r4
/* 803DA384  7C BE 2B 78 */	mr r30, r5
/* 803DA388  7C DF 33 78 */	mr r31, r6
/* 803DA38C  4B FF F2 B5 */	bl get_player_actor_withoutCheck
/* 803DA390  81 83 12 84 */	lwz r12, 0x1284(r3)
/* 803DA394  3C 60 80 64 */	lis r3, lit_961@ha /* 0x80642FDC@ha */
/* 803DA398  38 E3 2F DC */	addi r7, r3, lit_961@l /* 0x80642FDC@l */
/* 803DA39C  7F A4 EB 78 */	mr r4, r29
/* 803DA3A0  C0 27 00 00 */	lfs f1, 0(r7)
/* 803DA3A4  7F 83 E3 78 */	mr r3, r28
/* 803DA3A8  7F C5 F3 78 */	mr r5, r30
/* 803DA3AC  7F E6 FB 78 */	mr r6, r31
/* 803DA3B0  38 E0 00 01 */	li r7, 1
/* 803DA3B4  39 00 00 09 */	li r8, 9
/* 803DA3B8  7D 89 03 A6 */	mtctr r12
/* 803DA3BC  4E 80 04 21 */	bctrl 
/* 803DA3C0  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA3C4  4B CC 0B 59 */	bl func_8009AF1C
/* 803DA3C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DA3CC  7C 08 03 A6 */	mtlr r0
/* 803DA3D0  38 21 00 20 */	addi r1, r1, 0x20
/* 803DA3D4  4E 80 00 20 */	blr 
