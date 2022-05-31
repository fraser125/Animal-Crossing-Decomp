lbl_805FB7E4:
/* 805FB7E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FB7E8  7C 08 02 A6 */	mflr r0
/* 805FB7EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FB7F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805FB7F4  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805FB7F8  80 64 09 7C */	lwz r3, 0x97c(r4)
/* 805FB7FC  83 E4 09 DC */	lwz r31, 0x9dc(r4)
/* 805FB800  38 63 00 08 */	addi r3, r3, 8
/* 805FB804  4B FF 43 5D */	bl mTG_get_table_idx
/* 805FB808  38 00 00 01 */	li r0, 1
/* 805FB80C  A0 9F 00 14 */	lhz r4, 0x14(r31)
/* 805FB810  7C 00 18 30 */	slw r0, r0, r3
/* 805FB814  38 60 00 08 */	li r3, 8
/* 805FB818  7C 80 00 39 */	and. r0, r4, r0
/* 805FB81C  41 82 00 08 */	beq lbl_805FB824
/* 805FB820  38 60 00 45 */	li r3, 0x45
lbl_805FB824:
/* 805FB824  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FB828  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805FB82C  7C 08 03 A6 */	mtlr r0
/* 805FB830  38 21 00 10 */	addi r1, r1, 0x10
/* 805FB834  4E 80 00 20 */	blr 
