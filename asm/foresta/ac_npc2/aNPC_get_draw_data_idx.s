lbl_80544934:
/* 80544934  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80544938  7C 08 02 A6 */	mflr r0
/* 8054493C  38 80 FF FF */	li r4, -1
/* 80544940  90 01 00 14 */	stw r0, 0x14(r1)
/* 80544944  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 80544948  2C 00 00 0E */	cmpwi r0, 0xe
/* 8054494C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80544950  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80544954  93 C1 00 08 */	stw r30, 8(r1)
/* 80544958  7C 7E 1B 78 */	mr r30, r3
/* 8054495C  41 82 00 8C */	beq lbl_805449E8
/* 80544960  40 80 00 90 */	bge lbl_805449F0
/* 80544964  2C 00 00 0D */	cmpwi r0, 0xd
/* 80544968  40 80 00 08 */	bge lbl_80544970
/* 8054496C  48 00 00 84 */	b lbl_805449F0
lbl_80544970:
/* 80544970  4B E8 A2 79 */	bl mNpc_GetSameEventNpc
/* 80544974  28 03 00 00 */	cmplwi r3, 0
/* 80544978  41 82 00 2C */	beq lbl_805449A4
/* 8054497C  A0 63 00 02 */	lhz r3, 2(r3)
/* 80544980  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 80544984  2C 00 00 0E */	cmpwi r0, 0xe
/* 80544988  40 82 00 10 */	bne lbl_80544998
/* 8054498C  3C 83 FF FF */	addis r4, r3, 0xffff
/* 80544990  38 84 20 00 */	addi r4, r4, 0x2000
/* 80544994  48 00 00 5C */	b lbl_805449F0
lbl_80544998:
/* 80544998  3C 83 FF FF */	addis r4, r3, 0xffff
/* 8054499C  38 84 30 EE */	addi r4, r4, 0x30ee
/* 805449A0  48 00 00 50 */	b lbl_805449F0
lbl_805449A4:
/* 805449A4  7F C3 F3 78 */	mr r3, r30
/* 805449A8  4B E8 A4 7D */	bl mNpc_GetSameMaskNpc
/* 805449AC  28 03 00 00 */	cmplwi r3, 0
/* 805449B0  41 82 00 2C */	beq lbl_805449DC
/* 805449B4  A0 63 00 02 */	lhz r3, 2(r3)
/* 805449B8  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 805449BC  2C 00 00 0E */	cmpwi r0, 0xe
/* 805449C0  40 82 00 10 */	bne lbl_805449D0
/* 805449C4  3C 83 FF FF */	addis r4, r3, 0xffff
/* 805449C8  38 84 20 00 */	addi r4, r4, 0x2000
/* 805449CC  48 00 00 24 */	b lbl_805449F0
lbl_805449D0:
/* 805449D0  3C 83 FF FF */	addis r4, r3, 0xffff
/* 805449D4  38 84 30 EE */	addi r4, r4, 0x30ee
/* 805449D8  48 00 00 18 */	b lbl_805449F0
lbl_805449DC:
/* 805449DC  3C 9F FF FF */	addis r4, r31, 0xffff
/* 805449E0  38 84 30 EE */	addi r4, r4, 0x30ee
/* 805449E4  48 00 00 0C */	b lbl_805449F0
lbl_805449E8:
/* 805449E8  3C 9F FF FF */	addis r4, r31, 0xffff
/* 805449EC  38 84 20 00 */	addi r4, r4, 0x2000
lbl_805449F0:
/* 805449F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805449F4  7C 83 23 78 */	mr r3, r4
/* 805449F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805449FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80544A00  7C 08 03 A6 */	mtlr r0
/* 80544A04  38 21 00 10 */	addi r1, r1, 0x10
/* 80544A08  4E 80 00 20 */	blr 