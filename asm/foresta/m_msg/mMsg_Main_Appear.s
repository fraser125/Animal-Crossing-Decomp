lbl_803C27C8:
/* 803C27C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C27CC  7C 08 02 A6 */	mflr r0
/* 803C27D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C27D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C27D8  7C 9F 23 78 */	mr r31, r4
/* 803C27DC  93 C1 00 08 */	stw r30, 8(r1)
/* 803C27E0  7C 7E 1B 78 */	mr r30, r3
/* 803C27E4  4B FF FE F9 */	bl func_803C26DC
/* 803C27E8  7C 60 1B 78 */	mr r0, r3
/* 803C27EC  7F C3 F3 78 */	mr r3, r30
/* 803C27F0  7C 05 03 78 */	mr r5, r0
/* 803C27F4  7F E4 FB 78 */	mr r4, r31
/* 803C27F8  4B FF FF 7D */	bl mMsg_request_main_index_fromAppear
/* 803C27FC  7F C3 F3 78 */	mr r3, r30
/* 803C2800  7F E4 FB 78 */	mr r4, r31
/* 803C2804  4B FF CB 79 */	bl func_803BF37C
/* 803C2808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C280C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C2810  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C2814  7C 08 03 A6 */	mtlr r0
/* 803C2818  38 21 00 10 */	addi r1, r1, 0x10
/* 803C281C  4E 80 00 20 */	blr 
