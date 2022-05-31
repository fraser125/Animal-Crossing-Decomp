lbl_803C04C8:
/* 803C04C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C04CC  7C 08 02 A6 */	mflr r0
/* 803C04D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C04D4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803C04D8  38 63 00 20 */	addi r3, r3, 0x20
/* 803C04DC  4B FF FF 95 */	bl mMsg_Get_bgm_delete_forData
/* 803C04E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C04E4  7C 08 03 A6 */	mtlr r0
/* 803C04E8  38 21 00 10 */	addi r1, r1, 0x10
/* 803C04EC  4E 80 00 20 */	blr 
