.include "macros.inc"

.section .text

.org 0x80065AA0

.global __ct__11JKRDisposerFv
__ct__11JKRDisposerFv:
/* 80065AA0 00062A00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80065AA4 00062A04  7C 08 02 A6 */	mflr r0
/* 80065AA8 00062A08  3C 80 80 0E */	lis r4, __vt__11JKRDisposer@ha
/* 80065AAC 00062A0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80065AB0 00062A10  38 04 E3 B4 */	addi r0, r4, __vt__11JKRDisposer@l
/* 80065AB4 00062A14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80065AB8 00062A18  7C 7F 1B 78 */	mr r31, r3
/* 80065ABC 00062A1C  7F E4 FB 78 */	mr r4, r31
/* 80065AC0 00062A20  90 03 00 00 */	stw r0, 0(r3)
/* 80065AC4 00062A24  38 64 00 08 */	addi r3, r4, 8
/* 80065AC8 00062A28  48 00 82 91 */	bl __ct__10JSUPtrLinkFPv
/* 80065ACC 00062A2C  7F E3 FB 78 */	mr r3, r31
/* 80065AD0 00062A30  4B FF E2 15 */	bl findFromRoot__7JKRHeapFPv
/* 80065AD4 00062A34  90 7F 00 04 */	stw r3, 4(r31)
/* 80065AD8 00062A38  80 7F 00 04 */	lwz r3, 4(r31)
/* 80065ADC 00062A3C  28 03 00 00 */	cmplwi r3, 0
/* 80065AE0 00062A40  41 82 00 10 */	beq lbl_80065AF0
/* 80065AE4 00062A44  38 63 00 5C */	addi r3, r3, 0x5c
/* 80065AE8 00062A48  38 9F 00 08 */	addi r4, r31, 8
/* 80065AEC 00062A4C  48 00 83 BD */	bl append__10JSUPtrListFP10JSUPtrLink
lbl_80065AF0:
/* 80065AF0 00062A50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80065AF4 00062A54  7F E3 FB 78 */	mr r3, r31
/* 80065AF8 00062A58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80065AFC 00062A5C  7C 08 03 A6 */	mtlr r0
/* 80065B00 00062A60  38 21 00 10 */	addi r1, r1, 0x10
/* 80065B04 00062A64  4E 80 00 20 */	blr 

.global __dt__11JKRDisposerFv
__dt__11JKRDisposerFv:
/* 80065B08 00062A68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80065B0C 00062A6C  7C 08 02 A6 */	mflr r0
/* 80065B10 00062A70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80065B14 00062A74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80065B18 00062A78  7C 9F 23 78 */	mr r31, r4
/* 80065B1C 00062A7C  93 C1 00 08 */	stw r30, 8(r1)
/* 80065B20 00062A80  7C 7E 1B 79 */	or. r30, r3, r3
/* 80065B24 00062A84  41 82 00 4C */	beq lbl_80065B70
/* 80065B28 00062A88  3C 60 80 0E */	lis r3, __vt__11JKRDisposer@ha
/* 80065B2C 00062A8C  38 03 E3 B4 */	addi r0, r3, __vt__11JKRDisposer@l
/* 80065B30 00062A90  90 1E 00 00 */	stw r0, 0(r30)
/* 80065B34 00062A94  80 7E 00 04 */	lwz r3, 4(r30)
/* 80065B38 00062A98  28 03 00 00 */	cmplwi r3, 0
/* 80065B3C 00062A9C  41 82 00 10 */	beq lbl_80065B4C
/* 80065B40 00062AA0  38 63 00 5C */	addi r3, r3, 0x5c
/* 80065B44 00062AA4  38 9E 00 08 */	addi r4, r30, 8
/* 80065B48 00062AA8  48 00 85 71 */	bl remove__10JSUPtrListFP10JSUPtrLink
lbl_80065B4C:
/* 80065B4C 00062AAC  34 1E 00 08 */	addic. r0, r30, 8
/* 80065B50 00062AB0  41 82 00 10 */	beq lbl_80065B60
/* 80065B54 00062AB4  38 7E 00 08 */	addi r3, r30, 8
/* 80065B58 00062AB8  38 80 00 00 */	li r4, 0
/* 80065B5C 00062ABC  48 00 82 15 */	bl __dt__10JSUPtrLinkFv
lbl_80065B60:
/* 80065B60 00062AC0  7F E0 07 35 */	extsh. r0, r31
/* 80065B64 00062AC4  40 81 00 0C */	ble lbl_80065B70
/* 80065B68 00062AC8  7F C3 F3 78 */	mr r3, r30
/* 80065B6C 00062ACC  4B FF E4 45 */	bl __dl__FPv
lbl_80065B70:
/* 80065B70 00062AD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80065B74 00062AD4  7F C3 F3 78 */	mr r3, r30
/* 80065B78 00062AD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80065B7C 00062ADC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80065B80 00062AE0  7C 08 03 A6 */	mtlr r0
/* 80065B84 00062AE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80065B88 00062AE8  4E 80 00 20 */	blr 