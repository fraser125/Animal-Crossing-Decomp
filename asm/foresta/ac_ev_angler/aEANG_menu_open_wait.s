lbl_80518CB4:
/* 80518CB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80518CB8  7C 08 02 A6 */	mflr r0
/* 80518CBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80518CC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80518CC4  7C 9F 23 78 */	mr r31, r4
/* 80518CC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80518CCC  7C 7E 1B 78 */	mr r30, r3
/* 80518CD0  4B EA 69 D9 */	bl func_803BF6A8
/* 80518CD4  4B EA 6A 6D */	bl mMsg_Check_main_wait
/* 80518CD8  2C 03 00 01 */	cmpwi r3, 1
/* 80518CDC  40 82 00 1C */	bne lbl_80518CF8
/* 80518CE0  81 9E 09 9C */	lwz r12, 0x99c(r30)
/* 80518CE4  7F C3 F3 78 */	mr r3, r30
/* 80518CE8  7F E4 FB 78 */	mr r4, r31
/* 80518CEC  38 A0 00 02 */	li r5, 2
/* 80518CF0  7D 89 03 A6 */	mtctr r12
/* 80518CF4  4E 80 04 21 */	bctrl 
lbl_80518CF8:
/* 80518CF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80518CFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80518D00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80518D04  7C 08 03 A6 */	mtlr r0
/* 80518D08  38 21 00 10 */	addi r1, r1, 0x10
/* 80518D0C  4E 80 00 20 */	blr 
