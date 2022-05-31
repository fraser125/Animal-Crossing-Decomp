lbl_80580CF8:
/* 80580CF8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80580CFC  7C 08 02 A6 */	mflr r0
/* 80580D00  90 01 00 34 */	stw r0, 0x34(r1)
/* 80580D04  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80580D08  7C 7F 1B 78 */	mr r31, r3
/* 80580D0C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80580D10  7C 9E 23 78 */	mr r30, r4
/* 80580D14  7F C3 F3 78 */	mr r3, r30
/* 80580D18  4B E5 89 29 */	bl get_player_actor_withoutCheck
/* 80580D1C  88 9F 09 B6 */	lbz r4, 0x9b6(r31)
/* 80580D20  88 BF 09 B7 */	lbz r5, 0x9b7(r31)
/* 80580D24  7C 7F 1B 78 */	mr r31, r3
/* 80580D28  38 61 00 14 */	addi r3, r1, 0x14
/* 80580D2C  4B E2 47 51 */	bl mFI_UtNum2CenterWpos
/* 80580D30  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 80580D34  3C 60 80 65 */	lis r3, lit_633@ha /* 0x80649A8C@ha */
/* 80580D38  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 80580D3C  38 83 9A 8C */	addi r4, r3, lit_633@l /* 0x80649A8C@l */
/* 80580D40  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80580D44  38 61 00 08 */	addi r3, r1, 8
/* 80580D48  90 C1 00 08 */	stw r6, 8(r1)
/* 80580D4C  C0 24 00 00 */	lfs f1, 0(r4)
/* 80580D50  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80580D54  90 01 00 10 */	stw r0, 0x10(r1)
/* 80580D58  4B E0 EC 41 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 80580D5C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80580D60  7F C3 F3 78 */	mr r3, r30
/* 80580D64  7F E4 FB 78 */	mr r4, r31
/* 80580D68  38 A1 00 14 */	addi r5, r1, 0x14
/* 80580D6C  38 C0 00 05 */	li r6, 5
/* 80580D70  4B DF E9 C9 */	bl Camera2_request_main_talk_pos
/* 80580D74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80580D78  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80580D7C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80580D80  7C 08 03 A6 */	mtlr r0
/* 80580D84  38 21 00 30 */	addi r1, r1, 0x30
/* 80580D88  4E 80 00 20 */	blr 
