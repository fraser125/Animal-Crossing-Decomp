lbl_80495B30:
/* 80495B30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80495B34  7C 08 02 A6 */	mflr r0
/* 80495B38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80495B3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80495B40  7C 7F 1B 78 */	mr r31, r3
/* 80495B44  4B FF FF A1 */	bl aQMgr_talk_normal_kamakura_hello
/* 80495B48  7F E3 FB 78 */	mr r3, r31
/* 80495B4C  4B FF CD 09 */	bl aQMgr_normal_set_free_str
/* 80495B50  A0 7F 0A 98 */	lhz r3, 0xa98(r31)
/* 80495B54  4B FF BC F5 */	bl aQMgr_get_free_possession_idx
/* 80495B58  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CECA4@ha */
/* 80495B5C  38 84 EC A4 */	addi r4, r4, l_normal_info@l /* 0x811CECA4@l */
/* 80495B60  90 64 00 10 */	stw r3, 0x10(r4)
/* 80495B64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80495B68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80495B6C  7C 08 03 A6 */	mtlr r0
/* 80495B70  38 21 00 10 */	addi r1, r1, 0x10
/* 80495B74  4E 80 00 20 */	blr 
