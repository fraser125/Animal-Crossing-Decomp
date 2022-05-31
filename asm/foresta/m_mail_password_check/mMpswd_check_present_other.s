lbl_803BE8F4:
/* 803BE8F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BE8F8  7C 08 02 A6 */	mflr r0
/* 803BE8FC  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 803BE900  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BE904  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803BE908  2C 00 00 02 */	cmpwi r0, 2
/* 803BE90C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BE910  3B E0 00 00 */	li r31, 0
/* 803BE914  41 82 00 50 */	beq lbl_803BE964
/* 803BE918  40 80 00 10 */	bge lbl_803BE928
/* 803BE91C  2C 00 00 01 */	cmpwi r0, 1
/* 803BE920  40 80 00 10 */	bge lbl_803BE930
/* 803BE924  48 00 01 34 */	b lbl_803BEA58
lbl_803BE928:
/* 803BE928  2C 00 00 04 */	cmpwi r0, 4
/* 803BE92C  40 80 01 2C */	bge lbl_803BEA58
lbl_803BE930:
/* 803BE930  48 02 8E 61 */	bl mRmTp_FtrItemNo2FtrIdx
/* 803BE934  48 02 81 55 */	bl mRmTp_FurnitureIdx2FurnitureKind
/* 803BE938  38 03 FF F8 */	addi r0, r3, -8
/* 803BE93C  28 00 00 17 */	cmplwi r0, 0x17
/* 803BE940  41 81 00 1C */	bgt lbl_803BE95C
/* 803BE944  3C 60 80 65 */	lis r3, lit_981@ha /* 0x80657034@ha */
/* 803BE948  54 00 10 3A */	slwi r0, r0, 2
/* 803BE94C  38 63 70 34 */	addi r3, r3, lit_981@l /* 0x80657034@l */
/* 803BE950  7C 03 00 2E */	lwzx r0, r3, r0
/* 803BE954  7C 09 03 A6 */	mtctr r0
/* 803BE958  4E 80 04 20 */	bctr 
lbl_803BE95C:
/* 803BE95C  3B E0 00 01 */	li r31, 1
/* 803BE960  48 00 00 F8 */	b lbl_803BEA58
lbl_803BE964:
/* 803BE964  54 80 C7 3E */	rlwinm r0, r4, 0x18, 0x1c, 0x1f
/* 803BE968  2C 00 00 03 */	cmpwi r0, 3
/* 803BE96C  41 82 00 EC */	beq lbl_803BEA58
/* 803BE970  40 80 00 1C */	bge lbl_803BE98C
/* 803BE974  2C 00 00 01 */	cmpwi r0, 1
/* 803BE978  41 82 00 DC */	beq lbl_803BEA54
/* 803BE97C  40 80 00 1C */	bge lbl_803BE998
/* 803BE980  2C 00 00 00 */	cmpwi r0, 0
/* 803BE984  40 80 00 B0 */	bge lbl_803BEA34
/* 803BE988  48 00 00 CC */	b lbl_803BEA54
lbl_803BE98C:
/* 803BE98C  2C 00 00 0D */	cmpwi r0, 0xd
/* 803BE990  41 82 00 C8 */	beq lbl_803BEA58
/* 803BE994  48 00 00 C0 */	b lbl_803BEA54
lbl_803BE998:
/* 803BE998  28 04 22 04 */	cmplwi r4, 0x2204
/* 803BE99C  41 80 00 14 */	blt lbl_803BE9B0
/* 803BE9A0  28 04 22 23 */	cmplwi r4, 0x2223
/* 803BE9A4  41 81 00 0C */	bgt lbl_803BE9B0
/* 803BE9A8  3B E0 00 01 */	li r31, 1
/* 803BE9AC  48 00 00 AC */	b lbl_803BEA58
lbl_803BE9B0:
/* 803BE9B0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803BE9B4  38 80 00 00 */	li r4, 0
/* 803BE9B8  28 00 22 44 */	cmplwi r0, 0x2244
/* 803BE9BC  41 80 00 10 */	blt lbl_803BE9CC
/* 803BE9C0  28 00 22 4B */	cmplwi r0, 0x224b
/* 803BE9C4  41 81 00 08 */	bgt lbl_803BE9CC
/* 803BE9C8  38 80 00 01 */	li r4, 1
lbl_803BE9CC:
/* 803BE9CC  2C 04 00 01 */	cmpwi r4, 1
/* 803BE9D0  40 82 00 0C */	bne lbl_803BE9DC
/* 803BE9D4  3B E0 00 01 */	li r31, 1
/* 803BE9D8  48 00 00 80 */	b lbl_803BEA58
lbl_803BE9DC:
/* 803BE9DC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803BE9E0  38 80 00 00 */	li r4, 0
/* 803BE9E4  28 00 22 54 */	cmplwi r0, 0x2254
/* 803BE9E8  41 80 00 10 */	blt lbl_803BE9F8
/* 803BE9EC  28 00 22 5B */	cmplwi r0, 0x225b
/* 803BE9F0  41 81 00 08 */	bgt lbl_803BE9F8
/* 803BE9F4  38 80 00 01 */	li r4, 1
lbl_803BE9F8:
/* 803BE9F8  2C 04 00 01 */	cmpwi r4, 1
/* 803BE9FC  40 82 00 0C */	bne lbl_803BEA08
/* 803BEA00  3B E0 00 01 */	li r31, 1
/* 803BEA04  48 00 00 54 */	b lbl_803BEA58
lbl_803BEA08:
/* 803BEA08  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803BEA0C  38 60 00 00 */	li r3, 0
/* 803BEA10  28 00 22 4C */	cmplwi r0, 0x224c
/* 803BEA14  41 80 00 10 */	blt lbl_803BEA24
/* 803BEA18  28 00 22 53 */	cmplwi r0, 0x2253
/* 803BEA1C  41 81 00 08 */	bgt lbl_803BEA24
/* 803BEA20  38 60 00 01 */	li r3, 1
lbl_803BEA24:
/* 803BEA24  2C 03 00 01 */	cmpwi r3, 1
/* 803BEA28  40 82 00 30 */	bne lbl_803BEA58
/* 803BEA2C  3B E0 00 01 */	li r31, 1
/* 803BEA30  48 00 00 28 */	b lbl_803BEA58
lbl_803BEA34:
/* 803BEA34  38 04 E0 00 */	addi r0, r4, -8192
/* 803BEA38  7C 00 36 70 */	srawi r0, r0, 6
/* 803BEA3C  7C 60 01 94 */	addze r3, r0
/* 803BEA40  38 03 00 01 */	addi r0, r3, 1
/* 803BEA44  2C 00 00 04 */	cmpwi r0, 4
/* 803BEA48  41 80 00 10 */	blt lbl_803BEA58
/* 803BEA4C  3B E0 00 01 */	li r31, 1
/* 803BEA50  48 00 00 08 */	b lbl_803BEA58
lbl_803BEA54:
/* 803BEA54  3B E0 00 01 */	li r31, 1
lbl_803BEA58:
/* 803BEA58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BEA5C  7F E3 FB 78 */	mr r3, r31
/* 803BEA60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BEA64  7C 08 03 A6 */	mtlr r0
/* 803BEA68  38 21 00 10 */	addi r1, r1, 0x10
/* 803BEA6C  4E 80 00 20 */	blr 
