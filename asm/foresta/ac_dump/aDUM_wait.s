lbl_805AE884:
/* 805AE884  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AE888  7C 08 02 A6 */	mflr r0
/* 805AE88C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AE890  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805AE894  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805AE898  7C 7E 1B 78 */	mr r30, r3
/* 805AE89C  7C 83 23 78 */	mr r3, r4
/* 805AE8A0  4B E2 AD A1 */	bl get_player_actor_withoutCheck
/* 805AE8A4  7C 7F 1B 78 */	mr r31, r3
/* 805AE8A8  38 61 00 08 */	addi r3, r1, 8
/* 805AE8AC  38 9E 00 28 */	addi r4, r30, 0x28
/* 805AE8B0  4B E0 C6 0D */	bl xyz_t_move
/* 805AE8B4  7F C4 F3 78 */	mr r4, r30
/* 805AE8B8  38 60 00 07 */	li r3, 7
/* 805AE8BC  4B DE B9 A9 */	bl mDemo_Check
/* 805AE8C0  2C 03 00 01 */	cmpwi r3, 1
/* 805AE8C4  41 82 00 5C */	beq lbl_805AE920
/* 805AE8C8  28 1F 00 00 */	cmplwi r31, 0
/* 805AE8CC  41 82 00 54 */	beq lbl_805AE920
/* 805AE8D0  4B DE 9B 29 */	bl mDemo_Get_talk_actor
/* 805AE8D4  28 03 00 00 */	cmplwi r3, 0
/* 805AE8D8  40 82 00 48 */	bne lbl_805AE920
/* 805AE8DC  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805AE8E0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805AE8E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AE8E8  4C 41 13 82 */	cror 2, 1, 2
/* 805AE8EC  40 82 00 34 */	bne lbl_805AE920
/* 805AE8F0  A8 7E 00 B6 */	lha r3, 0xb6(r30)
/* 805AE8F4  7C 60 07 35 */	extsh. r0, r3
/* 805AE8F8  7C 03 00 D0 */	neg r0, r3
/* 805AE8FC  41 80 00 08 */	blt lbl_805AE904
/* 805AE900  7C 60 1B 78 */	mr r0, r3
lbl_805AE904:
/* 805AE904  2C 00 20 00 */	cmpwi r0, 0x2000
/* 805AE908  40 80 00 18 */	bge lbl_805AE920
/* 805AE90C  3C 60 80 5B */	lis r3, aDUM_set_talk_info@ha /* 0x805AE81C@ha */
/* 805AE910  7F C4 F3 78 */	mr r4, r30
/* 805AE914  38 A3 E8 1C */	addi r5, r3, aDUM_set_talk_info@l /* 0x805AE81C@l */
/* 805AE918  38 60 00 07 */	li r3, 7
/* 805AE91C  4B DE B8 41 */	bl mDemo_Request
lbl_805AE920:
/* 805AE920  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AE924  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805AE928  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805AE92C  7C 08 03 A6 */	mtlr r0
/* 805AE930  38 21 00 20 */	addi r1, r1, 0x20
/* 805AE934  4E 80 00 20 */	blr 
