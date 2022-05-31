lbl_80532CA4:
/* 80532CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80532CA8  7C 08 02 A6 */	mflr r0
/* 80532CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80532CB0  4B E9 F2 51 */	bl mNpc_GetNpcLooks
/* 80532CB4  3C 80 80 6A */	lis r4, step_table@ha /* 0x806A2580@ha */
/* 80532CB8  38 84 25 80 */	addi r4, r4, step_table@l /* 0x806A2580@l */
/* 80532CBC  7C 64 18 AE */	lbzx r3, r4, r3
/* 80532CC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80532CC4  7C 08 03 A6 */	mtlr r0
/* 80532CC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80532CCC  4E 80 00 20 */	blr 
