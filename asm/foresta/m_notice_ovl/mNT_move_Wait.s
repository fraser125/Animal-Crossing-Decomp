lbl_805EB46C:
/* 805EB46C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EB470  7C 08 02 A6 */	mflr r0
/* 805EB474  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EB478  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805EB47C  80 05 03 54 */	lwz r0, 0x354(r5)
/* 805EB480  2C 00 00 04 */	cmpwi r0, 4
/* 805EB484  40 82 00 20 */	bne lbl_805EB4A4
/* 805EB488  38 00 00 03 */	li r0, 3
/* 805EB48C  38 A0 00 01 */	li r5, 1
/* 805EB490  90 04 00 04 */	stw r0, 4(r4)
/* 805EB494  38 80 00 0F */	li r4, 0xf
/* 805EB498  38 C0 00 00 */	li r6, 0
/* 805EB49C  4B E0 42 41 */	bl mSM_open_submenu
/* 805EB4A0  48 00 00 08 */	b lbl_805EB4A8
lbl_805EB4A4:
/* 805EB4A4  4B FF F6 C5 */	bl mNT_roll_control
lbl_805EB4A8:
/* 805EB4A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EB4AC  7C 08 03 A6 */	mtlr r0
/* 805EB4B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805EB4B4  4E 80 00 20 */	blr 
