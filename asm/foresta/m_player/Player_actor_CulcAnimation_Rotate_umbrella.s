lbl_80504D24:
/* 80504D24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80504D28  7C 08 02 A6 */	mflr r0
/* 80504D2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80504D30  4B FD 18 59 */	bl Player_actor_CulcAnimation_Base2
/* 80504D34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80504D38  7C 08 03 A6 */	mtlr r0
/* 80504D3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80504D40  4E 80 00 20 */	blr 
