lbl_805F00A0:
/* 805F00A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F00A4  7C 08 02 A6 */	mflr r0
/* 805F00A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F00AC  39 61 00 20 */	addi r11, r1, 0x20
/* 805F00B0  4B AA AE 1D */	bl func_8009AECC
/* 805F00B4  7C BD 2B 78 */	mr r29, r5
/* 805F00B8  7C 9C 23 78 */	mr r28, r4
/* 805F00BC  7C 7B 1B 78 */	mr r27, r3
/* 805F00C0  7C DE 33 78 */	mr r30, r6
/* 805F00C4  7F A4 EB 78 */	mr r4, r29
/* 805F00C8  38 A0 00 20 */	li r5, 0x20
/* 805F00CC  4B DC C5 59 */	bl func_803BC624
/* 805F00D0  7C 60 1B 78 */	mr r0, r3
/* 805F00D4  7F 83 E3 78 */	mr r3, r28
/* 805F00D8  7C 1F 03 78 */	mr r31, r0
/* 805F00DC  7F C4 F3 78 */	mr r4, r30
/* 805F00E0  38 A0 00 20 */	li r5, 0x20
/* 805F00E4  4B DC C5 41 */	bl func_803BC624
/* 805F00E8  7C 7E 1B 78 */	mr r30, r3
/* 805F00EC  7C 1F F2 14 */	add r0, r31, r30
/* 805F00F0  7C 00 E8 00 */	cmpw r0, r29
/* 805F00F4  40 81 00 0C */	ble lbl_805F0100
/* 805F00F8  7C 1D 00 50 */	subf r0, r29, r0
/* 805F00FC  7F C0 F0 50 */	subf r30, r0, r30
lbl_805F0100:
/* 805F0100  2C 1E 00 00 */	cmpwi r30, 0
/* 805F0104  40 81 00 18 */	ble lbl_805F011C
/* 805F0108  7F 84 E3 78 */	mr r4, r28
/* 805F010C  7F C5 F3 78 */	mr r5, r30
/* 805F0110  7C 7B FA 14 */	add r3, r27, r31
/* 805F0114  4B A1 33 7D */	bl memcpy
/* 805F0118  7F FF F2 14 */	add r31, r31, r30
lbl_805F011C:
/* 805F011C  7F E3 FB 78 */	mr r3, r31
/* 805F0120  39 61 00 20 */	addi r11, r1, 0x20
/* 805F0124  4B AA AD F5 */	bl func_8009AF18
/* 805F0128  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F012C  7C 08 03 A6 */	mtlr r0
/* 805F0130  38 21 00 20 */	addi r1, r1, 0x20
/* 805F0134  4E 80 00 20 */	blr 
