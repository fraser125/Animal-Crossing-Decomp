lbl_803846F0:
/* 803846F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803846F4  7C 08 02 A6 */	mflr r0
/* 803846F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803846FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80384700  7C 9F 23 78 */	mr r31, r4
/* 80384704  93 C1 00 08 */	stw r30, 8(r1)
/* 80384708  7C 7E 1B 78 */	mr r30, r3
/* 8038470C  4B FF FE E9 */	bl func_803845F4
/* 80384710  7C 60 1B 78 */	mr r0, r3
/* 80384714  7F C3 F3 78 */	mr r3, r30
/* 80384718  7C 05 03 78 */	mr r5, r0
/* 8038471C  7F E4 FB 78 */	mr r4, r31
/* 80384720  4B FF FF A5 */	bl mChoice_request_main_index_fromAppear
/* 80384724  7F C3 F3 78 */	mr r3, r30
/* 80384728  7F E4 FB 78 */	mr r4, r31
/* 8038472C  4B FF EC 39 */	bl func_80383364
/* 80384730  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80384734  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80384738  83 C1 00 08 */	lwz r30, 8(r1)
/* 8038473C  7C 08 03 A6 */	mtlr r0
/* 80384740  38 21 00 10 */	addi r1, r1, 0x10
/* 80384744  4E 80 00 20 */	blr 
