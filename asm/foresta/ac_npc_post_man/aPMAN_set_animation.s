lbl_8056DCB4:
/* 8056DCB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056DCB8  7C 08 02 A6 */	mflr r0
/* 8056DCBC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8056DCC0  54 87 1D 78 */	rlwinm r7, r4, 3, 0x15, 0x1c
/* 8056DCC4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8056DCC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056DCCC  3C 85 00 02 */	addis r4, r5, 2
/* 8056DCD0  3C C0 80 6C */	lis r6, anime@ha /* 0x806BEB54@ha */
/* 8056DCD4  80 A4 60 4C */	lwz r5, 0x604c(r4)
/* 8056DCD8  38 06 EB 54 */	addi r0, r6, anime@l /* 0x806BEB54@l */
/* 8056DCDC  7C C0 3A 14 */	add r6, r0, r7
/* 8056DCE0  81 85 01 14 */	lwz r12, 0x114(r5)
/* 8056DCE4  80 86 00 00 */	lwz r4, 0(r6)
/* 8056DCE8  80 A6 00 04 */	lwz r5, 4(r6)
/* 8056DCEC  7D 89 03 A6 */	mtctr r12
/* 8056DCF0  4E 80 04 21 */	bctrl 
/* 8056DCF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056DCF8  7C 08 03 A6 */	mtlr r0
/* 8056DCFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8056DD00  4E 80 00 20 */	blr 
