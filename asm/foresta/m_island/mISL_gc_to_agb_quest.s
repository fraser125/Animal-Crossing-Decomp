lbl_803B50FC:
/* 803B50FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B5100  7C 08 02 A6 */	mflr r0
/* 803B5104  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B5108  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B510C  7C 9F 23 78 */	mr r31, r4
/* 803B5110  93 C1 00 08 */	stw r30, 8(r1)
/* 803B5114  7C 7E 1B 78 */	mr r30, r3
/* 803B5118  4B FF FE 51 */	bl mISL_gc_to_agb_qclass
/* 803B511C  38 7E 00 0C */	addi r3, r30, 0xc
/* 803B5120  38 9F 00 0C */	addi r4, r31, 0xc
/* 803B5124  38 A0 00 01 */	li r5, 1
/* 803B5128  4B FF EF F5 */	bl mISL_short
/* 803B512C  38 7E 00 10 */	addi r3, r30, 0x10
/* 803B5130  38 9F 00 0E */	addi r4, r31, 0xe
/* 803B5134  4B FF FB 59 */	bl mISL_gc_to_agb_personal
/* 803B5138  88 1F 00 22 */	lbz r0, 0x22(r31)
/* 803B513C  38 7E 00 28 */	addi r3, r30, 0x28
/* 803B5140  38 9F 00 24 */	addi r4, r31, 0x24
/* 803B5144  98 1E 00 24 */	stb r0, 0x24(r30)
/* 803B5148  4B FF FF 6D */	bl mISL_gc_to_agb_qdata
/* 803B514C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B5150  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B5154  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B5158  7C 08 03 A6 */	mtlr r0
/* 803B515C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B5160  4E 80 00 20 */	blr 
