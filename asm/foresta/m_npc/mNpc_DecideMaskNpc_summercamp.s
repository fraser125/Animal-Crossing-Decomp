lbl_803D2AFC:
/* 803D2AFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D2B00  7C 08 02 A6 */	mflr r0
/* 803D2B04  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D2B08  39 61 00 20 */	addi r11, r1, 0x20
/* 803D2B0C  4B CC 83 BD */	bl func_8009AEC8
/* 803D2B10  7C 7A 1B 79 */	or. r26, r3, r3
/* 803D2B14  3B 60 00 00 */	li r27, 0
/* 803D2B18  41 82 00 84 */	beq lbl_803D2B9C
/* 803D2B1C  38 00 00 00 */	li r0, 0
/* 803D2B20  B0 1A 00 00 */	sth r0, 0(r26)
/* 803D2B24  4B FF C6 69 */	bl mNpc_ResetHaveAppeared
/* 803D2B28  3C 60 81 17 */	lis r3, looks_table@ha /* 0x8116C554@ha */
/* 803D2B2C  38 80 00 06 */	li r4, 6
/* 803D2B30  38 63 C5 54 */	addi r3, r3, looks_table@l /* 0x8116C554@l */
/* 803D2B34  38 A0 00 EC */	li r5, 0xec
/* 803D2B38  4B FF 87 21 */	bl func_803CB258
/* 803D2B3C  3C 60 81 17 */	lis r3, looks_table@ha /* 0x8116C554@ha */
/* 803D2B40  3B 80 00 00 */	li r28, 0
/* 803D2B44  3B C3 C5 54 */	addi r30, r3, looks_table@l /* 0x8116C554@l */
/* 803D2B48  3B E0 00 00 */	li r31, 0
lbl_803D2B4C:
/* 803D2B4C  7C 1E F8 2E */	lwzx r0, r30, r31
/* 803D2B50  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 803D2B54  7F A3 EB 78 */	mr r3, r29
/* 803D2B58  4B FF C5 21 */	bl mNpc_GetLooks2NotHaveAppearedNum
/* 803D2B5C  2C 03 00 00 */	cmpwi r3, 0
/* 803D2B60  40 81 00 2C */	ble lbl_803D2B8C
/* 803D2B64  7F A3 EB 78 */	mr r3, r29
/* 803D2B68  4B FF F9 A1 */	bl mNpc_GrowLooksNpcIdx
/* 803D2B6C  2C 03 FF FF */	cmpwi r3, -1
/* 803D2B70  41 82 00 1C */	beq lbl_803D2B8C
/* 803D2B74  60 60 E0 00 */	ori r0, r3, 0xe000
/* 803D2B78  B0 1A 00 00 */	sth r0, 0(r26)
/* 803D2B7C  A0 7A 00 00 */	lhz r3, 0(r26)
/* 803D2B80  4B FF C4 51 */	bl mNpc_SetHaveAppeared
/* 803D2B84  3B 60 00 01 */	li r27, 1
/* 803D2B88  48 00 00 14 */	b lbl_803D2B9C
lbl_803D2B8C:
/* 803D2B8C  3B 9C 00 01 */	addi r28, r28, 1
/* 803D2B90  3B FF 00 04 */	addi r31, r31, 4
/* 803D2B94  2C 1C 00 06 */	cmpwi r28, 6
/* 803D2B98  41 80 FF B4 */	blt lbl_803D2B4C
lbl_803D2B9C:
/* 803D2B9C  7F 63 DB 78 */	mr r3, r27
/* 803D2BA0  39 61 00 20 */	addi r11, r1, 0x20
/* 803D2BA4  4B CC 83 71 */	bl func_8009AF14
/* 803D2BA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D2BAC  7C 08 03 A6 */	mtlr r0
/* 803D2BB0  38 21 00 20 */	addi r1, r1, 0x20
/* 803D2BB4  4E 80 00 20 */	blr 
