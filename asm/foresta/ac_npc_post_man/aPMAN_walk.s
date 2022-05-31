lbl_8056E55C:
/* 8056E55C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056E560  7C 08 02 A6 */	mflr r0
/* 8056E564  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056E568  39 61 00 20 */	addi r11, r1, 0x20
/* 8056E56C  4B B2 C9 69 */	bl func_8009AED4
/* 8056E570  7C 7D 1B 78 */	mr r29, r3
/* 8056E574  7C 9E 23 78 */	mr r30, r4
/* 8056E578  8B E3 09 9C */	lbz r31, 0x99c(r3)
/* 8056E57C  7F FF 07 74 */	extsb r31, r31
/* 8056E580  4B FF FB D9 */	bl aPMAN_search_angle
/* 8056E584  1C BF 00 0C */	mulli r5, r31, 0xc
/* 8056E588  3C 80 80 6C */	lis r4, aPMAN_move_pos@ha /* 0x806BEBC4@ha */
/* 8056E58C  38 7D 00 28 */	addi r3, r29, 0x28
/* 8056E590  38 04 EB C4 */	addi r0, r4, aPMAN_move_pos@l /* 0x806BEBC4@l */
/* 8056E594  7C 80 2A 14 */	add r4, r0, r5
/* 8056E598  4B E4 CA F5 */	bl search_position_distanceXZ
/* 8056E59C  3C 60 80 65 */	lis r3, data_8064987C@ha /* 0x8064987C@ha */
/* 8056E5A0  C0 03 98 7C */	lfs f0, data_8064987C@l(r3)  /* 0x8064987C@l */
/* 8056E5A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056E5A8  4C 41 13 82 */	cror 2, 1, 2
/* 8056E5AC  40 82 00 08 */	bne lbl_8056E5B4
/* 8056E5B0  48 00 00 08 */	b lbl_8056E5B8
lbl_8056E5B4:
/* 8056E5B4  FC 20 08 50 */	fneg f1, f1
lbl_8056E5B8:
/* 8056E5B8  3C 60 80 65 */	lis r3, lit_675@ha /* 0x80649894@ha */
/* 8056E5BC  C0 03 98 94 */	lfs f0, lit_675@l(r3)  /* 0x80649894@l */
/* 8056E5C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056E5C4  40 80 00 44 */	bge lbl_8056E608
/* 8056E5C8  88 1D 09 9C */	lbz r0, 0x99c(r29)
/* 8056E5CC  98 1D 09 9D */	stb r0, 0x99d(r29)
/* 8056E5D0  88 7D 09 9B */	lbz r3, 0x99b(r29)
/* 8056E5D4  88 1D 09 9D */	lbz r0, 0x99d(r29)
/* 8056E5D8  7C 63 07 74 */	extsb r3, r3
/* 8056E5DC  7C 00 07 74 */	extsb r0, r0
/* 8056E5E0  7C 03 00 00 */	cmpw r3, r0
/* 8056E5E4  41 82 00 14 */	beq lbl_8056E5F8
/* 8056E5E8  7F A3 EB 78 */	mr r3, r29
/* 8056E5EC  4B FF FB 45 */	bl aPMAN_set_move_idx
/* 8056E5F0  98 7D 09 9C */	stb r3, 0x99c(r29)
/* 8056E5F4  48 00 00 14 */	b lbl_8056E608
lbl_8056E5F8:
/* 8056E5F8  7F A3 EB 78 */	mr r3, r29
/* 8056E5FC  7F C4 F3 78 */	mr r4, r30
/* 8056E600  38 A0 00 07 */	li r5, 7
/* 8056E604  48 00 06 CD */	bl aPMAN_setupAction
lbl_8056E608:
/* 8056E608  39 61 00 20 */	addi r11, r1, 0x20
/* 8056E60C  4B B2 C9 15 */	bl func_8009AF20
/* 8056E610  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056E614  7C 08 03 A6 */	mtlr r0
/* 8056E618  38 21 00 20 */	addi r1, r1, 0x20
/* 8056E61C  4E 80 00 20 */	blr 
