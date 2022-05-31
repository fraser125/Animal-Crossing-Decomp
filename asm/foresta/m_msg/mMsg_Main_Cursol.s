lbl_803C54C0:
/* 803C54C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C54C4  7C 08 02 A6 */	mflr r0
/* 803C54C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C54CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C54D0  7C 9F 23 78 */	mr r31, r4
/* 803C54D4  93 C1 00 08 */	stw r30, 8(r1)
/* 803C54D8  7C 7E 1B 78 */	mr r30, r3
/* 803C54DC  4B FF FC 85 */	bl mMsg_Main_Cursol_ControlCursol
/* 803C54E0  7C 60 1B 78 */	mr r0, r3
/* 803C54E4  7F C3 F3 78 */	mr r3, r30
/* 803C54E8  7C 04 03 78 */	mr r4, r0
/* 803C54EC  4B FF FF A5 */	bl mMsg_request_main_index_fromCursol
/* 803C54F0  7F C3 F3 78 */	mr r3, r30
/* 803C54F4  7F E4 FB 78 */	mr r4, r31
/* 803C54F8  4B FF 9E 85 */	bl func_803BF37C
/* 803C54FC  80 1E 04 34 */	lwz r0, 0x434(r30)
/* 803C5500  2C 00 00 03 */	cmpwi r0, 3
/* 803C5504  41 82 00 10 */	beq lbl_803C5514
/* 803C5508  80 1E 04 0C */	lwz r0, 0x40c(r30)
/* 803C550C  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 803C5510  90 1E 04 0C */	stw r0, 0x40c(r30)
lbl_803C5514:
/* 803C5514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C5518  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C551C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C5520  7C 08 03 A6 */	mtlr r0
/* 803C5524  38 21 00 10 */	addi r1, r1, 0x10
/* 803C5528  4E 80 00 20 */	blr 
