lbl_803A015C:
/* 803A015C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A0160  7C 08 02 A6 */	mflr r0
/* 803A0164  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A0168  39 61 00 30 */	addi r11, r1, 0x30
/* 803A016C  4B CF AD 61 */	bl func_8009AECC
/* 803A0170  7C 7B 1B 78 */	mr r27, r3
/* 803A0174  7C 9C 23 78 */	mr r28, r4
/* 803A0178  4B FF F3 35 */	bl mEvMN_GetEventTypeMap
/* 803A017C  7C 7E 1B 78 */	mr r30, r3
/* 803A0180  2C 1E FF FF */	cmpwi r30, -1
/* 803A0184  41 82 00 C8 */	beq lbl_803A024C
/* 803A0188  4B FF F2 E1 */	bl mEvMN_GetMapIdx
/* 803A018C  2C 03 FF FF */	cmpwi r3, -1
/* 803A0190  41 82 00 BC */	beq lbl_803A024C
/* 803A0194  4B FF F3 D9 */	bl mEvMN_GetJointAllNpcMax
/* 803A0198  7C 7F 1B 79 */	or. r31, r3, r3
/* 803A019C  40 81 00 B0 */	ble lbl_803A024C
/* 803A01A0  3B A0 00 00 */	li r29, 0
/* 803A01A4  48 00 00 A0 */	b lbl_803A0244
lbl_803A01A8:
/* 803A01A8  7F C6 F3 78 */	mr r6, r30
/* 803A01AC  7F A7 EB 78 */	mr r7, r29
/* 803A01B0  38 61 00 08 */	addi r3, r1, 8
/* 803A01B4  38 81 00 10 */	addi r4, r1, 0x10
/* 803A01B8  38 A1 00 0C */	addi r5, r1, 0xc
/* 803A01BC  4B FF F4 91 */	bl mEvMN_GetEventSetUtInBlock
/* 803A01C0  A0 A1 00 08 */	lhz r5, 8(r1)
/* 803A01C4  54 A0 A7 3E */	rlwinm r0, r5, 0x14, 0x1c, 0x1f
/* 803A01C8  2C 00 00 05 */	cmpwi r0, 5
/* 803A01CC  40 82 00 28 */	bne lbl_803A01F4
/* 803A01D0  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 803A01D4  7F 63 DB 78 */	mr r3, r27
/* 803A01D8  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 803A01DC  7F 84 E3 78 */	mr r4, r28
/* 803A01E0  48 00 9C 45 */	bl mFI_CheckStructureArea
/* 803A01E4  2C 03 00 01 */	cmpwi r3, 1
/* 803A01E8  40 82 00 58 */	bne lbl_803A0240
/* 803A01EC  38 60 00 02 */	li r3, 2
/* 803A01F0  48 00 00 60 */	b lbl_803A0250
lbl_803A01F4:
/* 803A01F4  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 803A01F8  38 E0 FF FF */	li r7, -1
/* 803A01FC  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 803A0200  38 00 00 03 */	li r0, 3
lbl_803A0204:
/* 803A0204  7C 86 3A 14 */	add r4, r6, r7
/* 803A0208  39 00 FF FF */	li r8, -1
/* 803A020C  7C 09 03 A6 */	mtctr r0
lbl_803A0210:
/* 803A0210  7C 65 42 14 */	add r3, r5, r8
/* 803A0214  7C 1B 18 00 */	cmpw r27, r3
/* 803A0218  40 82 00 14 */	bne lbl_803A022C
/* 803A021C  7C 1C 20 00 */	cmpw r28, r4
/* 803A0220  40 82 00 0C */	bne lbl_803A022C
/* 803A0224  38 60 00 01 */	li r3, 1
/* 803A0228  48 00 00 28 */	b lbl_803A0250
lbl_803A022C:
/* 803A022C  39 08 00 01 */	addi r8, r8, 1
/* 803A0230  42 00 FF E0 */	bdnz lbl_803A0210
/* 803A0234  38 E7 00 01 */	addi r7, r7, 1
/* 803A0238  2C 07 00 02 */	cmpwi r7, 2
/* 803A023C  41 80 FF C8 */	blt lbl_803A0204
lbl_803A0240:
/* 803A0240  3B BD 00 01 */	addi r29, r29, 1
lbl_803A0244:
/* 803A0244  7C 1D F8 00 */	cmpw r29, r31
/* 803A0248  41 80 FF 60 */	blt lbl_803A01A8
lbl_803A024C:
/* 803A024C  38 60 00 00 */	li r3, 0
lbl_803A0250:
/* 803A0250  39 61 00 30 */	addi r11, r1, 0x30
/* 803A0254  4B CF AC C5 */	bl func_8009AF18
/* 803A0258  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A025C  7C 08 03 A6 */	mtlr r0
/* 803A0260  38 21 00 30 */	addi r1, r1, 0x30
/* 803A0264  4E 80 00 20 */	blr 
