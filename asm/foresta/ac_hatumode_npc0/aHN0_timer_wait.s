lbl_8052B498:
/* 8052B498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052B49C  7C 08 02 A6 */	mflr r0
/* 8052B4A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052B4A4  A8 A3 09 9C */	lha r5, 0x99c(r3)
/* 8052B4A8  2C 05 00 00 */	cmpwi r5, 0
/* 8052B4AC  40 81 00 10 */	ble lbl_8052B4BC
/* 8052B4B0  38 05 FF FF */	addi r0, r5, -1
/* 8052B4B4  B0 03 09 9C */	sth r0, 0x99c(r3)
/* 8052B4B8  48 00 00 14 */	b lbl_8052B4CC
lbl_8052B4BC:
/* 8052B4BC  88 A3 09 A2 */	lbz r5, 0x9a2(r3)
/* 8052B4C0  38 A5 00 01 */	addi r5, r5, 1
/* 8052B4C4  98 A3 09 A2 */	stb r5, 0x9a2(r3)
/* 8052B4C8  48 00 05 81 */	bl aHN0_setup_think_proc
lbl_8052B4CC:
/* 8052B4CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052B4D0  7C 08 03 A6 */	mtlr r0
/* 8052B4D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8052B4D8  4E 80 00 20 */	blr 
