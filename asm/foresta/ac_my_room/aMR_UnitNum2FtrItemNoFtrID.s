lbl_8047DF40:
/* 8047DF40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047DF44  7C 08 02 A6 */	mflr r0
/* 8047DF48  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047DF4C  39 61 00 20 */	addi r11, r1, 0x20
/* 8047DF50  4B C1 CF 79 */	bl func_8009AEC8
/* 8047DF54  7C FC 3B 78 */	mr r28, r7
/* 8047DF58  7C 7A 1B 78 */	mr r26, r3
/* 8047DF5C  7C 9B 23 78 */	mr r27, r4
/* 8047DF60  54 BE 07 3E */	clrlwi r30, r5, 0x1c
/* 8047DF64  54 DD 07 3E */	clrlwi r29, r6, 0x1c
/* 8047DF68  7F 83 07 34 */	extsh r3, r28
/* 8047DF6C  4B FF 24 85 */	bl aMR_GetLayerTopFg
/* 8047DF70  7C 7F 1B 78 */	mr r31, r3
/* 8047DF74  7F 83 07 34 */	extsh r3, r28
/* 8047DF78  4B FF 31 6D */	bl aMR_GetLayerPlaceTable
/* 8047DF7C  28 1F 00 00 */	cmplwi r31, 0
/* 8047DF80  41 82 00 B4 */	beq lbl_8047E034
/* 8047DF84  57 A0 20 36 */	slwi r0, r29, 4
/* 8047DF88  7C 00 1A 14 */	add r0, r0, r3
/* 8047DF8C  7F BE 00 AE */	lbzx r29, r30, r0
/* 8047DF90  2C 1D 00 C8 */	cmpwi r29, 0xc8
/* 8047DF94  41 82 00 A0 */	beq lbl_8047E034
/* 8047DF98  2C 1D 00 C9 */	cmpwi r29, 0xc9
/* 8047DF9C  41 82 00 98 */	beq lbl_8047E034
/* 8047DFA0  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047DFA4  38 63 DF E8 */	addi r3, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047DFA8  80 A3 00 00 */	lwz r5, 0(r3)
/* 8047DFAC  28 05 00 00 */	cmplwi r5, 0
/* 8047DFB0  41 82 00 84 */	beq lbl_8047E034
/* 8047DFB4  80 03 00 04 */	lwz r0, 4(r3)
/* 8047DFB8  28 00 00 00 */	cmplwi r0, 0
/* 8047DFBC  41 82 00 78 */	beq lbl_8047E034
/* 8047DFC0  1C 1D 08 58 */	mulli r0, r29, 0x858
/* 8047DFC4  38 80 00 00 */	li r4, 0
/* 8047DFC8  7C 65 02 2E */	lhzx r3, r5, r0
/* 8047DFCC  4B F6 98 09 */	bl mRmTp_FtrIdx2FtrItemNo
/* 8047DFD0  28 1A 00 00 */	cmplwi r26, 0
/* 8047DFD4  41 82 00 08 */	beq lbl_8047DFDC
/* 8047DFD8  B0 7A 00 00 */	sth r3, 0(r26)
lbl_8047DFDC:
/* 8047DFDC  28 1B 00 00 */	cmplwi r27, 0
/* 8047DFE0  41 82 00 08 */	beq lbl_8047DFE8
/* 8047DFE4  93 BB 00 00 */	stw r29, 0(r27)
lbl_8047DFE8:
/* 8047DFE8  54 64 A7 3E */	rlwinm r4, r3, 0x14, 0x1c, 0x1f
/* 8047DFEC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8047DFF0  2C 04 00 01 */	cmpwi r4, 1
/* 8047DFF4  41 82 00 14 */	beq lbl_8047E008
/* 8047DFF8  2C 04 00 03 */	cmpwi r4, 3
/* 8047DFFC  41 82 00 0C */	beq lbl_8047E008
/* 8047E000  28 00 FE 1F */	cmplwi r0, 0xfe1f
/* 8047E004  40 82 00 28 */	bne lbl_8047E02C
lbl_8047E008:
/* 8047E008  2C 1D 00 00 */	cmpwi r29, 0
/* 8047E00C  41 80 00 20 */	blt lbl_8047E02C
/* 8047E010  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047E014  38 63 DF E8 */	addi r3, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047E018  80 03 00 08 */	lwz r0, 8(r3)
/* 8047E01C  7C 1D 00 00 */	cmpw r29, r0
/* 8047E020  40 80 00 0C */	bge lbl_8047E02C
/* 8047E024  38 60 00 01 */	li r3, 1
/* 8047E028  48 00 00 34 */	b lbl_8047E05C
lbl_8047E02C:
/* 8047E02C  38 60 00 00 */	li r3, 0
/* 8047E030  48 00 00 2C */	b lbl_8047E05C
lbl_8047E034:
/* 8047E034  28 1A 00 00 */	cmplwi r26, 0
/* 8047E038  41 82 00 10 */	beq lbl_8047E048
/* 8047E03C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8047E040  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8047E044  B0 1A 00 00 */	sth r0, 0(r26)
lbl_8047E048:
/* 8047E048  28 1B 00 00 */	cmplwi r27, 0
/* 8047E04C  41 82 00 0C */	beq lbl_8047E058
/* 8047E050  38 00 00 00 */	li r0, 0
/* 8047E054  90 1B 00 00 */	stw r0, 0(r27)
lbl_8047E058:
/* 8047E058  38 60 00 00 */	li r3, 0
lbl_8047E05C:
/* 8047E05C  39 61 00 20 */	addi r11, r1, 0x20
/* 8047E060  4B C1 CE B5 */	bl func_8009AF14
/* 8047E064  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047E068  7C 08 03 A6 */	mtlr r0
/* 8047E06C  38 21 00 20 */	addi r1, r1, 0x20
/* 8047E070  4E 80 00 20 */	blr 
