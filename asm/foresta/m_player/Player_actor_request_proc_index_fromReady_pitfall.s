lbl_80501CBC:
/* 80501CBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80501CC0  7C 08 02 A6 */	mflr r0
/* 80501CC4  2C 04 00 00 */	cmpwi r4, 0
/* 80501CC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80501CCC  41 82 00 0C */	beq lbl_80501CD8
/* 80501CD0  38 80 00 1C */	li r4, 0x1c
/* 80501CD4  48 00 00 AD */	bl func_80501D80
lbl_80501CD8:
/* 80501CD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80501CDC  7C 08 03 A6 */	mtlr r0
/* 80501CE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80501CE4  4E 80 00 20 */	blr 
