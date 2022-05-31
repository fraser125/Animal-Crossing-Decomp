lbl_803B5B18:
/* 803B5B18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B5B1C  7C 08 02 A6 */	mflr r0
/* 803B5B20  3C 80 80 65 */	lis r4, data_80655288@ha /* 0x80655288@ha */
/* 803B5B24  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B5B28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B5B2C  3B E4 52 88 */	addi r31, r4, data_80655288@l /* 0x80655288@l */
/* 803B5B30  38 80 00 00 */	li r4, 0
/* 803B5B34  93 C1 00 08 */	stw r30, 8(r1)
/* 803B5B38  3B C0 00 00 */	li r30, 0
/* 803B5B3C  48 03 09 E9 */	bl mRmTp_FtrItemNo2Item1ItemNo
/* 803B5B40  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803B5B44  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 803B5B48  2C 00 00 02 */	cmpwi r0, 2
/* 803B5B4C  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 803B5B50  41 82 00 20 */	beq lbl_803B5B70
/* 803B5B54  40 80 00 10 */	bge lbl_803B5B64
/* 803B5B58  2C 00 00 01 */	cmpwi r0, 1
/* 803B5B5C  40 80 00 28 */	bge lbl_803B5B84
/* 803B5B60  48 00 00 44 */	b lbl_803B5BA4
lbl_803B5B64:
/* 803B5B64  2C 00 00 04 */	cmpwi r0, 4
/* 803B5B68  40 80 00 3C */	bge lbl_803B5BA4
/* 803B5B6C  48 00 00 18 */	b lbl_803B5B84
lbl_803B5B70:
/* 803B5B70  54 80 D6 BA */	rlwinm r0, r4, 0x1a, 0x1a, 0x1d
/* 803B5B74  38 7F 09 7C */	addi r3, r31, 0x97c
/* 803B5B78  7C 63 00 2E */	lwzx r3, r3, r0
/* 803B5B7C  7F C3 28 AE */	lbzx r30, r3, r5
/* 803B5B80  48 00 00 40 */	b lbl_803B5BC0
lbl_803B5B84:
/* 803B5B84  48 03 1C 0D */	bl mRmTp_FtrItemNo2FtrIdx
/* 803B5B88  2C 03 04 F2 */	cmpwi r3, 0x4f2
/* 803B5B8C  40 80 00 10 */	bge lbl_803B5B9C
/* 803B5B90  38 9F 04 38 */	addi r4, r31, 0x438
/* 803B5B94  7C 64 18 AE */	lbzx r3, r4, r3
/* 803B5B98  48 00 00 2C */	b lbl_803B5BC4
lbl_803B5B9C:
/* 803B5B9C  38 60 00 00 */	li r3, 0
/* 803B5BA0  48 00 00 24 */	b lbl_803B5BC4
lbl_803B5BA4:
/* 803B5BA4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803B5BA8  28 00 09 00 */	cmplwi r0, 0x900
/* 803B5BAC  41 80 00 14 */	blt lbl_803B5BC0
/* 803B5BB0  28 00 09 20 */	cmplwi r0, 0x920
/* 803B5BB4  41 81 00 0C */	bgt lbl_803B5BC0
/* 803B5BB8  38 7F 02 88 */	addi r3, r31, 0x288
/* 803B5BBC  8B C3 00 1E */	lbz r30, 0x1e(r3)
lbl_803B5BC0:
/* 803B5BC0  7F C3 F3 78 */	mr r3, r30
lbl_803B5BC4:
/* 803B5BC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B5BC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B5BCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B5BD0  7C 08 03 A6 */	mtlr r0
/* 803B5BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 803B5BD8  4E 80 00 20 */	blr 
