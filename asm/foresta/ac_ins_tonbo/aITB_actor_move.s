lbl_805A1BD8:
/* 805A1BD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A1BDC  7C 08 02 A6 */	mflr r0
/* 805A1BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A1BE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A1BE8  7C 7F 1B 78 */	mr r31, r3
/* 805A1BEC  93 C1 00 08 */	stw r30, 8(r1)
/* 805A1BF0  7C 9E 23 78 */	mr r30, r4
/* 805A1BF4  4B E3 A4 C5 */	bl mPlib_Get_item_net_catch_label
/* 805A1BF8  7C 03 F8 40 */	cmplw r3, r31
/* 805A1BFC  40 82 00 20 */	bne lbl_805A1C1C
/* 805A1C00  38 00 00 FF */	li r0, 0xff
/* 805A1C04  7F E3 FB 78 */	mr r3, r31
/* 805A1C08  90 1F 02 5C */	stw r0, 0x25c(r31)
/* 805A1C0C  7F C5 F3 78 */	mr r5, r30
/* 805A1C10  38 80 00 01 */	li r4, 1
/* 805A1C14  4B FF FF 79 */	bl aITB_setupAction
/* 805A1C18  48 00 00 58 */	b lbl_805A1C70
lbl_805A1C1C:
/* 805A1C1C  88 7F 02 1E */	lbz r3, 0x21e(r31)
/* 805A1C20  54 60 E7 FE */	rlwinm r0, r3, 0x1c, 0x1f, 0x1f
/* 805A1C24  28 00 00 01 */	cmplwi r0, 1
/* 805A1C28  40 82 00 20 */	bne lbl_805A1C48
/* 805A1C2C  54 60 DF FF */	rlwinm. r0, r3, 0x1b, 0x1f, 0x1f
/* 805A1C30  40 82 00 18 */	bne lbl_805A1C48
/* 805A1C34  7F E3 FB 78 */	mr r3, r31
/* 805A1C38  7F C5 F3 78 */	mr r5, r30
/* 805A1C3C  38 80 00 01 */	li r4, 1
/* 805A1C40  4B FF FF 4D */	bl aITB_setupAction
/* 805A1C44  48 00 00 2C */	b lbl_805A1C70
lbl_805A1C48:
/* 805A1C48  81 9F 01 DC */	lwz r12, 0x1dc(r31)
/* 805A1C4C  7F E3 FB 78 */	mr r3, r31
/* 805A1C50  7F C4 F3 78 */	mr r4, r30
/* 805A1C54  7D 89 03 A6 */	mtctr r12
/* 805A1C58  4E 80 04 21 */	bctrl 
/* 805A1C5C  80 1F 02 34 */	lwz r0, 0x234(r31)
/* 805A1C60  2C 00 00 02 */	cmpwi r0, 2
/* 805A1C64  41 82 00 0C */	beq lbl_805A1C70
/* 805A1C68  7F E3 FB 78 */	mr r3, r31
/* 805A1C6C  4B FF EF B5 */	bl aITB_anime_proc
lbl_805A1C70:
/* 805A1C70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A1C74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A1C78  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A1C7C  7C 08 03 A6 */	mtlr r0
/* 805A1C80  38 21 00 10 */	addi r1, r1, 0x10
/* 805A1C84  4E 80 00 20 */	blr 
