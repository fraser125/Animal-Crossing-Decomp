lbl_8050172C:
/* 8050172C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80501730  7C 08 02 A6 */	mflr r0
/* 80501734  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 80501738  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050173C  38 C1 00 08 */	addi r6, r1, 8
/* 80501740  C0 25 83 54 */	lfs f1, lit_7381@l(r5)  /* 0x80648354@l */
/* 80501744  38 A1 00 0C */	addi r5, r1, 0xc
/* 80501748  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8050174C  7C 9F 23 78 */	mr r31, r4
/* 80501750  38 80 00 54 */	li r4, 0x54
/* 80501754  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80501758  7C 7E 1B 78 */	mr r30, r3
/* 8050175C  4B FD 88 05 */	bl Player_actor_SetupItem_Base1
/* 80501760  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 80501764  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80501768  C0 24 6C 4C */	lfs f1, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 8050176C  7F E4 FB 78 */	mr r4, r31
/* 80501770  C0 43 83 54 */	lfs f2, lit_7381@l(r3)  /* 0x80648354@l */
/* 80501774  7F C3 F3 78 */	mr r3, r30
/* 80501778  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8050177C  38 A0 00 54 */	li r5, 0x54
/* 80501780  81 01 00 08 */	lwz r8, 8(r1)
/* 80501784  38 E0 00 00 */	li r7, 0
/* 80501788  4B FD 51 AD */	bl Player_actor_InitAnimation_Base3
/* 8050178C  7F C3 F3 78 */	mr r3, r30
/* 80501790  7F E4 FB 78 */	mr r4, r31
/* 80501794  4B FD 41 65 */	bl Player_actor_setup_main_Base
/* 80501798  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050179C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805017A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805017A4  7C 08 03 A6 */	mtlr r0
/* 805017A8  38 21 00 20 */	addi r1, r1, 0x20
/* 805017AC  4E 80 00 20 */	blr 
