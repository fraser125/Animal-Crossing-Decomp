lbl_8054ACC4:
/* 8054ACC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054ACC8  7C 08 02 A6 */	mflr r0
/* 8054ACCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054ACD0  4B FF B2 F9 */	bl aNSC_set_pw_name_str
/* 8054ACD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054ACD8  7C 08 03 A6 */	mtlr r0
/* 8054ACDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8054ACE0  4E 80 00 20 */	blr 
