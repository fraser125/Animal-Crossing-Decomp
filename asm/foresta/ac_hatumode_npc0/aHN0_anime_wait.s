lbl_8052B370:
/* 8052B370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052B374  7C 08 02 A6 */	mflr r0
/* 8052B378  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052B37C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052B380  7C 9F 23 78 */	mr r31, r4
/* 8052B384  93 C1 00 08 */	stw r30, 8(r1)
/* 8052B388  7C 7E 1B 78 */	mr r30, r3
/* 8052B38C  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 8052B390  4B E4 51 91 */	bl cKF_FrameControl_stop_proc
/* 8052B394  2C 03 00 01 */	cmpwi r3, 1
/* 8052B398  40 82 00 1C */	bne lbl_8052B3B4
/* 8052B39C  88 BE 09 A2 */	lbz r5, 0x9a2(r30)
/* 8052B3A0  7F C3 F3 78 */	mr r3, r30
/* 8052B3A4  7F E4 FB 78 */	mr r4, r31
/* 8052B3A8  38 A5 00 01 */	addi r5, r5, 1
/* 8052B3AC  98 BE 09 A2 */	stb r5, 0x9a2(r30)
/* 8052B3B0  48 00 06 99 */	bl aHN0_setup_think_proc
lbl_8052B3B4:
/* 8052B3B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052B3B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052B3BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052B3C0  7C 08 03 A6 */	mtlr r0
/* 8052B3C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8052B3C8  4E 80 00 20 */	blr 
