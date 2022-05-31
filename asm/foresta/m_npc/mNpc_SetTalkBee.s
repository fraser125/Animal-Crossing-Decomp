lbl_803D39F4:
/* 803D39F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D39F8  7C 08 02 A6 */	mflr r0
/* 803D39FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D3A00  39 61 00 20 */	addi r11, r1, 0x20
/* 803D3A04  4B CC 74 CD */	bl func_8009AED0
/* 803D3A08  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D3A0C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803D3A10  3C 64 00 03 */	addis r3, r4, 3
/* 803D3A14  88 03 88 38 */	lbz r0, -0x77c8(r3)
/* 803D3A18  2C 00 00 01 */	cmpwi r0, 1
/* 803D3A1C  41 82 00 84 */	beq lbl_803D3AA0
/* 803D3A20  3F C4 00 01 */	addis r30, r4, 1
/* 803D3A24  3F A4 00 02 */	addis r29, r4, 2
/* 803D3A28  3B 80 00 00 */	li r28, 0
/* 803D3A2C  3B E0 00 01 */	li r31, 1
/* 803D3A30  3B DE 74 38 */	addi r30, r30, 0x7438
/* 803D3A34  3B BD 61 64 */	addi r29, r29, 0x6164
lbl_803D3A38:
/* 803D3A38  7F C3 F3 78 */	mr r3, r30
/* 803D3A3C  4B FF 8B 81 */	bl mNpc_CheckFreeAnimalInfo
/* 803D3A40  2C 03 00 00 */	cmpwi r3, 0
/* 803D3A44  40 82 00 10 */	bne lbl_803D3A54
/* 803D3A48  88 1D 00 1D */	lbz r0, 0x1d(r29)
/* 803D3A4C  53 E0 3E 30 */	rlwimi r0, r31, 7, 0x18, 0x18
/* 803D3A50  98 1D 00 1D */	stb r0, 0x1d(r29)
lbl_803D3A54:
/* 803D3A54  3B 9C 00 01 */	addi r28, r28, 1
/* 803D3A58  3B BD 00 38 */	addi r29, r29, 0x38
/* 803D3A5C  2C 1C 00 0F */	cmpwi r28, 0xf
/* 803D3A60  3B DE 09 88 */	addi r30, r30, 0x988
/* 803D3A64  41 80 FF D4 */	blt lbl_803D3A38
/* 803D3A68  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D3A6C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D3A70  3C 63 00 02 */	addis r3, r3, 2
/* 803D3A74  38 63 34 40 */	addi r3, r3, 0x3440
/* 803D3A78  4B FF 8B 45 */	bl mNpc_CheckFreeAnimalInfo
/* 803D3A7C  2C 03 00 00 */	cmpwi r3, 0
/* 803D3A80  40 82 00 20 */	bne lbl_803D3AA0
/* 803D3A84  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D3A88  38 80 00 01 */	li r4, 1
/* 803D3A8C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D3A90  3C 63 00 02 */	addis r3, r3, 2
/* 803D3A94  88 03 65 01 */	lbz r0, 0x6501(r3)
/* 803D3A98  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 803D3A9C  98 03 65 01 */	stb r0, 0x6501(r3)
lbl_803D3AA0:
/* 803D3AA0  39 61 00 20 */	addi r11, r1, 0x20
/* 803D3AA4  4B CC 74 79 */	bl func_8009AF1C
/* 803D3AA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D3AAC  7C 08 03 A6 */	mtlr r0
/* 803D3AB0  38 21 00 20 */	addi r1, r1, 0x20
/* 803D3AB4  4E 80 00 20 */	blr 
