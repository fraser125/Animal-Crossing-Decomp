lbl_805422CC:
/* 805422CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805422D0  7C 08 02 A6 */	mflr r0
/* 805422D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805422D8  39 61 00 20 */	addi r11, r1, 0x20
/* 805422DC  4B B5 8B F9 */	bl func_8009AED4
/* 805422E0  7C 7D 1B 78 */	mr r29, r3
/* 805422E4  7C 9E 23 78 */	mr r30, r4
/* 805422E8  80 03 08 60 */	lwz r0, 0x860(r3)
/* 805422EC  3B E0 00 00 */	li r31, 0
/* 805422F0  28 00 00 00 */	cmplwi r0, 0
/* 805422F4  40 82 00 34 */	bne lbl_80542328
/* 805422F8  A0 1D 00 06 */	lhz r0, 6(r29)
/* 805422FC  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80542300  2C 00 00 0E */	cmpwi r0, 0xe
/* 80542304  40 82 00 2C */	bne lbl_80542330
/* 80542308  48 00 17 7D */	bl aNPC_setP_friendship
/* 8054230C  2C 03 00 01 */	cmpwi r3, 1
/* 80542310  40 82 00 20 */	bne lbl_80542330
/* 80542314  7F A3 EB 78 */	mr r3, r29
/* 80542318  7F C4 F3 78 */	mr r4, r30
/* 8054231C  4B FF FF 59 */	bl aNPC_chk_friendship_lv
/* 80542320  7C 7F 1B 78 */	mr r31, r3
/* 80542324  48 00 00 0C */	b lbl_80542330
lbl_80542328:
/* 80542328  4B FF FF 4D */	bl aNPC_chk_friendship_lv
/* 8054232C  7C 7F 1B 78 */	mr r31, r3
lbl_80542330:
/* 80542330  7F E3 FB 78 */	mr r3, r31
/* 80542334  39 61 00 20 */	addi r11, r1, 0x20
/* 80542338  4B B5 8B E9 */	bl func_8009AF20
/* 8054233C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80542340  7C 08 03 A6 */	mtlr r0
/* 80542344  38 21 00 20 */	addi r1, r1, 0x20
/* 80542348  4E 80 00 20 */	blr 