lbl_80543428:
/* 80543428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054342C  7C 08 02 A6 */	mflr r0
/* 80543430  90 01 00 14 */	stw r0, 0x14(r1)
/* 80543434  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80543438  7C 7F 1B 78 */	mr r31, r3
/* 8054343C  80 63 01 7C */	lwz r3, 0x17c(r3)
/* 80543440  4B E9 40 49 */	bl func_803D7488
/* 80543444  28 03 00 00 */	cmplwi r3, 0
/* 80543448  40 82 00 18 */	bne lbl_80543460
/* 8054344C  38 7F 07 E0 */	addi r3, r31, 0x7e0
/* 80543450  38 00 00 04 */	li r0, 4
/* 80543454  98 1F 07 E8 */	stb r0, 0x7e8(r31)
/* 80543458  98 1F 07 DC */	stb r0, 0x7dc(r31)
/* 8054345C  48 00 00 0C */	b lbl_80543468
lbl_80543460:
/* 80543460  88 03 00 08 */	lbz r0, 8(r3)
/* 80543464  98 1F 07 DC */	stb r0, 0x7dc(r31)
lbl_80543468:
/* 80543468  90 7F 01 84 */	stw r3, 0x184(r31)
/* 8054346C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80543470  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80543474  7C 08 03 A6 */	mtlr r0
/* 80543478  38 21 00 10 */	addi r1, r1, 0x10
/* 8054347C  4E 80 00 20 */	blr 
