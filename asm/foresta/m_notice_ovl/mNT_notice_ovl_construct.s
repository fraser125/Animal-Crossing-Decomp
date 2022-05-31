lbl_805EC3FC:
/* 805EC3FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EC400  7C 08 02 A6 */	mflr r0
/* 805EC404  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EC408  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EC40C  7C 7F 1B 78 */	mr r31, r3
/* 805EC410  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805EC414  80 05 09 B8 */	lwz r0, 0x9b8(r5)
/* 805EC418  28 00 00 00 */	cmplwi r0, 0
/* 805EC41C  40 82 00 18 */	bne lbl_805EC434
/* 805EC420  3C 80 81 21 */	lis r4, notice_ovl_data@ha /* 0x81212608@ha */
/* 805EC424  38 65 02 04 */	addi r3, r5, 0x204
/* 805EC428  38 04 26 08 */	addi r0, r4, notice_ovl_data@l /* 0x81212608@l */
/* 805EC42C  90 05 09 B8 */	stw r0, 0x9b8(r5)
/* 805EC430  4B FF F2 FD */	bl mNT_notice_draw_init
lbl_805EC434:
/* 805EC434  7F E3 FB 78 */	mr r3, r31
/* 805EC438  4B FF FF 3D */	bl mNT_notice_ovl_init
/* 805EC43C  7F E3 FB 78 */	mr r3, r31
/* 805EC440  4B FF FF 15 */	bl mNT_notice_ovl_set_proc
/* 805EC444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EC448  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EC44C  7C 08 03 A6 */	mtlr r0
/* 805EC450  38 21 00 10 */	addi r1, r1, 0x10
/* 805EC454  4E 80 00 20 */	blr 
