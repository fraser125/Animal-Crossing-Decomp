lbl_80496B9C:
/* 80496B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80496BA0  7C 08 02 A6 */	mflr r0
/* 80496BA4  38 80 40 00 */	li r4, 0x4000
/* 80496BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80496BAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80496BB0  7C 7F 1B 78 */	mr r31, r3
/* 80496BB4  4B BC 64 B5 */	bl bzero
/* 80496BB8  38 00 00 00 */	li r0, 0
/* 80496BBC  90 1F 40 00 */	stw r0, 0x4000(r31)
/* 80496BC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80496BC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80496BC8  7C 08 03 A6 */	mtlr r0
/* 80496BCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80496BD0  4E 80 00 20 */	blr 
