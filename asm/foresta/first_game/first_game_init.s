lbl_80629C20:
/* 80629C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80629C24  7C 08 02 A6 */	mflr r0
/* 80629C28  3C 80 80 63 */	lis r4, first_game_cleanup@ha /* 0x80629C1C@ha */
/* 80629C2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80629C30  38 04 9C 1C */	addi r0, r4, first_game_cleanup@l /* 0x80629C1C@l */
/* 80629C34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80629C38  7C 7F 1B 78 */	mr r31, r3
/* 80629C3C  90 03 00 08 */	stw r0, 8(r3)
/* 80629C40  48 00 00 25 */	bl sys_romcheck
/* 80629C44  4B DD 02 BD */	bl mCD_save_data_aram_malloc
/* 80629C48  7F E3 FB 78 */	mr r3, r31
/* 80629C4C  4B FF FF 75 */	bl func_80629BC0
/* 80629C50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80629C54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80629C58  7C 08 03 A6 */	mtlr r0
/* 80629C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80629C60  4E 80 00 20 */	blr 
