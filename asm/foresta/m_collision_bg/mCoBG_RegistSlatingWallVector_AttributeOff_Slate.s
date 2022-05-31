lbl_8038C3F4:
/* 8038C3F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038C3F8  7C 08 02 A6 */	mflr r0
/* 8038C3FC  7C 68 1B 78 */	mr r8, r3
/* 8038C400  7C A7 2B 78 */	mr r7, r5
/* 8038C404  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038C408  80 63 00 00 */	lwz r3, 0(r3)
/* 8038C40C  1C 03 00 34 */	mulli r0, r3, 0x34
/* 8038C410  2C 03 00 80 */	cmpwi r3, 0x80
/* 8038C414  7C 68 02 14 */	add r3, r8, r0
/* 8038C418  38 63 00 04 */	addi r3, r3, 4
/* 8038C41C  40 80 00 24 */	bge lbl_8038C440
/* 8038C420  3C A0 80 65 */	lis r5, make_slate_wall_proc_table2@ha /* 0x80650A98@ha */
/* 8038C424  54 C0 17 7A */	rlwinm r0, r6, 2, 0x1d, 0x1d
/* 8038C428  38 C5 0A 98 */	addi r6, r5, make_slate_wall_proc_table2@l /* 0x80650A98@l */
/* 8038C42C  7D 86 00 2E */	lwzx r12, r6, r0
/* 8038C430  7D 05 43 78 */	mr r5, r8
/* 8038C434  7C E6 3B 78 */	mr r6, r7
/* 8038C438  7D 89 03 A6 */	mtctr r12
/* 8038C43C  4E 80 04 21 */	bctrl 
lbl_8038C440:
/* 8038C440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038C444  7C 08 03 A6 */	mtlr r0
/* 8038C448  38 21 00 10 */	addi r1, r1, 0x10
/* 8038C44C  4E 80 00 20 */	blr 
