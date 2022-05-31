lbl_8053C9C8:
/* 8053C9C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053C9CC  7C 08 02 A6 */	mflr r0
/* 8053C9D0  38 C0 00 00 */	li r6, 0
/* 8053C9D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053C9D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053C9DC  3B E0 00 01 */	li r31, 1
/* 8053C9E0  93 C1 00 08 */	stw r30, 8(r1)
/* 8053C9E4  7C 7E 1B 78 */	mr r30, r3
/* 8053C9E8  80 63 08 F0 */	lwz r3, 0x8f0(r3)
/* 8053C9EC  28 03 00 00 */	cmplwi r3, 0
/* 8053C9F0  41 82 00 2C */	beq lbl_8053CA1C
/* 8053C9F4  88 1E 07 F5 */	lbz r0, 0x7f5(r30)
/* 8053C9F8  2C 00 00 05 */	cmpwi r0, 5
/* 8053C9FC  41 82 00 08 */	beq lbl_8053CA04
/* 8053CA00  48 00 00 7C */	b lbl_8053CA7C
lbl_8053CA04:
/* 8053CA04  88 1E 09 73 */	lbz r0, 0x973(r30)
/* 8053CA08  28 00 00 02 */	cmplwi r0, 2
/* 8053CA0C  41 82 00 70 */	beq lbl_8053CA7C
/* 8053CA10  7C 66 1B 78 */	mr r6, r3
/* 8053CA14  3B E0 00 04 */	li r31, 4
/* 8053CA18  48 00 00 64 */	b lbl_8053CA7C
lbl_8053CA1C:
/* 8053CA1C  88 1E 07 FD */	lbz r0, 0x7fd(r30)
/* 8053CA20  2C 00 00 06 */	cmpwi r0, 6
/* 8053CA24  41 82 00 14 */	beq lbl_8053CA38
/* 8053CA28  41 80 00 40 */	blt lbl_8053CA68
/* 8053CA2C  2C 00 00 09 */	cmpwi r0, 9
/* 8053CA30  40 80 00 38 */	bge lbl_8053CA68
/* 8053CA34  48 00 00 18 */	b lbl_8053CA4C
lbl_8053CA38:
/* 8053CA38  80 1E 09 2C */	lwz r0, 0x92c(r30)
/* 8053CA3C  28 00 00 00 */	cmplwi r0, 0
/* 8053CA40  41 82 00 28 */	beq lbl_8053CA68
/* 8053CA44  7C 06 03 78 */	mr r6, r0
/* 8053CA48  48 00 00 20 */	b lbl_8053CA68
lbl_8053CA4C:
/* 8053CA4C  80 7E 09 2C */	lwz r3, 0x92c(r30)
/* 8053CA50  28 03 00 00 */	cmplwi r3, 0
/* 8053CA54  41 82 00 14 */	beq lbl_8053CA68
/* 8053CA58  88 1E 07 F6 */	lbz r0, 0x7f6(r30)
/* 8053CA5C  28 00 00 00 */	cmplwi r0, 0
/* 8053CA60  40 82 00 08 */	bne lbl_8053CA68
/* 8053CA64  7C 66 1B 78 */	mr r6, r3
lbl_8053CA68:
/* 8053CA68  28 06 00 00 */	cmplwi r6, 0
/* 8053CA6C  40 82 00 10 */	bne lbl_8053CA7C
/* 8053CA70  7F C3 F3 78 */	mr r3, r30
/* 8053CA74  4B FF FD ED */	bl aNPC_check_look_player
/* 8053CA78  7C 66 1B 78 */	mr r6, r3
lbl_8053CA7C:
/* 8053CA7C  28 06 00 00 */	cmplwi r6, 0
/* 8053CA80  41 82 00 18 */	beq lbl_8053CA98
/* 8053CA84  7F C3 F3 78 */	mr r3, r30
/* 8053CA88  7F E4 FB 78 */	mr r4, r31
/* 8053CA8C  38 A0 00 01 */	li r5, 1
/* 8053CA90  38 E0 00 00 */	li r7, 0
/* 8053CA94  48 00 02 65 */	bl aNPC_set_head_request
lbl_8053CA98:
/* 8053CA98  7F C3 F3 78 */	mr r3, r30
/* 8053CA9C  4B FF FE 45 */	bl aNPC_check_attention
/* 8053CAA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053CAA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053CAA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053CAAC  7C 08 03 A6 */	mtlr r0
/* 8053CAB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8053CAB4  4E 80 00 20 */	blr 
