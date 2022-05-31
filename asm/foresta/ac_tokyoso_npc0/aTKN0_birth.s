lbl_8058B9C4:
/* 8058B9C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058B9C8  7C 08 02 A6 */	mflr r0
/* 8058B9CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058B9D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058B9D4  7C 9F 23 78 */	mr r31, r4
/* 8058B9D8  38 80 00 08 */	li r4, 8
/* 8058B9DC  93 C1 00 08 */	stw r30, 8(r1)
/* 8058B9E0  7C 7E 1B 78 */	mr r30, r3
/* 8058B9E4  38 60 00 0F */	li r3, 0xf
/* 8058B9E8  4B E1 23 E5 */	bl mEv_get_save_area
/* 8058B9EC  28 03 00 00 */	cmplwi r3, 0
/* 8058B9F0  41 82 00 28 */	beq lbl_8058BA18
/* 8058B9F4  88 03 00 00 */	lbz r0, 0(r3)
/* 8058B9F8  28 00 00 01 */	cmplwi r0, 1
/* 8058B9FC  40 82 00 1C */	bne lbl_8058BA18
/* 8058BA00  38 00 00 02 */	li r0, 2
/* 8058BA04  7F E4 FB 78 */	mr r4, r31
/* 8058BA08  98 03 00 00 */	stb r0, 0(r3)
/* 8058BA0C  7F C3 F3 78 */	mr r3, r30
/* 8058BA10  38 A0 00 02 */	li r5, 2
/* 8058BA14  48 00 05 8D */	bl aTKN0_setup_think_proc
lbl_8058BA18:
/* 8058BA18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058BA1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058BA20  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058BA24  7C 08 03 A6 */	mtlr r0
/* 8058BA28  38 21 00 10 */	addi r1, r1, 0x10
/* 8058BA2C  4E 80 00 20 */	blr 
