lbl_8054234C:
/* 8054234C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80542350  7C 08 02 A6 */	mflr r0
/* 80542354  38 A0 00 00 */	li r5, 0
/* 80542358  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054235C  80 03 07 D8 */	lwz r0, 0x7d8(r3)
/* 80542360  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80542364  41 82 00 4C */	beq lbl_805423B0
/* 80542368  A0 03 00 06 */	lhz r0, 6(r3)
/* 8054236C  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80542370  2C 00 00 0D */	cmpwi r0, 0xd
/* 80542374  41 82 00 3C */	beq lbl_805423B0
/* 80542378  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 8054237C  2C 00 00 03 */	cmpwi r0, 3
/* 80542380  40 80 00 1C */	bge lbl_8054239C
/* 80542384  2C 00 00 00 */	cmpwi r0, 0
/* 80542388  40 80 00 08 */	bge lbl_80542390
/* 8054238C  48 00 00 10 */	b lbl_8054239C
lbl_80542390:
/* 80542390  4B FF FF 3D */	bl aNPC_chk_friendship_sub
/* 80542394  7C 65 1B 78 */	mr r5, r3
/* 80542398  48 00 00 18 */	b lbl_805423B0
lbl_8054239C:
/* 8054239C  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 805423A0  28 00 00 FF */	cmplwi r0, 0xff
/* 805423A4  40 82 00 0C */	bne lbl_805423B0
/* 805423A8  4B FF FF 25 */	bl aNPC_chk_friendship_sub
/* 805423AC  7C 65 1B 78 */	mr r5, r3
lbl_805423B0:
/* 805423B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805423B4  7C A3 2B 78 */	mr r3, r5
/* 805423B8  7C 08 03 A6 */	mtlr r0
/* 805423BC  38 21 00 10 */	addi r1, r1, 0x10
/* 805423C0  4E 80 00 20 */	blr 
