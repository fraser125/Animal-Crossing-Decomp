lbl_8041BCDC:
/* 8041BCDC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8041BCE0  7C 08 02 A6 */	mflr r0
/* 8041BCE4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8041BCE8  39 61 00 40 */	addi r11, r1, 0x40
/* 8041BCEC  4B C7 F1 DD */	bl func_8009AEC8
/* 8041BCF0  38 00 58 10 */	li r0, 0x5810
/* 8041BCF4  7C 7A 1B 78 */	mr r26, r3
/* 8041BCF8  B0 01 00 08 */	sth r0, 8(r1)
/* 8041BCFC  7C 9B 23 78 */	mr r27, r4
/* 8041BD00  7C BC 2B 78 */	mr r28, r5
/* 8041BD04  7C DD 33 78 */	mr r29, r6
/* 8041BD08  4B F8 8F C5 */	bl mFI_GetFieldId
/* 8041BD0C  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8041BD10  41 82 00 0C */	beq lbl_8041BD1C
/* 8041BD14  38 60 00 00 */	li r3, 0
/* 8041BD18  48 00 01 90 */	b lbl_8041BEA8
lbl_8041BD1C:
/* 8041BD1C  57 BF 06 3E */	clrlwi r31, r29, 0x18
/* 8041BD20  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041BD24  7F E4 FB 78 */	mr r4, r31
/* 8041BD28  4B F8 25 85 */	bl mEv_get_common_place
/* 8041BD2C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8041BD30  41 82 00 34 */	beq lbl_8041BD64
/* 8041BD34  80 9E 00 04 */	lwz r4, 4(r30)
/* 8041BD38  38 61 00 08 */	addi r3, r1, 8
/* 8041BD3C  80 BE 00 00 */	lwz r5, 0(r30)
/* 8041BD40  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 8041BD44  80 FE 00 08 */	lwz r7, 8(r30)
/* 8041BD48  4B F8 B7 A9 */	bl mFI_GetBlockUtNum2FG
/* 8041BD4C  A0 01 00 08 */	lhz r0, 8(r1)
/* 8041BD50  28 00 58 10 */	cmplwi r0, 0x5810
/* 8041BD54  41 80 00 0C */	blt lbl_8041BD60
/* 8041BD58  28 00 58 24 */	cmplwi r0, 0x5824
/* 8041BD5C  40 81 00 08 */	ble lbl_8041BD64
lbl_8041BD60:
/* 8041BD60  3B C0 00 00 */	li r30, 0
lbl_8041BD64:
/* 8041BD64  28 1E 00 00 */	cmplwi r30, 0
/* 8041BD68  40 82 01 04 */	bne lbl_8041BE6C
/* 8041BD6C  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041BD70  38 80 00 77 */	li r4, 0x77
/* 8041BD74  4B F8 20 59 */	bl mEv_get_save_area
/* 8041BD78  7C 7E 1B 79 */	or. r30, r3, r3
/* 8041BD7C  41 82 00 50 */	beq lbl_8041BDCC
/* 8041BD80  7F C4 F3 78 */	mr r4, r30
/* 8041BD84  38 61 00 0C */	addi r3, r1, 0xc
/* 8041BD88  38 A0 00 14 */	li r5, 0x14
/* 8041BD8C  4B BE 77 05 */	bl memcpy
/* 8041BD90  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8041BD94  38 61 00 08 */	addi r3, r1, 8
/* 8041BD98  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8041BD9C  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 8041BDA0  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 8041BDA4  4B F8 B7 4D */	bl mFI_GetBlockUtNum2FG
/* 8041BDA8  A0 01 00 08 */	lhz r0, 8(r1)
/* 8041BDAC  28 00 58 10 */	cmplwi r0, 0x5810
/* 8041BDB0  41 80 00 0C */	blt lbl_8041BDBC
/* 8041BDB4  28 00 58 24 */	cmplwi r0, 0x5824
/* 8041BDB8  40 81 00 14 */	ble lbl_8041BDCC
lbl_8041BDBC:
/* 8041BDBC  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041BDC0  38 80 00 77 */	li r4, 0x77
/* 8041BDC4  4B F8 20 79 */	bl mEv_clear_save_area
/* 8041BDC8  3B C0 00 00 */	li r30, 0
lbl_8041BDCC:
/* 8041BDCC  28 1E 00 00 */	cmplwi r30, 0
/* 8041BDD0  40 82 00 68 */	bne lbl_8041BE38
/* 8041BDD4  B3 81 00 1C */	sth r28, 0x1c(r1)
/* 8041BDD8  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 8041BDDC  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 8041BDE0  7F 43 D3 78 */	mr r3, r26
/* 8041BDE4  80 FB 00 00 */	lwz r7, 0(r27)
/* 8041BDE8  7C C0 22 14 */	add r6, r0, r4
/* 8041BDEC  38 81 00 0C */	addi r4, r1, 0xc
/* 8041BDF0  38 A1 00 14 */	addi r5, r1, 0x14
/* 8041BDF4  7C C7 32 14 */	add r6, r7, r6
/* 8041BDF8  4B FF F6 C9 */	bl get_unit_lot4sale
/* 8041BDFC  2C 03 00 00 */	cmpwi r3, 0
/* 8041BE00  40 82 00 18 */	bne lbl_8041BE18
/* 8041BE04  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041BE08  38 80 00 20 */	li r4, 0x20
/* 8041BE0C  4B F8 1B C5 */	bl mEv_set_status
/* 8041BE10  38 60 00 00 */	li r3, 0
/* 8041BE14  48 00 00 94 */	b lbl_8041BEA8
lbl_8041BE18:
/* 8041BE18  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041BE1C  38 80 00 77 */	li r4, 0x77
/* 8041BE20  4B F8 1E 05 */	bl mEv_reserve_save_area
/* 8041BE24  28 03 00 00 */	cmplwi r3, 0
/* 8041BE28  41 82 00 10 */	beq lbl_8041BE38
/* 8041BE2C  38 81 00 0C */	addi r4, r1, 0xc
/* 8041BE30  38 A0 00 14 */	li r5, 0x14
/* 8041BE34  4B BE 76 5D */	bl memcpy
lbl_8041BE38:
/* 8041BE38  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041BE3C  7F E4 FB 78 */	mr r4, r31
/* 8041BE40  4B F8 23 85 */	bl mEv_reserve_common_place
/* 8041BE44  7C 7E 1B 79 */	or. r30, r3, r3
/* 8041BE48  40 82 00 18 */	bne lbl_8041BE60
/* 8041BE4C  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041BE50  38 80 00 20 */	li r4, 0x20
/* 8041BE54  4B F8 1B 7D */	bl mEv_set_status
/* 8041BE58  38 60 00 00 */	li r3, 0
/* 8041BE5C  48 00 00 4C */	b lbl_8041BEA8
lbl_8041BE60:
/* 8041BE60  38 81 00 0C */	addi r4, r1, 0xc
/* 8041BE64  38 A0 00 14 */	li r5, 0x14
/* 8041BE68  4B BE 76 29 */	bl memcpy
lbl_8041BE6C:
/* 8041BE6C  A0 7E 00 10 */	lhz r3, 0x10(r30)
/* 8041BE70  39 00 00 00 */	li r8, 0
/* 8041BE74  80 9E 00 04 */	lwz r4, 4(r30)
/* 8041BE78  80 BE 00 00 */	lwz r5, 0(r30)
/* 8041BE7C  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 8041BE80  80 FE 00 08 */	lwz r7, 8(r30)
/* 8041BE84  4B F8 DE 19 */	bl mFI_SetFGStructure_common
/* 8041BE88  2C 03 00 00 */	cmpwi r3, 0
/* 8041BE8C  40 82 00 18 */	bne lbl_8041BEA4
/* 8041BE90  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041BE94  38 80 00 20 */	li r4, 0x20
/* 8041BE98  4B F8 1B 39 */	bl mEv_set_status
/* 8041BE9C  38 60 00 00 */	li r3, 0
/* 8041BEA0  48 00 00 08 */	b lbl_8041BEA8
lbl_8041BEA4:
/* 8041BEA4  7F C3 F3 78 */	mr r3, r30
lbl_8041BEA8:
/* 8041BEA8  39 61 00 40 */	addi r11, r1, 0x40
/* 8041BEAC  4B C7 F0 69 */	bl func_8009AF14
/* 8041BEB0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8041BEB4  7C 08 03 A6 */	mtlr r0
/* 8041BEB8  38 21 00 40 */	addi r1, r1, 0x40
/* 8041BEBC  4E 80 00 20 */	blr 
