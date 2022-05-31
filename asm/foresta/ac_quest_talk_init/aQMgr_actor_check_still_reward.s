lbl_804899E8:
/* 804899E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804899EC  7C 08 02 A6 */	mflr r0
/* 804899F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804899F4  39 61 00 20 */	addi r11, r1, 0x20
/* 804899F8  4B C1 14 D5 */	bl func_8009AECC
/* 804899FC  80 A3 01 78 */	lwz r5, 0x178(r3)
/* 80489A00  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80489A04  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80489A08  3B C3 02 14 */	addi r30, r3, 0x214
/* 80489A0C  80 A5 00 00 */	lwz r5, 0(r5)
/* 80489A10  3C 64 00 02 */	addis r3, r4, 2
/* 80489A14  83 63 61 3C */	lwz r27, 0x613c(r3)
/* 80489A18  3B A0 FF FF */	li r29, -1
/* 80489A1C  83 E5 01 7C */	lwz r31, 0x17c(r5)
/* 80489A20  28 1F 00 00 */	cmplwi r31, 0
/* 80489A24  41 82 00 64 */	beq lbl_80489A88
/* 80489A28  3B 80 00 00 */	li r28, 0
lbl_80489A2C:
/* 80489A2C  80 7E 00 08 */	lwz r3, 8(r30)
/* 80489A30  28 03 00 00 */	cmplwi r3, 0
/* 80489A34  41 82 00 44 */	beq lbl_80489A78
/* 80489A38  88 03 00 01 */	lbz r0, 1(r3)
/* 80489A3C  54 00 F7 FE */	rlwinm r0, r0, 0x1e, 0x1f, 0x1f
/* 80489A40  28 00 00 01 */	cmplwi r0, 1
/* 80489A44  40 82 00 34 */	bne lbl_80489A78
/* 80489A48  7F E3 FB 78 */	mr r3, r31
/* 80489A4C  38 9E 00 1E */	addi r4, r30, 0x1e
/* 80489A50  4B F4 1A 21 */	bl mNpc_CheckCmpAnimalPersonalID
/* 80489A54  2C 03 00 01 */	cmpwi r3, 1
/* 80489A58  40 82 00 20 */	bne lbl_80489A78
/* 80489A5C  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 80489A60  7F 63 DB 78 */	mr r3, r27
/* 80489A64  4B F5 66 E1 */	bl mPr_CheckCmpPersonalID
/* 80489A68  2C 03 00 01 */	cmpwi r3, 1
/* 80489A6C  40 82 00 0C */	bne lbl_80489A78
/* 80489A70  7F 9D E3 78 */	mr r29, r28
/* 80489A74  48 00 00 14 */	b lbl_80489A88
lbl_80489A78:
/* 80489A78  3B 9C 00 01 */	addi r28, r28, 1
/* 80489A7C  3B DE 00 34 */	addi r30, r30, 0x34
/* 80489A80  2C 1C 00 23 */	cmpwi r28, 0x23
/* 80489A84  41 80 FF A8 */	blt lbl_80489A2C
lbl_80489A88:
/* 80489A88  7F A3 EB 78 */	mr r3, r29
/* 80489A8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80489A90  4B C1 14 89 */	bl func_8009AF18
/* 80489A94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80489A98  7C 08 03 A6 */	mtlr r0
/* 80489A9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80489AA0  4E 80 00 20 */	blr 
