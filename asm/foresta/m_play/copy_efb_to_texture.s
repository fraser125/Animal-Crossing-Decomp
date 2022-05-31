lbl_8062AC90:
/* 8062AC90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062AC94  7C 08 02 A6 */	mflr r0
/* 8062AC98  3C A0 81 23 */	lis r5, gxbuf@ha /* 0x81233A58@ha */
/* 8062AC9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062ACA0  38 05 3A 58 */	addi r0, r5, gxbuf@l /* 0x81233A58@l */
/* 8062ACA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062ACA8  7C 9F 23 78 */	mr r31, r4
/* 8062ACAC  38 80 01 40 */	li r4, 0x140
/* 8062ACB0  93 C1 00 08 */	stw r30, 8(r1)
/* 8062ACB4  7C 7E 1B 78 */	mr r30, r3
/* 8062ACB8  7C 03 03 78 */	mr r3, r0
/* 8062ACBC  4B A6 EC 1D */	bl func_800998D8
/* 8062ACC0  38 60 00 00 */	li r3, 0
/* 8062ACC4  38 80 00 00 */	li r4, 0
/* 8062ACC8  38 A0 02 80 */	li r5, 0x280
/* 8062ACCC  38 C0 01 E0 */	li r6, 0x1e0
/* 8062ACD0  4B A6 B4 F5 */	bl GXSetTexCopySrc
/* 8062ACD4  38 60 02 80 */	li r3, 0x280
/* 8062ACD8  38 80 01 E0 */	li r4, 0x1e0
/* 8062ACDC  38 A0 00 04 */	li r5, 4
/* 8062ACE0  38 C0 00 00 */	li r6, 0
/* 8062ACE4  4B A6 B5 E5 */	bl GXSetTexCopyDst
/* 8062ACE8  38 60 00 00 */	li r3, 0
/* 8062ACEC  38 80 00 00 */	li r4, 0
/* 8062ACF0  38 A0 00 00 */	li r5, 0
/* 8062ACF4  38 C0 00 00 */	li r6, 0
/* 8062ACF8  4B A6 B9 25 */	bl GXSetCopyFilter
/* 8062ACFC  7F E3 FB 78 */	mr r3, r31
/* 8062AD00  38 80 00 00 */	li r4, 0
/* 8062AD04  4B A6 BC CD */	bl GXCopyTex
/* 8062AD08  4B A6 EC 99 */	bl GXEndDisplayList
/* 8062AD0C  80 DE 00 00 */	lwz r6, 0(r30)
/* 8062AD10  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8062AD14  3C 60 81 23 */	lis r3, gxbuf@ha /* 0x81233A58@ha */
/* 8062AD18  38 A6 00 08 */	addi r5, r6, 8
/* 8062AD1C  64 04 DE 02 */	oris r4, r0, 0xde02
/* 8062AD20  90 BE 00 00 */	stw r5, 0(r30)
/* 8062AD24  38 03 3A 58 */	addi r0, r3, gxbuf@l /* 0x81233A58@l */
/* 8062AD28  90 86 00 00 */	stw r4, 0(r6)
/* 8062AD2C  90 06 00 04 */	stw r0, 4(r6)
/* 8062AD30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062AD34  83 C1 00 08 */	lwz r30, 8(r1)
/* 8062AD38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062AD3C  7C 08 03 A6 */	mtlr r0
/* 8062AD40  38 21 00 10 */	addi r1, r1, 0x10
/* 8062AD44  4E 80 00 20 */	blr 
