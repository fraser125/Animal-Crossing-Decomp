lbl_804E9F84:
/* 804E9F84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E9F88  7C 08 02 A6 */	mflr r0
/* 804E9F8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E9F90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E9F94  7C 9F 23 78 */	mr r31, r4
/* 804E9F98  93 C1 00 08 */	stw r30, 8(r1)
/* 804E9F9C  7C 7E 1B 78 */	mr r30, r3
/* 804E9FA0  80 03 0D 78 */	lwz r0, 0xd78(r3)
/* 804E9FA4  80 A3 0D 60 */	lwz r5, 0xd60(r3)
/* 804E9FA8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804E9FAC  90 A3 0D 18 */	stw r5, 0xd18(r3)
/* 804E9FB0  A8 03 0D 64 */	lha r0, 0xd64(r3)
/* 804E9FB4  B0 03 0D 1C */	sth r0, 0xd1c(r3)
/* 804E9FB8  80 A3 0D 68 */	lwz r5, 0xd68(r3)
/* 804E9FBC  80 03 0D 6C */	lwz r0, 0xd6c(r3)
/* 804E9FC0  90 A3 0D 20 */	stw r5, 0xd20(r3)
/* 804E9FC4  90 03 0D 24 */	stw r0, 0xd24(r3)
/* 804E9FC8  80 03 0D 70 */	lwz r0, 0xd70(r3)
/* 804E9FCC  90 03 0D 28 */	stw r0, 0xd28(r3)
/* 804E9FD0  41 82 00 2C */	beq lbl_804E9FFC
/* 804E9FD4  3C C0 80 64 */	lis r6, lit_603@ha /* 0x80646564@ha */
/* 804E9FD8  3C A0 80 64 */	lis r5, lit_2671@ha /* 0x80646C4C@ha */
/* 804E9FDC  C0 26 65 64 */	lfs f1, lit_603@l(r6)  /* 0x80646564@l */
/* 804E9FE0  38 C0 00 06 */	li r6, 6
/* 804E9FE4  C0 65 6C 4C */	lfs f3, lit_2671@l(r5)  /* 0x80646C4C@l */
/* 804E9FE8  38 A0 00 06 */	li r5, 6
/* 804E9FEC  FC 40 08 90 */	fmr f2, f1
/* 804E9FF0  C0 9E 0D 74 */	lfs f4, 0xd74(r30)
/* 804E9FF4  38 E0 00 00 */	li r7, 0
/* 804E9FF8  4B FE C7 01 */	bl Player_actor_InitAnimation_Base1
lbl_804E9FFC:
/* 804E9FFC  7F C3 F3 78 */	mr r3, r30
/* 804EA000  7F E4 FB 78 */	mr r4, r31
/* 804EA004  4B FE B8 F5 */	bl Player_actor_setup_main_Base
/* 804EA008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EA00C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EA010  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EA014  7C 08 03 A6 */	mtlr r0
/* 804EA018  38 21 00 10 */	addi r1, r1, 0x10
/* 804EA01C  4E 80 00 20 */	blr 
