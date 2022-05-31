lbl_805F0138:
/* 805F0138  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F013C  7C 08 02 A6 */	mflr r0
/* 805F0140  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F0144  39 61 00 20 */	addi r11, r1, 0x20
/* 805F0148  4B AA AD 89 */	bl func_8009AED0
/* 805F014C  7C BE 2B 78 */	mr r30, r5
/* 805F0150  7C 9D 23 78 */	mr r29, r4
/* 805F0154  7C 7C 1B 78 */	mr r28, r3
/* 805F0158  7C DF 33 78 */	mr r31, r6
/* 805F015C  7F C4 F3 78 */	mr r4, r30
/* 805F0160  38 A0 00 20 */	li r5, 0x20
/* 805F0164  4B DC A8 E5 */	bl mem_clear
/* 805F0168  7F A3 EB 78 */	mr r3, r29
/* 805F016C  7F E4 FB 78 */	mr r4, r31
/* 805F0170  38 A0 00 20 */	li r5, 0x20
/* 805F0174  4B DC C4 B1 */	bl func_803BC624
/* 805F0178  7C 03 F0 00 */	cmpw r3, r30
/* 805F017C  40 80 00 08 */	bge lbl_805F0184
/* 805F0180  7C 7E 1B 78 */	mr r30, r3
lbl_805F0184:
/* 805F0184  7F 83 E3 78 */	mr r3, r28
/* 805F0188  7F A4 EB 78 */	mr r4, r29
/* 805F018C  7F C5 F3 78 */	mr r5, r30
/* 805F0190  4B A1 33 01 */	bl memcpy
/* 805F0194  7F C3 F3 78 */	mr r3, r30
/* 805F0198  39 61 00 20 */	addi r11, r1, 0x20
/* 805F019C  4B AA AD 81 */	bl func_8009AF1C
/* 805F01A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F01A4  7C 08 03 A6 */	mtlr r0
/* 805F01A8  38 21 00 20 */	addi r1, r1, 0x20
/* 805F01AC  4E 80 00 20 */	blr 
