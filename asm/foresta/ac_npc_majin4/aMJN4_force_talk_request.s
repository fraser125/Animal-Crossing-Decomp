lbl_805590B4:
/* 805590B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805590B8  7C 08 02 A6 */	mflr r0
/* 805590BC  3C A0 80 56 */	lis r5, func_8055903C@ha /* 0x8055903C@ha */
/* 805590C0  7C 64 1B 78 */	mr r4, r3
/* 805590C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805590C8  38 A5 90 3C */	addi r5, r5, func_8055903C@l /* 0x8055903C@l */
/* 805590CC  38 60 00 08 */	li r3, 8
/* 805590D0  4B E4 10 8D */	bl mDemo_Request
/* 805590D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805590D8  7C 08 03 A6 */	mtlr r0
/* 805590DC  38 21 00 10 */	addi r1, r1, 0x10
/* 805590E0  4E 80 00 20 */	blr 
