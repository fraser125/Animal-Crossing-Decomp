lbl_80411B10:
/* 80411B10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80411B14  7C 08 02 A6 */	mflr r0
/* 80411B18  38 80 00 00 */	li r4, 0
/* 80411B1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80411B20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80411B24  7C 7F 1B 78 */	mr r31, r3
/* 80411B28  4B FF FE 89 */	bl aAR_SetClip
/* 80411B2C  80 7F 01 78 */	lwz r3, 0x178(r31)
/* 80411B30  28 03 00 00 */	cmplwi r3, 0
/* 80411B34  41 82 00 08 */	beq lbl_80411B3C
/* 80411B38  4B FA A9 7D */	bl zelda_free
lbl_80411B3C:
/* 80411B3C  80 7F 01 80 */	lwz r3, 0x180(r31)
/* 80411B40  28 03 00 00 */	cmplwi r3, 0
/* 80411B44  41 82 00 08 */	beq lbl_80411B4C
/* 80411B48  4B FA A9 6D */	bl zelda_free
lbl_80411B4C:
/* 80411B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80411B50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80411B54  7C 08 03 A6 */	mtlr r0
/* 80411B58  38 21 00 10 */	addi r1, r1, 0x10
/* 80411B5C  4E 80 00 20 */	blr 
