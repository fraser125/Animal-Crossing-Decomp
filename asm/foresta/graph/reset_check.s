lbl_80405B08:
/* 80405B08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80405B0C  7C 08 02 A6 */	mflr r0
/* 80405B10  3C 60 81 1C */	lis r3, SoftResetEnable@ha /* 0x811C5324@ha */
/* 80405B14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80405B18  88 03 53 24 */	lbz r0, SoftResetEnable@l(r3)  /* 0x811C5324@l */
/* 80405B1C  28 00 00 00 */	cmplwi r0, 0
/* 80405B20  41 82 00 1C */	beq lbl_80405B3C
/* 80405B24  3C 60 80 22 */	lis r3, osShutdown@ha /* 0x80218654@ha */
/* 80405B28  80 03 86 54 */	lwz r0, osShutdown@l(r3)  /* 0x80218654@l */
/* 80405B2C  2C 00 00 00 */	cmpwi r0, 0
/* 80405B30  41 82 00 0C */	beq lbl_80405B3C
/* 80405B34  7C 83 23 78 */	mr r3, r4
/* 80405B38  4B FF FF 7D */	bl do_soft_reset
lbl_80405B3C:
/* 80405B3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80405B40  7C 08 03 A6 */	mtlr r0
/* 80405B44  38 21 00 10 */	addi r1, r1, 0x10
/* 80405B48  4E 80 00 20 */	blr 
