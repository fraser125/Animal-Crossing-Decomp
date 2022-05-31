lbl_804E8D24:
/* 804E8D24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E8D28  7C 08 02 A6 */	mflr r0
/* 804E8D2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E8D30  4B FF FF 85 */	bl func_804E8CB4
/* 804E8D34  30 03 FF FF */	addic r0, r3, -1
/* 804E8D38  7C 60 19 10 */	subfe r3, r0, r3
/* 804E8D3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E8D40  7C 08 03 A6 */	mtlr r0
/* 804E8D44  38 21 00 10 */	addi r1, r1, 0x10
/* 804E8D48  4E 80 00 20 */	blr 
