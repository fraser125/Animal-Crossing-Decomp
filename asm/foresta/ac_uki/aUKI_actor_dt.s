lbl_804AD6D4:
/* 804AD6D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AD6D8  7C 08 02 A6 */	mflr r0
/* 804AD6DC  7C 65 1B 78 */	mr r5, r3
/* 804AD6E0  7C 83 23 78 */	mr r3, r4
/* 804AD6E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AD6E8  38 85 01 78 */	addi r4, r5, 0x178
/* 804AD6EC  4B EE 6F 7D */	bl ClObjPipe_dt
/* 804AD6F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AD6F4  7C 08 03 A6 */	mtlr r0
/* 804AD6F8  38 21 00 10 */	addi r1, r1, 0x10
/* 804AD6FC  4E 80 00 20 */	blr 
