lbl_803FB0DC:
/* 803FB0DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FB0E0  7C 08 02 A6 */	mflr r0
/* 803FB0E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FB0E8  39 61 00 20 */	addi r11, r1, 0x20
/* 803FB0EC  4B C9 FD E9 */	bl func_8009AED4
/* 803FB0F0  7C 9E 23 79 */	or. r30, r4, r4
/* 803FB0F4  7C 7D 1B 78 */	mr r29, r3
/* 803FB0F8  3B E0 00 00 */	li r31, 0
/* 803FB0FC  41 82 00 48 */	beq lbl_803FB144
/* 803FB100  7F C3 F3 78 */	mr r3, r30
/* 803FB104  38 C1 00 08 */	addi r6, r1, 8
/* 803FB108  38 80 00 00 */	li r4, 0
/* 803FB10C  4B FF F8 B5 */	bl mCD_load_file
/* 803FB110  2C 03 00 01 */	cmpwi r3, 1
/* 803FB114  40 82 00 30 */	bne lbl_803FB144
/* 803FB118  38 7E 14 40 */	addi r3, r30, 0x1440
/* 803FB11C  4B FF F5 FD */	bl mCD_CheckProtectCode
/* 803FB120  2C 03 00 01 */	cmpwi r3, 1
/* 803FB124  40 82 00 20 */	bne lbl_803FB144
/* 803FB128  28 1D 00 00 */	cmplwi r29, 0
/* 803FB12C  41 82 00 14 */	beq lbl_803FB140
/* 803FB130  7F A4 EB 78 */	mr r4, r29
/* 803FB134  38 7E 14 40 */	addi r3, r30, 0x1440
/* 803FB138  38 A0 00 08 */	li r5, 8
/* 803FB13C  4B C6 1E E1 */	bl func_8005D01C
lbl_803FB140:
/* 803FB140  3B E0 00 01 */	li r31, 1
lbl_803FB144:
/* 803FB144  7F E3 FB 78 */	mr r3, r31
/* 803FB148  39 61 00 20 */	addi r11, r1, 0x20
/* 803FB14C  4B C9 FD D5 */	bl func_8009AF20
/* 803FB150  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FB154  7C 08 03 A6 */	mtlr r0
/* 803FB158  38 21 00 20 */	addi r1, r1, 0x20
/* 803FB15C  4E 80 00 20 */	blr 
