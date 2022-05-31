lbl_80384BD0:
/* 80384BD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80384BD4  7C 08 02 A6 */	mflr r0
/* 80384BD8  2C 05 00 00 */	cmpwi r5, 0
/* 80384BDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80384BE0  41 82 00 0C */	beq lbl_80384BEC
/* 80384BE4  38 80 00 03 */	li r4, 3
/* 80384BE8  4B FF EA 85 */	bl mChoice_Change_request_main_index
lbl_80384BEC:
/* 80384BEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80384BF0  7C 08 03 A6 */	mtlr r0
/* 80384BF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80384BF8  4E 80 00 20 */	blr 
