lbl_8037A61C:
/* 8037A61C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037A620  7C 08 02 A6 */	mflr r0
/* 8037A624  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037A628  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037A62C  7C 7F 1B 78 */	mr r31, r3
/* 8037A630  88 63 00 00 */	lbz r3, 0(r3)
/* 8037A634  28 03 00 7F */	cmplwi r3, 0x7f
/* 8037A638  41 82 00 14 */	beq lbl_8037A64C
/* 8037A63C  A0 9F 00 04 */	lhz r4, 4(r31)
/* 8037A640  48 00 1F 29 */	bl mBGMPsComp_delete_ps_fieldNorm
/* 8037A644  38 00 00 7F */	li r0, 0x7f
/* 8037A648  98 1F 00 00 */	stb r0, 0(r31)
lbl_8037A64C:
/* 8037A64C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037A650  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037A654  7C 08 03 A6 */	mtlr r0
/* 8037A658  38 21 00 10 */	addi r1, r1, 0x10
/* 8037A65C  4E 80 00 20 */	blr 
