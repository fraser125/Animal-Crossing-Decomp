lbl_803FA4CC:
/* 803FA4CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FA4D0  7C 08 02 A6 */	mflr r0
/* 803FA4D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FA4D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803FA4DC  7C 7F 1B 78 */	mr r31, r3
/* 803FA4E0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803FA4E4  28 03 00 00 */	cmplwi r3, 0
/* 803FA4E8  41 82 00 08 */	beq lbl_803FA4F0
/* 803FA4EC  4B FC 1F C9 */	bl zelda_free
lbl_803FA4F0:
/* 803FA4F0  80 7F 00 D0 */	lwz r3, 0xd0(r31)
/* 803FA4F4  28 03 00 00 */	cmplwi r3, 0
/* 803FA4F8  41 82 00 08 */	beq lbl_803FA500
/* 803FA4FC  4B FC 1F B9 */	bl zelda_free
lbl_803FA500:
/* 803FA500  80 7F 01 64 */	lwz r3, 0x164(r31)
/* 803FA504  28 03 00 00 */	cmplwi r3, 0
/* 803FA508  41 82 00 08 */	beq lbl_803FA510
/* 803FA50C  4B FC 1F A9 */	bl zelda_free
lbl_803FA510:
/* 803FA510  7F E3 FB 78 */	mr r3, r31
/* 803FA514  4B FF FF 75 */	bl mCD_ClearMemMgr_com
/* 803FA518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FA51C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803FA520  7C 08 03 A6 */	mtlr r0
/* 803FA524  38 21 00 10 */	addi r1, r1, 0x10
/* 803FA528  4E 80 00 20 */	blr 
