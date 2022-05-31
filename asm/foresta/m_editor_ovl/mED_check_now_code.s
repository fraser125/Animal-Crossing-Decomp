lbl_805D89C8:
/* 805D89C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D89CC  7C 08 02 A6 */	mflr r0
/* 805D89D0  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008000@ha */
/* 805D89D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D89D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D89DC  3B E0 00 00 */	li r31, 0
/* 805D89E0  93 C1 00 08 */	stw r30, 8(r1)
/* 805D89E4  7C 7E 1B 78 */	mr r30, r3
/* 805D89E8  38 64 80 00 */	addi r3, r4, 0x8000 /* 0x00008000@l */
/* 805D89EC  4B DB D5 25 */	bl chkTrigger
/* 805D89F0  2C 03 00 00 */	cmpwi r3, 0
/* 805D89F4  41 82 00 28 */	beq lbl_805D8A1C
/* 805D89F8  88 9E 00 02 */	lbz r4, 2(r30)
/* 805D89FC  7F C3 F3 78 */	mr r3, r30
/* 805D8A00  88 BE 00 03 */	lbz r5, 3(r30)
/* 805D8A04  4B FF F9 F5 */	bl mED_get_code
/* 805D8A08  2C 03 00 D3 */	cmpwi r3, 0xd3
/* 805D8A0C  41 82 00 2C */	beq lbl_805D8A38
/* 805D8A10  98 7E 00 13 */	stb r3, 0x13(r30)
/* 805D8A14  3B E0 00 01 */	li r31, 1
/* 805D8A18  48 00 00 20 */	b lbl_805D8A38
lbl_805D8A1C:
/* 805D8A1C  38 60 00 10 */	li r3, 0x10
/* 805D8A20  4B DB D4 F1 */	bl chkTrigger
/* 805D8A24  2C 03 00 00 */	cmpwi r3, 0
/* 805D8A28  41 82 00 10 */	beq lbl_805D8A38
/* 805D8A2C  38 00 00 20 */	li r0, 0x20
/* 805D8A30  3B E0 00 01 */	li r31, 1
/* 805D8A34  98 1E 00 13 */	stb r0, 0x13(r30)
lbl_805D8A38:
/* 805D8A38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D8A3C  7F E3 FB 78 */	mr r3, r31
/* 805D8A40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D8A44  83 C1 00 08 */	lwz r30, 8(r1)
/* 805D8A48  7C 08 03 A6 */	mtlr r0
/* 805D8A4C  38 21 00 10 */	addi r1, r1, 0x10
/* 805D8A50  4E 80 00 20 */	blr 
