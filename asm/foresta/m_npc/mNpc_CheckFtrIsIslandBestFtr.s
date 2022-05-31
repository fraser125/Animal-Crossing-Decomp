lbl_803D49D0:
/* 803D49D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D49D4  7C 08 02 A6 */	mflr r0
/* 803D49D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D49DC  39 61 00 20 */	addi r11, r1, 0x20
/* 803D49E0  4B CC 64 F1 */	bl func_8009AED0
/* 803D49E4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D49E8  7C 7C 1B 78 */	mr r28, r3
/* 803D49EC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803D49F0  3B A0 00 00 */	li r29, 0
/* 803D49F4  3C 63 00 02 */	addis r3, r3, 2
/* 803D49F8  A0 63 34 40 */	lhz r3, 0x3440(r3)
/* 803D49FC  4B FF FB 39 */	bl mNpc_GetIslandRoomP
/* 803D4A00  7C 7F 1B 79 */	or. r31, r3, r3
/* 803D4A04  41 82 00 48 */	beq lbl_803D4A4C
/* 803D4A08  57 80 A7 3E */	rlwinm r0, r28, 0x14, 0x1c, 0x1f
/* 803D4A0C  2C 00 00 01 */	cmpwi r0, 1
/* 803D4A10  41 82 00 0C */	beq lbl_803D4A1C
/* 803D4A14  2C 00 00 03 */	cmpwi r0, 3
/* 803D4A18  40 82 00 34 */	bne lbl_803D4A4C
lbl_803D4A1C:
/* 803D4A1C  3B C0 00 00 */	li r30, 0
lbl_803D4A20:
/* 803D4A20  A0 9F 00 00 */	lhz r4, 0(r31)
/* 803D4A24  7F 83 E3 78 */	mr r3, r28
/* 803D4A28  48 09 F1 A1 */	bl aMR_CorrespondFurniture
/* 803D4A2C  2C 03 00 01 */	cmpwi r3, 1
/* 803D4A30  40 82 00 0C */	bne lbl_803D4A3C
/* 803D4A34  3B A0 00 01 */	li r29, 1
/* 803D4A38  48 00 00 14 */	b lbl_803D4A4C
lbl_803D4A3C:
/* 803D4A3C  3B DE 00 01 */	addi r30, r30, 1
/* 803D4A40  3B FF 00 02 */	addi r31, r31, 2
/* 803D4A44  2C 1E 01 00 */	cmpwi r30, 0x100
/* 803D4A48  41 80 FF D8 */	blt lbl_803D4A20
lbl_803D4A4C:
/* 803D4A4C  7F A3 EB 78 */	mr r3, r29
/* 803D4A50  39 61 00 20 */	addi r11, r1, 0x20
/* 803D4A54  4B CC 64 C9 */	bl func_8009AF1C
/* 803D4A58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D4A5C  7C 08 03 A6 */	mtlr r0
/* 803D4A60  38 21 00 20 */	addi r1, r1, 0x20
/* 803D4A64  4E 80 00 20 */	blr 
