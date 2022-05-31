lbl_8051EBE0:
/* 8051EBE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051EBE4  7C 08 02 A6 */	mflr r0
/* 8051EBE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051EBEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051EBF0  7C 9F 23 78 */	mr r31, r4
/* 8051EBF4  93 C1 00 08 */	stw r30, 8(r1)
/* 8051EBF8  7C 7E 1B 78 */	mr r30, r3
/* 8051EBFC  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 8051EC00  4B E5 19 21 */	bl cKF_FrameControl_stop_proc
/* 8051EC04  2C 03 00 01 */	cmpwi r3, 1
/* 8051EC08  40 82 00 20 */	bne lbl_8051EC28
/* 8051EC0C  88 BE 09 A2 */	lbz r5, 0x9a2(r30)
/* 8051EC10  7F C3 F3 78 */	mr r3, r30
/* 8051EC14  7F E4 FB 78 */	mr r4, r31
/* 8051EC18  38 05 00 01 */	addi r0, r5, 1
/* 8051EC1C  98 1E 09 A2 */	stb r0, 0x9a2(r30)
/* 8051EC20  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8051EC24  48 00 02 19 */	bl aEDZ_setup_think_proc
lbl_8051EC28:
/* 8051EC28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051EC2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051EC30  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051EC34  7C 08 03 A6 */	mtlr r0
/* 8051EC38  38 21 00 10 */	addi r1, r1, 0x10
/* 8051EC3C  4E 80 00 20 */	blr 
