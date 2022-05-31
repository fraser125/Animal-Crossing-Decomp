lbl_8056E2F8:
/* 8056E2F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056E2FC  7C 08 02 A6 */	mflr r0
/* 8056E300  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056E304  39 61 00 20 */	addi r11, r1, 0x20
/* 8056E308  4B B2 CB CD */	bl func_8009AED4
/* 8056E30C  7C 7D 1B 78 */	mr r29, r3
/* 8056E310  3C 60 80 6C */	lis r3, landing_pos@ha /* 0x806BEC74@ha */
/* 8056E314  3B FD 00 28 */	addi r31, r29, 0x28
/* 8056E318  7C 9E 23 78 */	mr r30, r4
/* 8056E31C  38 83 EC 74 */	addi r4, r3, landing_pos@l /* 0x806BEC74@l */
/* 8056E320  7F E3 FB 78 */	mr r3, r31
/* 8056E324  4B E4 CE 0D */	bl search_position_angleY
/* 8056E328  7C 60 1B 78 */	mr r0, r3
/* 8056E32C  38 7D 00 36 */	addi r3, r29, 0x36
/* 8056E330  7C 04 07 34 */	extsh r4, r0
/* 8056E334  38 A0 04 00 */	li r5, 0x400
/* 8056E338  4B E4 C8 0D */	bl chase_angle
/* 8056E33C  A8 1D 00 36 */	lha r0, 0x36(r29)
/* 8056E340  3C 60 80 6C */	lis r3, landing_pos@ha /* 0x806BEC74@ha */
/* 8056E344  38 83 EC 74 */	addi r4, r3, landing_pos@l /* 0x806BEC74@l */
/* 8056E348  B0 1D 00 DE */	sth r0, 0xde(r29)
/* 8056E34C  7F E3 FB 78 */	mr r3, r31
/* 8056E350  4B E4 CD 3D */	bl search_position_distanceXZ
/* 8056E354  3C 60 80 65 */	lis r3, lit_627@ha /* 0x8064988C@ha */
/* 8056E358  C0 03 98 8C */	lfs f0, lit_627@l(r3)  /* 0x8064988C@l */
/* 8056E35C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056E360  40 80 00 14 */	bge lbl_8056E374
/* 8056E364  7F A3 EB 78 */	mr r3, r29
/* 8056E368  7F C4 F3 78 */	mr r4, r30
/* 8056E36C  38 A0 00 01 */	li r5, 1
/* 8056E370  48 00 09 61 */	bl aPMAN_setupAction
lbl_8056E374:
/* 8056E374  7F C3 F3 78 */	mr r3, r30
/* 8056E378  4B E6 B2 C9 */	bl get_player_actor_withoutCheck
/* 8056E37C  7C 66 1B 79 */	or. r6, r3, r3
/* 8056E380  41 82 00 30 */	beq lbl_8056E3B0
/* 8056E384  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8056E388  7F A3 EB 78 */	mr r3, r29
/* 8056E38C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8056E390  38 E0 00 00 */	li r7, 0
/* 8056E394  3C A4 00 02 */	addis r5, r4, 2
/* 8056E398  81 05 60 4C */	lwz r8, 0x604c(r5)
/* 8056E39C  38 80 00 03 */	li r4, 3
/* 8056E3A0  38 A0 00 01 */	li r5, 1
/* 8056E3A4  81 88 01 0C */	lwz r12, 0x10c(r8)
/* 8056E3A8  7D 89 03 A6 */	mtctr r12
/* 8056E3AC  4E 80 04 21 */	bctrl 
lbl_8056E3B0:
/* 8056E3B0  39 61 00 20 */	addi r11, r1, 0x20
/* 8056E3B4  4B B2 CB 6D */	bl func_8009AF20
/* 8056E3B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056E3BC  7C 08 03 A6 */	mtlr r0
/* 8056E3C0  38 21 00 20 */	addi r1, r1, 0x20
/* 8056E3C4  4E 80 00 20 */	blr 
