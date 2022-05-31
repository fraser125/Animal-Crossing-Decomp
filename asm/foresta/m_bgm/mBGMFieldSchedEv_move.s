lbl_8037A4C4:
/* 8037A4C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037A4C8  7C 08 02 A6 */	mflr r0
/* 8037A4CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037A4D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037A4D4  7C 9F 23 78 */	mr r31, r4
/* 8037A4D8  93 C1 00 08 */	stw r30, 8(r1)
/* 8037A4DC  7C 7E 1B 78 */	mr r30, r3
/* 8037A4E0  4B FF FB AD */	bl mBGMFieldSchedEv_info_set
/* 8037A4E4  7F C3 F3 78 */	mr r3, r30
/* 8037A4E8  7F E4 FB 78 */	mr r4, r31
/* 8037A4EC  4B FF FD F5 */	bl mBGMFieldSchedEv_ps_compose
/* 8037A4F0  7F C3 F3 78 */	mr r3, r30
/* 8037A4F4  4B FF FF 49 */	bl mBGMFieldSchedEv_sp_flag
/* 8037A4F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037A4FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037A500  83 C1 00 08 */	lwz r30, 8(r1)
/* 8037A504  7C 08 03 A6 */	mtlr r0
/* 8037A508  38 21 00 10 */	addi r1, r1, 0x10
/* 8037A50C  4E 80 00 20 */	blr 
