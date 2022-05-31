lbl_8053AC58:
/* 8053AC58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053AC5C  7C 08 02 A6 */	mflr r0
/* 8053AC60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053AC64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053AC68  3B E3 01 74 */	addi r31, r3, 0x174
/* 8053AC6C  93 C1 00 08 */	stw r30, 8(r1)
/* 8053AC70  3B C0 00 00 */	li r30, 0
lbl_8053AC74:
/* 8053AC74  A0 7F 00 04 */	lhz r3, 4(r31)
/* 8053AC78  28 03 00 00 */	cmplwi r3, 0
/* 8053AC7C  41 82 00 70 */	beq lbl_8053ACEC
/* 8053AC80  88 1F 00 00 */	lbz r0, 0(r31)
/* 8053AC84  28 00 00 01 */	cmplwi r0, 1
/* 8053AC88  40 82 00 64 */	bne lbl_8053ACEC
/* 8053AC8C  28 03 FE 20 */	cmplwi r3, 0xfe20
/* 8053AC90  38 00 00 00 */	li r0, 0
/* 8053AC94  41 82 00 14 */	beq lbl_8053ACA8
/* 8053AC98  28 03 24 00 */	cmplwi r3, 0x2400
/* 8053AC9C  41 80 00 10 */	blt lbl_8053ACAC
/* 8053ACA0  28 03 24 FF */	cmplwi r3, 0x24ff
/* 8053ACA4  40 80 00 08 */	bge lbl_8053ACAC
lbl_8053ACA8:
/* 8053ACA8  38 00 00 01 */	li r0, 1
lbl_8053ACAC:
/* 8053ACAC  2C 00 00 00 */	cmpwi r0, 0
/* 8053ACB0  40 82 00 0C */	bne lbl_8053ACBC
/* 8053ACB4  38 00 24 00 */	li r0, 0x2400
/* 8053ACB8  B0 1F 00 04 */	sth r0, 4(r31)
lbl_8053ACBC:
/* 8053ACBC  38 7F 00 08 */	addi r3, r31, 8
/* 8053ACC0  4B EB 59 C1 */	bl mSc_background_dmacopy_controller
/* 8053ACC4  38 7F 00 64 */	addi r3, r31, 0x64
/* 8053ACC8  4B EB 59 B9 */	bl mSc_background_dmacopy_controller
/* 8053ACCC  88 1F 00 63 */	lbz r0, 0x63(r31)
/* 8053ACD0  28 00 00 00 */	cmplwi r0, 0
/* 8053ACD4  40 82 00 18 */	bne lbl_8053ACEC
/* 8053ACD8  88 1F 00 BF */	lbz r0, 0xbf(r31)
/* 8053ACDC  28 00 00 00 */	cmplwi r0, 0
/* 8053ACE0  40 82 00 0C */	bne lbl_8053ACEC
/* 8053ACE4  38 00 00 00 */	li r0, 0
/* 8053ACE8  98 1F 00 00 */	stb r0, 0(r31)
lbl_8053ACEC:
/* 8053ACEC  3B DE 00 01 */	addi r30, r30, 1
/* 8053ACF0  3B FF 00 C0 */	addi r31, r31, 0xc0
/* 8053ACF4  2C 1E 00 0A */	cmpwi r30, 0xa
/* 8053ACF8  41 80 FF 7C */	blt lbl_8053AC74
/* 8053ACFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053AD00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053AD04  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053AD08  7C 08 03 A6 */	mtlr r0
/* 8053AD0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8053AD10  4E 80 00 20 */	blr 
