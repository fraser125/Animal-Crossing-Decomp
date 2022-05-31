lbl_804E9CAC:
/* 804E9CAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E9CB0  7C 08 02 A6 */	mflr r0
/* 804E9CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E9CB8  4B FF FF 91 */	bl func_804E9C48
/* 804E9CBC  30 03 FF FF */	addic r0, r3, -1
/* 804E9CC0  7C 60 19 10 */	subfe r3, r0, r3
/* 804E9CC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E9CC8  7C 08 03 A6 */	mtlr r0
/* 804E9CCC  38 21 00 10 */	addi r1, r1, 0x10
/* 804E9CD0  4E 80 00 20 */	blr 
