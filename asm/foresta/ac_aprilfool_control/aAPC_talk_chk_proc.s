lbl_8051537C:
/* 8051537C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80515380  7C 08 02 A6 */	mflr r0
/* 80515384  90 01 00 14 */	stw r0, 0x14(r1)
/* 80515388  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051538C  3B E0 00 01 */	li r31, 1
/* 80515390  93 C1 00 08 */	stw r30, 8(r1)
/* 80515394  7C 7E 1B 78 */	mr r30, r3
/* 80515398  4B E9 E7 71 */	bl mLd_PlayerManKindCheck
/* 8051539C  2C 03 00 00 */	cmpwi r3, 0
/* 805153A0  40 82 00 48 */	bne lbl_805153E8
/* 805153A4  7F C3 F3 78 */	mr r3, r30
/* 805153A8  4B FF FF 9D */	bl aAPC_get_data_idx
/* 805153AC  2C 03 FF FF */	cmpwi r3, -1
/* 805153B0  41 82 00 38 */	beq lbl_805153E8
/* 805153B4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805153B8  38 00 00 01 */	li r0, 1
/* 805153BC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805153C0  3C 84 00 02 */	addis r4, r4, 2
/* 805153C4  7C 05 18 30 */	slw r5, r0, r3
/* 805153C8  80 64 60 F8 */	lwz r3, 0x60f8(r4)
/* 805153CC  88 04 60 03 */	lbz r0, 0x6003(r4)
/* 805153D0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805153D4  54 00 08 3C */	slwi r0, r0, 1
/* 805153D8  7C 03 02 2E */	lhzx r0, r3, r0
/* 805153DC  7C A0 00 39 */	and. r0, r5, r0
/* 805153E0  40 82 00 08 */	bne lbl_805153E8
/* 805153E4  3B E0 00 00 */	li r31, 0
lbl_805153E8:
/* 805153E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805153EC  7F E3 FB 78 */	mr r3, r31
/* 805153F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805153F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805153F8  7C 08 03 A6 */	mtlr r0
/* 805153FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80515400  4E 80 00 20 */	blr 