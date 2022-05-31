lbl_80532D18:
/* 80532D18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80532D1C  7C 08 02 A6 */	mflr r0
/* 80532D20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80532D24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80532D28  93 C1 00 08 */	stw r30, 8(r1)
/* 80532D2C  7C 7E 1B 78 */	mr r30, r3
/* 80532D30  4B FF E5 E5 */	bl aNPC_act_turn
/* 80532D34  2C 03 00 00 */	cmpwi r3, 0
/* 80532D38  40 82 00 44 */	bne lbl_80532D7C
/* 80532D3C  80 7E 08 F0 */	lwz r3, 0x8f0(r30)
/* 80532D40  38 9E 00 28 */	addi r4, r30, 0x28
/* 80532D44  3B E0 00 01 */	li r31, 1
/* 80532D48  38 63 00 28 */	addi r3, r3, 0x28
/* 80532D4C  4B E8 82 89 */	bl search_position_distance
/* 80532D50  3C 60 80 65 */	lis r3, lit_2721@ha /* 0x8064932C@ha */
/* 80532D54  C0 03 93 2C */	lfs f0, lit_2721@l(r3)  /* 0x8064932C@l */
/* 80532D58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80532D5C  41 80 00 10 */	blt lbl_80532D6C
/* 80532D60  88 1E 00 D6 */	lbz r0, 0xd6(r30)
/* 80532D64  28 00 00 FE */	cmplwi r0, 0xfe
/* 80532D68  41 80 00 08 */	blt lbl_80532D70
lbl_80532D6C:
/* 80532D6C  3B E0 00 02 */	li r31, 2
lbl_80532D70:
/* 80532D70  7F C3 F3 78 */	mr r3, r30
/* 80532D74  7F E4 FB 78 */	mr r4, r31
/* 80532D78  4B FF FF 59 */	bl aNPC_act_greeting_chg_step
lbl_80532D7C:
/* 80532D7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80532D80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80532D84  83 C1 00 08 */	lwz r30, 8(r1)
/* 80532D88  7C 08 03 A6 */	mtlr r0
/* 80532D8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80532D90  4E 80 00 20 */	blr 
