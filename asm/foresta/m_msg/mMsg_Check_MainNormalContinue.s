lbl_803C0C98:
/* 803C0C98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C0C9C  7C 08 02 A6 */	mflr r0
/* 803C0CA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C0CA4  80 03 04 34 */	lwz r0, 0x434(r3)
/* 803C0CA8  2C 00 00 02 */	cmpwi r0, 2
/* 803C0CAC  40 82 00 18 */	bne lbl_803C0CC4
/* 803C0CB0  4B FF F4 E5 */	bl mMsg_Check_NextIndex_ContinueCode
/* 803C0CB4  2C 03 00 00 */	cmpwi r3, 0
/* 803C0CB8  41 82 00 0C */	beq lbl_803C0CC4
/* 803C0CBC  38 60 00 01 */	li r3, 1
/* 803C0CC0  48 00 00 08 */	b lbl_803C0CC8
lbl_803C0CC4:
/* 803C0CC4  38 60 00 00 */	li r3, 0
lbl_803C0CC8:
/* 803C0CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C0CCC  7C 08 03 A6 */	mtlr r0
/* 803C0CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 803C0CD4  4E 80 00 20 */	blr 
