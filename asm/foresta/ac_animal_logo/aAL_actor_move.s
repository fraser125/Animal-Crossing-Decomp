lbl_80410CD0:
/* 80410CD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80410CD4  7C 08 02 A6 */	mflr r0
/* 80410CD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80410CDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80410CE0  7C 7F 1B 78 */	mr r31, r3
/* 80410CE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80410CE8  7C 9E 23 78 */	mr r30, r4
/* 80410CEC  4B FF 59 31 */	bl lbRTC_Sampling
/* 80410CF0  80 7F 05 64 */	lwz r3, 0x564(r31)
/* 80410CF4  2C 03 00 00 */	cmpwi r3, 0
/* 80410CF8  40 81 00 0C */	ble lbl_80410D04
/* 80410CFC  38 03 FF FF */	addi r0, r3, -1
/* 80410D00  90 1F 05 64 */	stw r0, 0x564(r31)
lbl_80410D04:
/* 80410D04  81 9F 01 78 */	lwz r12, 0x178(r31)
/* 80410D08  7F E3 FB 78 */	mr r3, r31
/* 80410D0C  7F C4 F3 78 */	mr r4, r30
/* 80410D10  7D 89 03 A6 */	mtctr r12
/* 80410D14  4E 80 04 21 */	bctrl 
/* 80410D18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80410D1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80410D20  83 C1 00 08 */	lwz r30, 8(r1)
/* 80410D24  7C 08 03 A6 */	mtlr r0
/* 80410D28  38 21 00 10 */	addi r1, r1, 0x10
/* 80410D2C  4E 80 00 20 */	blr 
