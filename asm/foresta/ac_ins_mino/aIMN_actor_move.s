lbl_8059F038:
/* 8059F038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059F03C  7C 08 02 A6 */	mflr r0
/* 8059F040  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059F044  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059F048  7C 7F 1B 78 */	mr r31, r3
/* 8059F04C  93 C1 00 08 */	stw r30, 8(r1)
/* 8059F050  7C 9E 23 78 */	mr r30, r4
/* 8059F054  4B E3 D0 65 */	bl mPlib_Get_item_net_catch_label
/* 8059F058  7C 03 F8 40 */	cmplw r3, r31
/* 8059F05C  40 82 00 28 */	bne lbl_8059F084
/* 8059F060  38 60 00 FF */	li r3, 0xff
/* 8059F064  38 00 80 00 */	li r0, -32768
/* 8059F068  90 7F 02 5C */	stw r3, 0x25c(r31)
/* 8059F06C  7F E3 FB 78 */	mr r3, r31
/* 8059F070  7F C5 F3 78 */	mr r5, r30
/* 8059F074  38 80 00 01 */	li r4, 1
/* 8059F078  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 8059F07C  4B FF FF 71 */	bl aIMN_setupAction
/* 8059F080  48 00 00 18 */	b lbl_8059F098
lbl_8059F084:
/* 8059F084  81 9F 01 DC */	lwz r12, 0x1dc(r31)
/* 8059F088  7F E3 FB 78 */	mr r3, r31
/* 8059F08C  7F C4 F3 78 */	mr r4, r30
/* 8059F090  7D 89 03 A6 */	mtctr r12
/* 8059F094  4E 80 04 21 */	bctrl 
lbl_8059F098:
/* 8059F098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059F09C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059F0A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059F0A4  7C 08 03 A6 */	mtlr r0
/* 8059F0A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8059F0AC  4E 80 00 20 */	blr 
