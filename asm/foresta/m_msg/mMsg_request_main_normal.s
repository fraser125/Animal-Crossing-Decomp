lbl_803BFBAC:
/* 803BFBAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BFBB0  7C 08 02 A6 */	mflr r0
/* 803BFBB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BFBB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BFBBC  7C 9F 23 78 */	mr r31, r4
/* 803BFBC0  38 80 00 02 */	li r4, 2
/* 803BFBC4  93 C1 00 08 */	stw r30, 8(r1)
/* 803BFBC8  7C 7E 1B 78 */	mr r30, r3
/* 803BFBCC  4B FF FB 05 */	bl mMsg_Change_request_main_index
/* 803BFBD0  2C 03 00 00 */	cmpwi r3, 0
/* 803BFBD4  41 82 00 10 */	beq lbl_803BFBE4
/* 803BFBD8  93 FE 04 60 */	stw r31, 0x460(r30)
/* 803BFBDC  38 60 00 01 */	li r3, 1
/* 803BFBE0  48 00 00 08 */	b lbl_803BFBE8
lbl_803BFBE4:
/* 803BFBE4  38 60 00 00 */	li r3, 0
lbl_803BFBE8:
/* 803BFBE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BFBEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BFBF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803BFBF4  7C 08 03 A6 */	mtlr r0
/* 803BFBF8  38 21 00 10 */	addi r1, r1, 0x10
/* 803BFBFC  4E 80 00 20 */	blr 
