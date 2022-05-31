lbl_803FB6B8:
/* 803FB6B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FB6BC  7C 08 02 A6 */	mflr r0
/* 803FB6C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FB6C4  39 61 00 20 */	addi r11, r1, 0x20
/* 803FB6C8  4B C9 F8 05 */	bl func_8009AECC
/* 803FB6CC  7C 7B 1B 78 */	mr r27, r3
/* 803FB6D0  38 00 00 02 */	li r0, 2
/* 803FB6D4  83 A3 00 0C */	lwz r29, 0xc(r3)
/* 803FB6D8  3B DB 00 54 */	addi r30, r27, 0x54
/* 803FB6DC  3B 80 FF FF */	li r28, -1
/* 803FB6E0  38 60 00 00 */	li r3, 0
/* 803FB6E4  38 A0 FF FD */	li r5, -3
/* 803FB6E8  38 80 00 16 */	li r4, 0x16
/* 803FB6EC  7C 09 03 A6 */	mtctr r0
lbl_803FB6F0:
/* 803FB6F0  7C DE 1A 14 */	add r6, r30, r3
/* 803FB6F4  38 63 00 94 */	addi r3, r3, 0x94
/* 803FB6F8  90 A6 00 74 */	stw r5, 0x74(r6)
/* 803FB6FC  90 86 00 78 */	stw r4, 0x78(r6)
/* 803FB700  42 00 FF F0 */	bdnz lbl_803FB6F0
/* 803FB704  28 1D 00 00 */	cmplwi r29, 0
/* 803FB708  41 82 00 68 */	beq lbl_803FB770
/* 803FB70C  3B E0 00 00 */	li r31, 0
lbl_803FB710:
/* 803FB710  7F E5 FB 78 */	mr r5, r31
/* 803FB714  7F A6 EB 78 */	mr r6, r29
/* 803FB718  38 7E 00 74 */	addi r3, r30, 0x74
/* 803FB71C  38 9E 00 78 */	addi r4, r30, 0x78
/* 803FB720  4B FF FB 61 */	bl mCD_CheckThisLandSlot
/* 803FB724  2C 03 00 01 */	cmpwi r3, 1
/* 803FB728  40 82 00 18 */	bne lbl_803FB740
/* 803FB72C  93 FB 00 00 */	stw r31, 0(r27)
/* 803FB730  38 00 00 00 */	li r0, 0
/* 803FB734  3B 80 00 01 */	li r28, 1
/* 803FB738  90 1E 00 78 */	stw r0, 0x78(r30)
/* 803FB73C  48 00 00 34 */	b lbl_803FB770
lbl_803FB740:
/* 803FB740  80 1E 00 78 */	lwz r0, 0x78(r30)
/* 803FB744  2C 00 00 16 */	cmpwi r0, 0x16
/* 803FB748  41 82 00 0C */	beq lbl_803FB754
/* 803FB74C  2C 03 FF FF */	cmpwi r3, -1
/* 803FB750  40 82 00 10 */	bne lbl_803FB760
lbl_803FB754:
/* 803FB754  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 803FB758  4B FF EB 5D */	bl mCD_TransErrorCode
/* 803FB75C  90 7E 00 78 */	stw r3, 0x78(r30)
lbl_803FB760:
/* 803FB760  3B FF 00 01 */	addi r31, r31, 1
/* 803FB764  3B DE 00 94 */	addi r30, r30, 0x94
/* 803FB768  2C 1F 00 02 */	cmpwi r31, 2
/* 803FB76C  41 80 FF A4 */	blt lbl_803FB710
lbl_803FB770:
/* 803FB770  7F 83 E3 78 */	mr r3, r28
/* 803FB774  39 61 00 20 */	addi r11, r1, 0x20
/* 803FB778  4B C9 F7 A1 */	bl func_8009AF18
/* 803FB77C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FB780  7C 08 03 A6 */	mtlr r0
/* 803FB784  38 21 00 20 */	addi r1, r1, 0x20
/* 803FB788  4E 80 00 20 */	blr 
