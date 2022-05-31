lbl_805D8AFC:
/* 805D8AFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D8B00  7C 08 02 A6 */	mflr r0
/* 805D8B04  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D8B08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D8B0C  7C 7F 1B 78 */	mr r31, r3
/* 805D8B10  38 60 10 00 */	li r3, 0x1000
/* 805D8B14  4B DB D3 FD */	bl chkTrigger
/* 805D8B18  2C 03 00 00 */	cmpwi r3, 0
/* 805D8B1C  41 82 00 10 */	beq lbl_805D8B2C
/* 805D8B20  38 00 00 05 */	li r0, 5
/* 805D8B24  98 1F 00 11 */	stb r0, 0x11(r31)
/* 805D8B28  48 00 00 44 */	b lbl_805D8B6C
lbl_805D8B2C:
/* 805D8B2C  38 60 00 40 */	li r3, 0x40
/* 805D8B30  4B DB D3 E1 */	bl chkTrigger
/* 805D8B34  2C 03 00 00 */	cmpwi r3, 0
/* 805D8B38  41 82 00 10 */	beq lbl_805D8B48
/* 805D8B3C  38 00 00 07 */	li r0, 7
/* 805D8B40  98 1F 00 11 */	stb r0, 0x11(r31)
/* 805D8B44  48 00 00 28 */	b lbl_805D8B6C
lbl_805D8B48:
/* 805D8B48  7F E3 FB 78 */	mr r3, r31
/* 805D8B4C  4B FF FB D9 */	bl mED_check_move_cursol
/* 805D8B50  98 7F 00 11 */	stb r3, 0x11(r31)
/* 805D8B54  88 1F 00 11 */	lbz r0, 0x11(r31)
/* 805D8B58  28 00 00 00 */	cmplwi r0, 0
/* 805D8B5C  40 82 00 10 */	bne lbl_805D8B6C
/* 805D8B60  7F E3 FB 78 */	mr r3, r31
/* 805D8B64  4B FF FE F1 */	bl mED_check_output_code
/* 805D8B68  98 7F 00 11 */	stb r3, 0x11(r31)
lbl_805D8B6C:
/* 805D8B6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D8B70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D8B74  7C 08 03 A6 */	mtlr r0
/* 805D8B78  38 21 00 10 */	addi r1, r1, 0x10
/* 805D8B7C  4E 80 00 20 */	blr 
