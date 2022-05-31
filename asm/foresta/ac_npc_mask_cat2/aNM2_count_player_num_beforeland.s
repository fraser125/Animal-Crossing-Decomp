lbl_8055F9AC:
/* 8055F9AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055F9B0  7C 08 02 A6 */	mflr r0
/* 8055F9B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055F9B8  39 61 00 20 */	addi r11, r1, 0x20
/* 8055F9BC  4B B3 B5 15 */	bl func_8009AED0
/* 8055F9C0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8055F9C4  7C 7C 1B 78 */	mr r28, r3
/* 8055F9C8  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8055F9CC  3B A0 00 00 */	li r29, 0
/* 8055F9D0  3F E3 00 03 */	addis r31, r3, 3
/* 8055F9D4  3B C0 00 00 */	li r30, 0
/* 8055F9D8  3B FF DB 52 */	addi r31, r31, -9390
lbl_8055F9DC:
/* 8055F9DC  7F E3 FB 78 */	mr r3, r31
/* 8055F9E0  4B E8 06 65 */	bl mPr_NullCheckPersonalID
/* 8055F9E4  2C 03 00 00 */	cmpwi r3, 0
/* 8055F9E8  40 82 00 1C */	bne lbl_8055FA04
/* 8055F9EC  7F E3 FB 78 */	mr r3, r31
/* 8055F9F0  7F 84 E3 78 */	mr r4, r28
/* 8055F9F4  38 A0 00 08 */	li r5, 8
/* 8055F9F8  4B AF D6 25 */	bl func_8005D01C
/* 8055F9FC  3B 9C 00 08 */	addi r28, r28, 8
/* 8055FA00  3B BD 00 01 */	addi r29, r29, 1
lbl_8055FA04:
/* 8055FA04  3B DE 00 01 */	addi r30, r30, 1
/* 8055FA08  3B FF 00 14 */	addi r31, r31, 0x14
/* 8055FA0C  2C 1E 00 04 */	cmpwi r30, 4
/* 8055FA10  41 80 FF CC */	blt lbl_8055F9DC
/* 8055FA14  7F A3 EB 78 */	mr r3, r29
/* 8055FA18  39 61 00 20 */	addi r11, r1, 0x20
/* 8055FA1C  4B B3 B5 01 */	bl func_8009AF1C
/* 8055FA20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055FA24  7C 08 03 A6 */	mtlr r0
/* 8055FA28  38 21 00 20 */	addi r1, r1, 0x20
/* 8055FA2C  4E 80 00 20 */	blr 
