lbl_80542A58:
/* 80542A58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80542A5C  7C 08 02 A6 */	mflr r0
/* 80542A60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80542A64  39 61 00 20 */	addi r11, r1, 0x20
/* 80542A68  4B B5 84 6D */	bl func_8009AED4
/* 80542A6C  7C 7D 1B 78 */	mr r29, r3
/* 80542A70  7C 9E 23 78 */	mr r30, r4
/* 80542A74  3B E0 00 00 */	li r31, 0
/* 80542A78  4B FF E7 65 */	bl aNPC_chk_talk_start
/* 80542A7C  2C 03 00 01 */	cmpwi r3, 1
/* 80542A80  40 82 00 0C */	bne lbl_80542A8C
/* 80542A84  3B E0 00 01 */	li r31, 1
/* 80542A88  48 00 00 60 */	b lbl_80542AE8
lbl_80542A8C:
/* 80542A8C  7F A3 EB 78 */	mr r3, r29
/* 80542A90  4B FF 9B B1 */	bl aNPC_chk_right_hand
/* 80542A94  2C 03 00 00 */	cmpwi r3, 0
/* 80542A98  40 82 00 0C */	bne lbl_80542AA4
/* 80542A9C  3B E0 00 01 */	li r31, 1
/* 80542AA0  48 00 00 48 */	b lbl_80542AE8
lbl_80542AA4:
/* 80542AA4  7F A3 EB 78 */	mr r3, r29
/* 80542AA8  4B FF 9C 4D */	bl aNPC_chk_left_hand
/* 80542AAC  2C 03 00 00 */	cmpwi r3, 0
/* 80542AB0  40 82 00 0C */	bne lbl_80542ABC
/* 80542AB4  3B E0 00 01 */	li r31, 1
/* 80542AB8  48 00 00 30 */	b lbl_80542AE8
lbl_80542ABC:
/* 80542ABC  C0 1D 00 74 */	lfs f0, 0x74(r29)
/* 80542AC0  3C 60 80 65 */	lis r3, lit_2562@ha /* 0x80649428@ha */
/* 80542AC4  FC 20 02 10 */	fabs f1, f0
/* 80542AC8  C0 03 94 28 */	lfs f0, lit_2562@l(r3)  /* 0x80649428@l */
/* 80542ACC  FC 20 08 18 */	frsp f1, f1
/* 80542AD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80542AD4  41 80 00 14 */	blt lbl_80542AE8
/* 80542AD8  7F A3 EB 78 */	mr r3, r29
/* 80542ADC  7F C4 F3 78 */	mr r4, r30
/* 80542AE0  4B FF F3 25 */	bl aNPC_avoid_obstacle
/* 80542AE4  7C 7F 1B 78 */	mr r31, r3
lbl_80542AE8:
/* 80542AE8  7F E3 FB 78 */	mr r3, r31
/* 80542AEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80542AF0  4B B5 84 31 */	bl func_8009AF20
/* 80542AF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80542AF8  7C 08 03 A6 */	mtlr r0
/* 80542AFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80542B00  4E 80 00 20 */	blr 
