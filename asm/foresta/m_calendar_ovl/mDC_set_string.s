lbl_805C69F4:
/* 805C69F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805C69F8  7C 08 02 A6 */	mflr r0
/* 805C69FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 805C6A00  39 61 00 30 */	addi r11, r1, 0x30
/* 805C6A04  4B AD 44 D1 */	bl func_8009AED4
/* 805C6A08  7C 7D 1B 78 */	mr r29, r3
/* 805C6A0C  88 03 10 43 */	lbz r0, 0x1043(r3)
/* 805C6A10  28 00 00 00 */	cmplwi r0, 0
/* 805C6A14  41 82 00 A0 */	beq lbl_805C6AB4
/* 805C6A18  88 1D 10 42 */	lbz r0, 0x1042(r29)
/* 805C6A1C  38 61 00 08 */	addi r3, r1, 8
/* 805C6A20  3B C0 00 00 */	li r30, 0
/* 805C6A24  38 80 00 10 */	li r4, 0x10
/* 805C6A28  7C DD 02 14 */	add r6, r29, r0
/* 805C6A2C  38 A0 00 20 */	li r5, 0x20
/* 805C6A30  88 06 10 3C */	lbz r0, 0x103c(r6)
/* 805C6A34  54 1F 06 7E */	clrlwi r31, r0, 0x19
/* 805C6A38  4B DF 40 11 */	bl mem_clear
/* 805C6A3C  2C 1F 00 04 */	cmpwi r31, 4
/* 805C6A40  40 82 00 30 */	bne lbl_805C6A70
/* 805C6A44  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805C6A48  38 61 00 08 */	addi r3, r1, 8
/* 805C6A4C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805C6A50  3C 84 00 01 */	addis r4, r4, 1
/* 805C6A54  38 84 91 20 */	addi r4, r4, -28384
/* 805C6A58  4B DE CE 99 */	bl mLd_CopyLandName
/* 805C6A5C  38 61 00 08 */	addi r3, r1, 8
/* 805C6A60  38 80 00 08 */	li r4, 8
/* 805C6A64  38 A0 00 20 */	li r5, 0x20
/* 805C6A68  4B DF 5B BD */	bl func_803BC624
/* 805C6A6C  7C 7E 1B 78 */	mr r30, r3
lbl_805C6A70:
/* 805C6A70  38 61 00 08 */	addi r3, r1, 8
/* 805C6A74  7F E5 FB 78 */	mr r5, r31
/* 805C6A78  7C 63 F2 14 */	add r3, r3, r30
/* 805C6A7C  20 9E 00 10 */	subfic r4, r30, 0x10
/* 805C6A80  4B E2 5B B9 */	bl mSC_get_event_name_str
/* 805C6A84  38 7D 10 44 */	addi r3, r29, 0x1044
/* 805C6A88  38 81 00 08 */	addi r4, r1, 8
/* 805C6A8C  38 A0 00 10 */	li r5, 0x10
/* 805C6A90  4B DF 3F 95 */	bl func_803BAA24
/* 805C6A94  3C 80 80 65 */	lis r4, data_8064AE3C@ha /* 0x8064AE3C@ha */
/* 805C6A98  3C 60 80 65 */	lis r3, lit_538@ha /* 0x8064AE40@ha */
/* 805C6A9C  C0 24 AE 3C */	lfs f1, data_8064AE3C@l(r4)  /* 0x8064AE3C@l */
/* 805C6AA0  38 00 00 00 */	li r0, 0
/* 805C6AA4  C0 03 AE 40 */	lfs f0, lit_538@l(r3)  /* 0x8064AE40@l */
/* 805C6AA8  D0 3D 10 34 */	stfs f1, 0x1034(r29)
/* 805C6AAC  D0 1D 10 38 */	stfs f0, 0x1038(r29)
/* 805C6AB0  98 1D 10 54 */	stb r0, 0x1054(r29)
lbl_805C6AB4:
/* 805C6AB4  39 61 00 30 */	addi r11, r1, 0x30
/* 805C6AB8  4B AD 44 69 */	bl func_8009AF20
/* 805C6ABC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805C6AC0  7C 08 03 A6 */	mtlr r0
/* 805C6AC4  38 21 00 30 */	addi r1, r1, 0x30
/* 805C6AC8  4E 80 00 20 */	blr 
