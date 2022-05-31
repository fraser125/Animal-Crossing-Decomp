lbl_8052B3CC:
/* 8052B3CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052B3D0  7C 08 02 A6 */	mflr r0
/* 8052B3D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052B3D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8052B3DC  7C 9F 23 78 */	mr r31, r4
/* 8052B3E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8052B3E4  7C 7E 1B 78 */	mr r30, r3
/* 8052B3E8  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 8052B3EC  4B E4 51 35 */	bl cKF_FrameControl_stop_proc
/* 8052B3F0  2C 03 00 01 */	cmpwi r3, 1
/* 8052B3F4  40 82 00 20 */	bne lbl_8052B414
/* 8052B3F8  88 BE 09 A2 */	lbz r5, 0x9a2(r30)
/* 8052B3FC  7F C3 F3 78 */	mr r3, r30
/* 8052B400  7F E4 FB 78 */	mr r4, r31
/* 8052B404  38 A5 00 01 */	addi r5, r5, 1
/* 8052B408  98 BE 09 A2 */	stb r5, 0x9a2(r30)
/* 8052B40C  48 00 06 3D */	bl aHN0_setup_think_proc
/* 8052B410  48 00 00 70 */	b lbl_8052B480
lbl_8052B414:
/* 8052B414  3C 80 80 65 */	lis r4, lit_638@ha /* 0x80649264@ha */
/* 8052B418  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 8052B41C  C0 24 92 64 */	lfs f1, lit_638@l(r4)  /* 0x80649264@l */
/* 8052B420  4B E4 50 69 */	bl cKF_FrameControl_passCheck_now
/* 8052B424  2C 03 00 01 */	cmpwi r3, 1
/* 8052B428  40 82 00 58 */	bne lbl_8052B480
/* 8052B42C  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 8052B430  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8052B434  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8052B438  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8052B43C  3C 63 00 02 */	addis r3, r3, 2
/* 8052B440  7F E7 FB 78 */	mr r7, r31
/* 8052B444  90 81 00 08 */	stw r4, 8(r1)
/* 8052B448  38 81 00 08 */	addi r4, r1, 8
/* 8052B44C  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 8052B450  38 60 00 76 */	li r3, 0x76
/* 8052B454  90 01 00 0C */	stw r0, 0xc(r1)
/* 8052B458  38 A0 00 01 */	li r5, 1
/* 8052B45C  39 20 00 00 */	li r9, 0
/* 8052B460  39 40 00 00 */	li r10, 0
/* 8052B464  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8052B468  90 01 00 10 */	stw r0, 0x10(r1)
/* 8052B46C  81 86 00 00 */	lwz r12, 0(r6)
/* 8052B470  A8 DE 00 DE */	lha r6, 0xde(r30)
/* 8052B474  A1 1E 00 06 */	lhz r8, 6(r30)
/* 8052B478  7D 89 03 A6 */	mtctr r12
/* 8052B47C  4E 80 04 21 */	bctrl 
lbl_8052B480:
/* 8052B480  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052B484  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8052B488  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8052B48C  7C 08 03 A6 */	mtlr r0
/* 8052B490  38 21 00 20 */	addi r1, r1, 0x20
/* 8052B494  4E 80 00 20 */	blr 
