lbl_8039F468:
/* 8039F468  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039F46C  7C 08 02 A6 */	mflr r0
/* 8039F470  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039F474  4B FF FF B5 */	bl func_8039F428
/* 8039F478  2C 03 FF FF */	cmpwi r3, -1
/* 8039F47C  41 82 00 20 */	beq lbl_8039F49C
/* 8039F480  3C 80 80 65 */	lis r4, l_event_set_table@ha /* 0x80652910@ha */
/* 8039F484  54 60 10 3A */	slwi r0, r3, 2
/* 8039F488  38 84 29 10 */	addi r4, r4, l_event_set_table@l /* 0x80652910@l */
/* 8039F48C  7C 04 00 2E */	lwzx r0, r4, r0
/* 8039F490  28 00 00 00 */	cmplwi r0, 0
/* 8039F494  40 82 00 08 */	bne lbl_8039F49C
/* 8039F498  38 60 FF FF */	li r3, -1
lbl_8039F49C:
/* 8039F49C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039F4A0  7C 08 03 A6 */	mtlr r0
/* 8039F4A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8039F4A8  4E 80 00 20 */	blr 
