lbl_803C9770:
/* 803C9770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C9774  7C 08 02 A6 */	mflr r0
/* 803C9778  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 803C977C  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 803C9780  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C9784  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803C9788  2C 00 00 03 */	cmpwi r0, 3
/* 803C978C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C9790  3B E0 00 00 */	li r31, 0
/* 803C9794  41 82 00 40 */	beq lbl_803C97D4
/* 803C9798  40 80 00 54 */	bge lbl_803C97EC
/* 803C979C  2C 00 00 02 */	cmpwi r0, 2
/* 803C97A0  40 80 00 08 */	bge lbl_803C97A8
/* 803C97A4  48 00 00 48 */	b lbl_803C97EC
lbl_803C97A8:
/* 803C97A8  2C 05 00 00 */	cmpwi r5, 0
/* 803C97AC  54 80 C7 3E */	rlwinm r0, r4, 0x18, 0x1c, 0x1f
/* 803C97B0  41 80 00 1C */	blt lbl_803C97CC
/* 803C97B4  3C 60 80 66 */	lis r3, item1_kinds@ha /* 0x8065AA84@ha */
/* 803C97B8  54 00 08 3C */	slwi r0, r0, 1
/* 803C97BC  38 63 AA 84 */	addi r3, r3, item1_kinds@l /* 0x8065AA84@l */
/* 803C97C0  7C 03 02 AE */	lhax r0, r3, r0
/* 803C97C4  7C 05 00 00 */	cmpw r5, r0
/* 803C97C8  41 80 00 24 */	blt lbl_803C97EC
lbl_803C97CC:
/* 803C97CC  3B E0 00 01 */	li r31, 1
/* 803C97D0  48 00 00 1C */	b lbl_803C97EC
lbl_803C97D4:
/* 803C97D4  48 01 DF BD */	bl mRmTp_FtrItemNo2FtrIdx
/* 803C97D8  2C 03 00 00 */	cmpwi r3, 0
/* 803C97DC  41 80 00 0C */	blt lbl_803C97E8
/* 803C97E0  2C 03 04 F2 */	cmpwi r3, 0x4f2
/* 803C97E4  41 80 00 08 */	blt lbl_803C97EC
lbl_803C97E8:
/* 803C97E8  3B E0 00 01 */	li r31, 1
lbl_803C97EC:
/* 803C97EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C97F0  7F E3 FB 78 */	mr r3, r31
/* 803C97F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C97F8  7C 08 03 A6 */	mtlr r0
/* 803C97FC  38 21 00 10 */	addi r1, r1, 0x10
/* 803C9800  4E 80 00 20 */	blr 
