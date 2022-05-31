lbl_80471BA8:
/* 80471BA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80471BAC  7C 08 02 A6 */	mflr r0
/* 80471BB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80471BB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80471BB8  7C 7F 1B 78 */	mr r31, r3
/* 80471BBC  A0 63 00 00 */	lhz r3, 0(r3)
/* 80471BC0  4B FF E5 E1 */	bl func_804701A0
/* 80471BC4  A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 80471BC8  54 00 97 FF */	rlwinm. r0, r0, 0x12, 0x1f, 0x1f
/* 80471BCC  41 82 00 10 */	beq lbl_80471BDC
/* 80471BD0  38 00 00 00 */	li r0, 0
/* 80471BD4  98 1F 01 2D */	stb r0, 0x12d(r31)
/* 80471BD8  98 1F 01 2C */	stb r0, 0x12c(r31)
lbl_80471BDC:
/* 80471BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80471BE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80471BE4  7C 08 03 A6 */	mtlr r0
/* 80471BE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80471BEC  4E 80 00 20 */	blr 
