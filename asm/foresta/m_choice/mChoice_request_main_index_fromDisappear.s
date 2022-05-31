lbl_80384D5C:
/* 80384D5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80384D60  7C 08 02 A6 */	mflr r0
/* 80384D64  2C 05 00 00 */	cmpwi r5, 0
/* 80384D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80384D6C  41 82 00 0C */	beq lbl_80384D78
/* 80384D70  38 80 00 00 */	li r4, 0
/* 80384D74  4B FF E8 F9 */	bl mChoice_Change_request_main_index
lbl_80384D78:
/* 80384D78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80384D7C  7C 08 03 A6 */	mtlr r0
/* 80384D80  38 21 00 10 */	addi r1, r1, 0x10
/* 80384D84  4E 80 00 20 */	blr 
