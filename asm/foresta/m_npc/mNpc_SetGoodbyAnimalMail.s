lbl_803D0DF0:
/* 803D0DF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D0DF4  7C 08 02 A6 */	mflr r0
/* 803D0DF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D0DFC  39 61 00 20 */	addi r11, r1, 0x20
/* 803D0E00  4B CC A0 D1 */	bl func_8009AED0
/* 803D0E04  7C 9D 23 79 */	or. r29, r4, r4
/* 803D0E08  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D0E0C  7C 7C 1B 78 */	mr r28, r3
/* 803D0E10  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803D0E14  3B C3 00 20 */	addi r30, r3, 0x20
/* 803D0E18  41 82 00 60 */	beq lbl_803D0E78
/* 803D0E1C  7F A3 EB 78 */	mr r3, r29
/* 803D0E20  4B FF A5 BD */	bl mNpc_CheckFreeAnimalPersonalID
/* 803D0E24  2C 03 00 00 */	cmpwi r3, 0
/* 803D0E28  40 82 00 50 */	bne lbl_803D0E78
/* 803D0E2C  7F 83 E3 78 */	mr r3, r28
/* 803D0E30  4B FF FF 65 */	bl mNpc_ClearGoodbyMail
/* 803D0E34  7F 83 E3 78 */	mr r3, r28
/* 803D0E38  7F A4 EB 78 */	mr r4, r29
/* 803D0E3C  4B FF A5 D5 */	bl mNpc_CopyAnimalPersonalID
/* 803D0E40  3B A0 00 00 */	li r29, 0
/* 803D0E44  3B E0 00 01 */	li r31, 1
lbl_803D0E48:
/* 803D0E48  7F C3 F3 78 */	mr r3, r30
/* 803D0E4C  48 00 F1 F9 */	bl mPr_NullCheckPersonalID
/* 803D0E50  2C 03 00 00 */	cmpwi r3, 0
/* 803D0E54  40 82 00 14 */	bne lbl_803D0E68
/* 803D0E58  88 7C 00 0E */	lbz r3, 0xe(r28)
/* 803D0E5C  7F E0 E8 30 */	slw r0, r31, r29
/* 803D0E60  7C 60 03 78 */	or r0, r3, r0
/* 803D0E64  98 1C 00 0E */	stb r0, 0xe(r28)
lbl_803D0E68:
/* 803D0E68  3B BD 00 01 */	addi r29, r29, 1
/* 803D0E6C  3B DE 24 40 */	addi r30, r30, 0x2440
/* 803D0E70  2C 1D 00 04 */	cmpwi r29, 4
/* 803D0E74  41 80 FF D4 */	blt lbl_803D0E48
lbl_803D0E78:
/* 803D0E78  39 61 00 20 */	addi r11, r1, 0x20
/* 803D0E7C  4B CC A0 A1 */	bl func_8009AF1C
/* 803D0E80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D0E84  7C 08 03 A6 */	mtlr r0
/* 803D0E88  38 21 00 20 */	addi r1, r1, 0x20
/* 803D0E8C  4E 80 00 20 */	blr 
