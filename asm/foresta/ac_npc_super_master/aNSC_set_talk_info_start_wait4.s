lbl_80582CA8:
/* 80582CA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80582CAC  7C 08 02 A6 */	mflr r0
/* 80582CB0  38 60 FF FF */	li r3, -1
/* 80582CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80582CB8  4B FF F0 D1 */	bl aNSC_get_msg_no
/* 80582CBC  4B E1 58 59 */	bl mDemo_Set_msg_num
/* 80582CC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80582CC4  7C 08 03 A6 */	mtlr r0
/* 80582CC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80582CCC  4E 80 00 20 */	blr 
