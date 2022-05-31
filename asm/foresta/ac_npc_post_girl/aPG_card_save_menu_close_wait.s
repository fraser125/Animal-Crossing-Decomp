lbl_8056CFF8:
/* 8056CFF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056CFFC  7C 08 02 A6 */	mflr r0
/* 8056D000  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056D004  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056D008  7C 9F 23 78 */	mr r31, r4
/* 8056D00C  93 C1 00 08 */	stw r30, 8(r1)
/* 8056D010  7C 7E 1B 78 */	mr r30, r3
/* 8056D014  88 04 1F 4E */	lbz r0, 0x1f4e(r4)
/* 8056D018  28 00 00 00 */	cmplwi r0, 0
/* 8056D01C  40 82 00 3C */	bne lbl_8056D058
/* 8056D020  38 80 08 E9 */	li r4, 0x8e9
/* 8056D024  4B FF F4 85 */	bl aPG_ChangeMsgData
/* 8056D028  4B E5 26 81 */	bl func_803BF6A8
/* 8056D02C  4B E5 3C FD */	bl mMsg_Set_ForceNext
/* 8056D030  38 60 08 E9 */	li r3, 0x8e9
/* 8056D034  38 00 00 14 */	li r0, 0x14
/* 8056D038  90 7E 09 B0 */	stw r3, 0x9b0(r30)
/* 8056D03C  7F C3 F3 78 */	mr r3, r30
/* 8056D040  7F E4 FB 78 */	mr r4, r31
/* 8056D044  38 A0 00 02 */	li r5, 2
/* 8056D048  90 1E 09 98 */	stw r0, 0x998(r30)
/* 8056D04C  81 9E 09 A0 */	lwz r12, 0x9a0(r30)
/* 8056D050  7D 89 03 A6 */	mtctr r12
/* 8056D054  4E 80 04 21 */	bctrl 
lbl_8056D058:
/* 8056D058  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056D05C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056D060  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056D064  7C 08 03 A6 */	mtlr r0
/* 8056D068  38 21 00 10 */	addi r1, r1, 0x10
/* 8056D06C  4E 80 00 20 */	blr 
