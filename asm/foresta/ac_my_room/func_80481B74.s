lbl_80481B74:
/* 80481B74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80481B78  7C 08 02 A6 */	mflr r0
/* 80481B7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80481B80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80481B84  7C 9F 23 78 */	mr r31, r4
/* 80481B88  93 C1 00 08 */	stw r30, 8(r1)
/* 80481B8C  7C 7E 1B 78 */	mr r30, r3
/* 80481B90  A0 63 00 00 */	lhz r3, 0(r3)
/* 80481B94  4B FE E6 0D */	bl func_804701A0
/* 80481B98  88 03 00 2B */	lbz r0, 0x2b(r3)
/* 80481B9C  2C 00 00 02 */	cmpwi r0, 2
/* 80481BA0  41 82 00 24 */	beq lbl_80481BC4
/* 80481BA4  40 80 00 2C */	bge lbl_80481BD0
/* 80481BA8  2C 00 00 01 */	cmpwi r0, 1
/* 80481BAC  40 80 00 08 */	bge lbl_80481BB4
/* 80481BB0  48 00 00 20 */	b lbl_80481BD0
lbl_80481BB4:
/* 80481BB4  7F E4 FB 78 */	mr r4, r31
/* 80481BB8  38 7E 00 08 */	addi r3, r30, 8
/* 80481BBC  4B EF 43 C1 */	bl Setpos_HiliteReflect_init
/* 80481BC0  48 00 00 10 */	b lbl_80481BD0
lbl_80481BC4:
/* 80481BC4  7F E4 FB 78 */	mr r4, r31
/* 80481BC8  38 7E 00 08 */	addi r3, r30, 8
/* 80481BCC  4B EF 44 4D */	bl Setpos_HiliteReflect_xlu_init
lbl_80481BD0:
/* 80481BD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80481BD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80481BD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80481BDC  7C 08 03 A6 */	mtlr r0
/* 80481BE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80481BE4  4E 80 00 20 */	blr 
