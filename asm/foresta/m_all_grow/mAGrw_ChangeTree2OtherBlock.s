lbl_80373E10:
/* 80373E10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80373E14  7C 08 02 A6 */	mflr r0
/* 80373E18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80373E1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80373E20  4B D2 70 AD */	bl func_8009AECC
/* 80373E24  7C 7B 1B 78 */	mr r27, r3
/* 80373E28  7C BD 2B 78 */	mr r29, r5
/* 80373E2C  7C 9C 23 78 */	mr r28, r4
/* 80373E30  7C DE 33 78 */	mr r30, r6
/* 80373E34  7F A3 EB 78 */	mr r3, r29
/* 80373E38  7F 64 DB 78 */	mr r4, r27
/* 80373E3C  48 03 44 2D */	bl mFI_GetItemNumInBlock
/* 80373E40  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 80373E44  48 00 00 20 */	b lbl_80373E64
lbl_80373E48:
/* 80373E48  7F 63 DB 78 */	mr r3, r27
/* 80373E4C  7F 84 E3 78 */	mr r4, r28
/* 80373E50  7F A5 EB 78 */	mr r5, r29
/* 80373E54  7F E6 FB 78 */	mr r6, r31
/* 80373E58  4B FF FB F5 */	bl mAGrw_ChangeItemBlock
/* 80373E5C  3B FF FF FF */	addi r31, r31, -1
/* 80373E60  3B DE FF FF */	addi r30, r30, -1
lbl_80373E64:
/* 80373E64  2C 1E 00 00 */	cmpwi r30, 0
/* 80373E68  40 81 00 0C */	ble lbl_80373E74
/* 80373E6C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80373E70  40 82 FF D8 */	bne lbl_80373E48
lbl_80373E74:
/* 80373E74  39 61 00 20 */	addi r11, r1, 0x20
/* 80373E78  4B D2 70 A1 */	bl func_8009AF18
/* 80373E7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80373E80  7C 08 03 A6 */	mtlr r0
/* 80373E84  38 21 00 20 */	addi r1, r1, 0x20
/* 80373E88  4E 80 00 20 */	blr 
