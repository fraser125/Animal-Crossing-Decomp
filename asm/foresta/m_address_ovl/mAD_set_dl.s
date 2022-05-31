lbl_805C34D4:
/* 805C34D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C34D8  7C 08 02 A6 */	mflr r0
/* 805C34DC  7C 87 23 78 */	mr r7, r4
/* 805C34E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C34E4  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805C34E8  80 C7 00 00 */	lwz r6, 0(r7)
/* 805C34EC  80 84 09 94 */	lwz r4, 0x994(r4)
/* 805C34F0  C0 25 00 18 */	lfs f1, 0x18(r5)
/* 805C34F4  88 04 00 02 */	lbz r0, 2(r4)
/* 805C34F8  C0 45 00 1C */	lfs f2, 0x1c(r5)
/* 805C34FC  28 00 00 00 */	cmplwi r0, 0
/* 805C3500  41 82 00 0C */	beq lbl_805C350C
/* 805C3504  28 00 00 01 */	cmplwi r0, 1
/* 805C3508  40 82 00 14 */	bne lbl_805C351C
lbl_805C350C:
/* 805C350C  7C E4 3B 78 */	mr r4, r7
/* 805C3510  7C C5 33 78 */	mr r5, r6
/* 805C3514  4B FF F8 95 */	bl mAD_set_first_tag
/* 805C3518  48 00 00 10 */	b lbl_805C3528
lbl_805C351C:
/* 805C351C  7C C4 33 78 */	mr r4, r6
/* 805C3520  7C E5 3B 78 */	mr r5, r7
/* 805C3524  4B FF FD DD */	bl mAD_set_addressSel_tag
lbl_805C3528:
/* 805C3528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C352C  7C 08 03 A6 */	mtlr r0
/* 805C3530  38 21 00 10 */	addi r1, r1, 0x10
/* 805C3534  4E 80 00 20 */	blr 
