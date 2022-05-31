lbl_803A79A0:
/* 803A79A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A79A4  7C 08 02 A6 */	mflr r0
/* 803A79A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A79AC  39 61 00 30 */	addi r11, r1, 0x30
/* 803A79B0  4B CF 35 15 */	bl func_8009AEC4
/* 803A79B4  7C 79 1B 78 */	mr r25, r3
/* 803A79B8  7C 9A 23 78 */	mr r26, r4
/* 803A79BC  7C BB 2B 78 */	mr r27, r5
/* 803A79C0  7C DC 33 78 */	mr r28, r6
/* 803A79C4  7C FD 3B 78 */	mr r29, r7
/* 803A79C8  3B E0 00 00 */	li r31, 0
/* 803A79CC  48 00 00 90 */	b lbl_803A7A5C
lbl_803A79D0:
/* 803A79D0  88 79 00 00 */	lbz r3, 0(r25)
/* 803A79D4  7C 63 07 74 */	extsb r3, r3
/* 803A79D8  2C 03 FF FF */	cmpwi r3, -1
/* 803A79DC  41 82 00 78 */	beq lbl_803A7A54
/* 803A79E0  88 99 00 01 */	lbz r4, 1(r25)
/* 803A79E4  7C 84 07 74 */	extsb r4, r4
/* 803A79E8  2C 04 FF FF */	cmpwi r4, -1
/* 803A79EC  41 82 00 68 */	beq lbl_803A7A54
/* 803A79F0  7F 65 DB 78 */	mr r5, r27
/* 803A79F4  7F 86 E3 78 */	mr r6, r28
/* 803A79F8  3B C0 00 00 */	li r30, 0
/* 803A79FC  7F A9 03 A6 */	mtctr r29
/* 803A7A00  2C 1D 00 00 */	cmpwi r29, 0
/* 803A7A04  40 81 00 3C */	ble lbl_803A7A40
lbl_803A7A08:
/* 803A7A08  80 05 00 00 */	lwz r0, 0(r5)
/* 803A7A0C  7C 00 18 00 */	cmpw r0, r3
/* 803A7A10  40 82 00 20 */	bne lbl_803A7A30
/* 803A7A14  80 06 00 00 */	lwz r0, 0(r6)
/* 803A7A18  7C 00 20 00 */	cmpw r0, r4
/* 803A7A1C  40 82 00 14 */	bne lbl_803A7A30
/* 803A7A20  7F E3 FB 78 */	mr r3, r31
/* 803A7A24  7F C4 F3 78 */	mr r4, r30
/* 803A7A28  4B FF FF 41 */	bl mFI_SetOldItemTableIdx
/* 803A7A2C  48 00 00 14 */	b lbl_803A7A40
lbl_803A7A30:
/* 803A7A30  38 A5 00 04 */	addi r5, r5, 4
/* 803A7A34  38 C6 00 04 */	addi r6, r6, 4
/* 803A7A38  3B DE 00 01 */	addi r30, r30, 1
/* 803A7A3C  42 00 FF CC */	bdnz lbl_803A7A08
lbl_803A7A40:
/* 803A7A40  7C 1E E8 00 */	cmpw r30, r29
/* 803A7A44  40 82 00 10 */	bne lbl_803A7A54
/* 803A7A48  7F E3 FB 78 */	mr r3, r31
/* 803A7A4C  38 80 FF FF */	li r4, -1
/* 803A7A50  4B FF FF 19 */	bl mFI_SetOldItemTableIdx
lbl_803A7A54:
/* 803A7A54  3B 39 00 10 */	addi r25, r25, 0x10
/* 803A7A58  3B FF 00 01 */	addi r31, r31, 1
lbl_803A7A5C:
/* 803A7A5C  7C 1F D0 00 */	cmpw r31, r26
/* 803A7A60  41 80 FF 70 */	blt lbl_803A79D0
/* 803A7A64  39 61 00 30 */	addi r11, r1, 0x30
/* 803A7A68  4B CF 34 A9 */	bl func_8009AF10
/* 803A7A6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A7A70  7C 08 03 A6 */	mtlr r0
/* 803A7A74  38 21 00 30 */	addi r1, r1, 0x30
/* 803A7A78  4E 80 00 20 */	blr 
