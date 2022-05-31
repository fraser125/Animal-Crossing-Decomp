lbl_8047EA50:
/* 8047EA50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047EA54  7C 08 02 A6 */	mflr r0
/* 8047EA58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047EA5C  88 04 00 3F */	lbz r0, 0x3f(r4)
/* 8047EA60  28 00 00 04 */	cmplwi r0, 4
/* 8047EA64  41 82 00 0C */	beq lbl_8047EA70
/* 8047EA68  28 00 00 05 */	cmplwi r0, 5
/* 8047EA6C  40 82 00 0C */	bne lbl_8047EA78
lbl_8047EA70:
/* 8047EA70  38 60 00 00 */	li r3, 0
/* 8047EA74  48 00 00 0C */	b lbl_8047EA80
lbl_8047EA78:
/* 8047EA78  38 C0 00 01 */	li r6, 1
/* 8047EA7C  4B FF FC CD */	bl aMR_GokiburiPos_Common
lbl_8047EA80:
/* 8047EA80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047EA84  7C 08 03 A6 */	mtlr r0
/* 8047EA88  38 21 00 10 */	addi r1, r1, 0x10
/* 8047EA8C  4E 80 00 20 */	blr 
