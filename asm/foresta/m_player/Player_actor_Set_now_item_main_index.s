lbl_804D568C:
/* 804D568C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D5690  7C 08 02 A6 */	mflr r0
/* 804D5694  2C 04 00 00 */	cmpwi r4, 0
/* 804D5698  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D569C  80 A3 0D 04 */	lwz r5, 0xd04(r3)
/* 804D56A0  41 80 00 14 */	blt lbl_804D56B4
/* 804D56A4  2C 04 00 18 */	cmpwi r4, 0x18
/* 804D56A8  40 80 00 0C */	bge lbl_804D56B4
/* 804D56AC  90 83 0D 04 */	stw r4, 0xd04(r3)
/* 804D56B0  48 00 E6 05 */	bl func_804E3CB4
lbl_804D56B4:
/* 804D56B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D56B8  7C 08 03 A6 */	mtlr r0
/* 804D56BC  38 21 00 10 */	addi r1, r1, 0x10
/* 804D56C0  4E 80 00 20 */	blr 
