lbl_80372BA4:
/* 80372BA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80372BA8  7C 08 02 A6 */	mflr r0
/* 80372BAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80372BB0  88 04 00 01 */	lbz r0, 1(r4)
/* 80372BB4  88 A4 00 00 */	lbz r5, 0(r4)
/* 80372BB8  81 03 20 90 */	lwz r8, 0x2090(r3)
/* 80372BBC  7C 00 07 74 */	extsb r0, r0
/* 80372BC0  7C A5 07 74 */	extsb r5, r5
/* 80372BC4  88 C4 00 02 */	lbz r6, 2(r4)
/* 80372BC8  88 E4 00 03 */	lbz r7, 3(r4)
/* 80372BCC  7C 00 41 D6 */	mullw r0, r0, r8
/* 80372BD0  80 63 00 00 */	lwz r3, 0(r3)
/* 80372BD4  7C 85 41 D6 */	mullw r4, r5, r8
/* 80372BD8  7C A0 00 D0 */	neg r5, r0
/* 80372BDC  48 07 28 9D */	bl tex_scroll2_dolphin
/* 80372BE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80372BE4  7C 08 03 A6 */	mtlr r0
/* 80372BE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80372BEC  4E 80 00 20 */	blr 
