lbl_804D5520:
/* 804D5520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D5524  7C 08 02 A6 */	mflr r0
/* 804D5528  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D552C  80 63 0C F4 */	lwz r3, 0xcf4(r3)
/* 804D5530  4B F0 4B C1 */	bl mPlib_Get_mouth_tex_p
/* 804D5534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D5538  7C 08 03 A6 */	mtlr r0
/* 804D553C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5540  4E 80 00 20 */	blr 
