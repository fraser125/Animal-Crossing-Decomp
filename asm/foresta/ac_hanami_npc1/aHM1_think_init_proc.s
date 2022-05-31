lbl_8052A7A8:
/* 8052A7A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052A7AC  7C 08 02 A6 */	mflr r0
/* 8052A7B0  3C 80 80 53 */	lis r4, aHM1_act_proc@ha /* 0x8052A68C@ha */
/* 8052A7B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052A7B8  38 00 00 00 */	li r0, 0
/* 8052A7BC  90 03 07 D8 */	stw r0, 0x7d8(r3)
/* 8052A7C0  38 04 A6 8C */	addi r0, r4, aHM1_act_proc@l /* 0x8052A68C@l */
/* 8052A7C4  90 03 08 04 */	stw r0, 0x804(r3)
/* 8052A7C8  4B FF FA A9 */	bl func_8052A270
/* 8052A7CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052A7D0  7C 08 03 A6 */	mtlr r0
/* 8052A7D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8052A7D8  4E 80 00 20 */	blr 
