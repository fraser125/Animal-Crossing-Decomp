lbl_8058DA1C:
/* 8058DA1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058DA20  7C 08 02 A6 */	mflr r0
/* 8058DA24  3C 80 80 59 */	lis r4, aTM0_act_proc@ha /* 0x8058D98C@ha */
/* 8058DA28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058DA2C  38 00 00 00 */	li r0, 0
/* 8058DA30  90 03 07 D8 */	stw r0, 0x7d8(r3)
/* 8058DA34  38 04 D9 8C */	addi r0, r4, aTM0_act_proc@l /* 0x8058D98C@l */
/* 8058DA38  90 03 08 04 */	stw r0, 0x804(r3)
/* 8058DA3C  4B FF FF 01 */	bl func_8058D93C
/* 8058DA40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058DA44  7C 08 03 A6 */	mtlr r0
/* 8058DA48  38 21 00 10 */	addi r1, r1, 0x10
/* 8058DA4C  4E 80 00 20 */	blr 
