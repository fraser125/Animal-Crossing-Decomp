lbl_8049BF9C:
/* 8049BF9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049BFA0  7C 08 02 A6 */	mflr r0
/* 8049BFA4  7D 23 4B 78 */	mr r3, r9
/* 8049BFA8  7C A4 2B 78 */	mr r4, r5
/* 8049BFAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049BFB0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8049BFB4  7C 05 03 78 */	mr r5, r0
/* 8049BFB8  4B FF F9 19 */	bl aSOI_ins_field_attr_and_fg_check_get
/* 8049BFBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049BFC0  7C 08 03 A6 */	mtlr r0
/* 8049BFC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8049BFC8  4E 80 00 20 */	blr 
