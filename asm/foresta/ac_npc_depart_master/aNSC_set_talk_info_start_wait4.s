lbl_8054F51C:
/* 8054F51C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054F520  7C 08 02 A6 */	mflr r0
/* 8054F524  38 60 FF FF */	li r3, -1
/* 8054F528  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054F52C  4B FF F0 D1 */	bl aNSC_get_msg_no
/* 8054F530  4B E4 8F E5 */	bl mDemo_Set_msg_num
/* 8054F534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054F538  7C 08 03 A6 */	mtlr r0
/* 8054F53C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054F540  4E 80 00 20 */	blr 
