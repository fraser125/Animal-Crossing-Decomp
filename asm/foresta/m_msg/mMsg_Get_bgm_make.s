lbl_803C0448:
/* 803C0448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C044C  7C 08 02 A6 */	mflr r0
/* 803C0450  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C0454  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803C0458  38 63 00 20 */	addi r3, r3, 0x20
/* 803C045C  4B FF FF 95 */	bl mMsg_Get_bgm_make_forData
/* 803C0460  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C0464  7C 08 03 A6 */	mtlr r0
/* 803C0468  38 21 00 10 */	addi r1, r1, 0x10
/* 803C046C  4E 80 00 20 */	blr 
