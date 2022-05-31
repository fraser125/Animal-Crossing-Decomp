lbl_803E2D10:
/* 803E2D10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E2D14  7C 08 02 A6 */	mflr r0
/* 803E2D18  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E2D1C  39 61 00 20 */	addi r11, r1, 0x20
/* 803E2D20  4B CB 81 B1 */	bl func_8009AED0
/* 803E2D24  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E2D28  7C 7C 1B 78 */	mr r28, r3
/* 803E2D2C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803E2D30  3B E0 FF FF */	li r31, -1
/* 803E2D34  3C 63 00 02 */	addis r3, r3, 2
/* 803E2D38  3B C0 00 00 */	li r30, 0
/* 803E2D3C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803E2D40  3B A3 00 94 */	addi r29, r3, 0x94
lbl_803E2D44:
/* 803E2D44  7F A3 EB 78 */	mr r3, r29
/* 803E2D48  4B FF FE 89 */	bl mQst_CheckFreeQuest
/* 803E2D4C  2C 03 00 00 */	cmpwi r3, 0
/* 803E2D50  40 82 00 24 */	bne lbl_803E2D74
/* 803E2D54  88 7D 00 00 */	lbz r3, 0(r29)
/* 803E2D58  54 60 D7 BF */	rlwinm. r0, r3, 0x1a, 0x1e, 0x1f
/* 803E2D5C  40 82 00 18 */	bne lbl_803E2D74
/* 803E2D60  54 60 06 BE */	clrlwi r0, r3, 0x1a
/* 803E2D64  7C 00 E0 40 */	cmplw r0, r28
/* 803E2D68  40 82 00 0C */	bne lbl_803E2D74
/* 803E2D6C  7F DF F3 78 */	mr r31, r30
/* 803E2D70  48 00 00 14 */	b lbl_803E2D84
lbl_803E2D74:
/* 803E2D74  3B DE 00 01 */	addi r30, r30, 1
/* 803E2D78  3B BD 00 28 */	addi r29, r29, 0x28
/* 803E2D7C  2C 1E 00 0F */	cmpwi r30, 0xf
/* 803E2D80  41 80 FF C4 */	blt lbl_803E2D44
lbl_803E2D84:
/* 803E2D84  7F E3 FB 78 */	mr r3, r31
/* 803E2D88  39 61 00 20 */	addi r11, r1, 0x20
/* 803E2D8C  4B CB 81 91 */	bl func_8009AF1C
/* 803E2D90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E2D94  7C 08 03 A6 */	mtlr r0
/* 803E2D98  38 21 00 20 */	addi r1, r1, 0x20
/* 803E2D9C  4E 80 00 20 */	blr 
