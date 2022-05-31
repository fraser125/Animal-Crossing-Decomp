lbl_8058E0BC:
/* 8058E0BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058E0C0  7C 08 02 A6 */	mflr r0
/* 8058E0C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058E0C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058E0CC  7C 7F 1B 78 */	mr r31, r3
/* 8058E0D0  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 8058E0D4  28 00 00 FF */	cmplwi r0, 0xff
/* 8058E0D8  40 82 00 3C */	bne lbl_8058E114
/* 8058E0DC  88 1F 07 F5 */	lbz r0, 0x7f5(r31)
/* 8058E0E0  28 00 00 16 */	cmplwi r0, 0x16
/* 8058E0E4  40 82 00 20 */	bne lbl_8058E104
/* 8058E0E8  80 9F 09 94 */	lwz r4, 0x994(r31)
/* 8058E0EC  38 00 00 00 */	li r0, 0
/* 8058E0F0  20 84 00 04 */	subfic r4, r4, 4
/* 8058E0F4  98 1F 07 F6 */	stb r0, 0x7f6(r31)
/* 8058E0F8  7C 80 00 34 */	cntlzw r0, r4
/* 8058E0FC  54 04 D9 7E */	srwi r4, r0, 5
/* 8058E100  4B FF FE DD */	bl aTM1_set_animation
lbl_8058E104:
/* 8058E104  38 00 01 37 */	li r0, 0x137
/* 8058E108  7F E3 FB 78 */	mr r3, r31
/* 8058E10C  90 1F 08 40 */	stw r0, 0x840(r31)
/* 8058E110  4B FF FF 19 */	bl func_8058E028
lbl_8058E114:
/* 8058E114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058E118  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058E11C  7C 08 03 A6 */	mtlr r0
/* 8058E120  38 21 00 10 */	addi r1, r1, 0x10
/* 8058E124  4E 80 00 20 */	blr 
