lbl_805199C8:
/* 805199C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805199CC  7C 08 02 A6 */	mflr r0
/* 805199D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805199D4  39 61 00 20 */	addi r11, r1, 0x20
/* 805199D8  4B B8 14 FD */	bl func_8009AED4
/* 805199DC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805199E0  83 C4 1F 60 */	lwz r30, 0x1f60(r4)
/* 805199E4  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 805199E8  7C 7F 1B 78 */	mr r31, r3
/* 805199EC  3F A4 00 02 */	addis r29, r4, 2
/* 805199F0  38 60 00 00 */	li r3, 0
/* 805199F4  80 FD 04 CC */	lwz r7, 0x4cc(r29)
/* 805199F8  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 805199FC  38 81 00 08 */	addi r4, r1, 8
/* 80519A00  38 A0 00 01 */	li r5, 1
/* 80519A04  39 00 00 04 */	li r8, 4
/* 80519A08  39 20 00 03 */	li r9, 3
/* 80519A0C  39 40 00 00 */	li r10, 0
/* 80519A10  3B BD 04 A4 */	addi r29, r29, 0x4a4
/* 80519A14  4B EC E9 C9 */	bl mSP_SelectRandomItem_New
/* 80519A18  A0 01 00 08 */	lhz r0, 8(r1)
/* 80519A1C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80519A20  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80519A24  38 C0 00 00 */	li r6, 0
/* 80519A28  B0 1F 09 A0 */	sth r0, 0x9a0(r31)
/* 80519A2C  3F E3 00 02 */	addis r31, r3, 2
/* 80519A30  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 80519A34  88 9E 00 02 */	lbz r4, 2(r30)
/* 80519A38  A0 A1 00 08 */	lhz r5, 8(r1)
/* 80519A3C  4B EC 73 ED */	bl mPr_SetPossessionItem
/* 80519A40  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80519A44  2C 03 00 02 */	cmpwi r3, 2
/* 80519A48  40 82 00 10 */	bne lbl_80519A58
/* 80519A4C  38 03 00 01 */	addi r0, r3, 1
/* 80519A50  90 1D 00 28 */	stw r0, 0x28(r29)
/* 80519A54  48 00 00 34 */	b lbl_80519A88
lbl_80519A58:
/* 80519A58  1C 03 00 14 */	mulli r0, r3, 0x14
/* 80519A5C  80 9F 61 3C */	lwz r4, 0x613c(r31)
/* 80519A60  7C 7D 02 14 */	add r3, r29, r0
/* 80519A64  4B EC 66 BD */	bl mPr_CopyPersonalID
/* 80519A68  80 1D 00 28 */	lwz r0, 0x28(r29)
/* 80519A6C  A0 81 00 08 */	lhz r4, 8(r1)
/* 80519A70  54 00 08 3C */	slwi r0, r0, 1
/* 80519A74  7C 7D 02 14 */	add r3, r29, r0
/* 80519A78  B0 83 00 2C */	sth r4, 0x2c(r3)
/* 80519A7C  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80519A80  38 03 00 01 */	addi r0, r3, 1
/* 80519A84  90 1D 00 28 */	stw r0, 0x28(r29)
lbl_80519A88:
/* 80519A88  39 61 00 20 */	addi r11, r1, 0x20
/* 80519A8C  4B B8 14 95 */	bl func_8009AF20
/* 80519A90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80519A94  7C 08 03 A6 */	mtlr r0
/* 80519A98  38 21 00 20 */	addi r1, r1, 0x20
/* 80519A9C  4E 80 00 20 */	blr 
