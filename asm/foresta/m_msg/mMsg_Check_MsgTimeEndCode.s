lbl_803C056C:
/* 803C056C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C0570  7C 08 02 A6 */	mflr r0
/* 803C0574  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C0578  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803C057C  38 63 00 20 */	addi r3, r3, 0x20
/* 803C0580  4B FF FF C5 */	bl mMsg_Check_MsgTimeEndCode_forData
/* 803C0584  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C0588  7C 08 03 A6 */	mtlr r0
/* 803C058C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C0590  4E 80 00 20 */	blr 
