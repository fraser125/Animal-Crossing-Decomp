lbl_80483C60:
/* 80483C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80483C64  7C 08 02 A6 */	mflr r0
/* 80483C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80483C6C  80 03 01 84 */	lwz r0, 0x184(r3)
/* 80483C70  2C 00 00 00 */	cmpwi r0, 0
/* 80483C74  40 82 00 0C */	bne lbl_80483C80
/* 80483C78  4B FF FF 3D */	bl aPRD_setup_present_normal_npc_info
/* 80483C7C  48 00 00 08 */	b lbl_80483C84
lbl_80483C80:
/* 80483C80  4B FF FF B1 */	bl aPRD_setup_present_soncho_info
lbl_80483C84:
/* 80483C84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80483C88  7C 08 03 A6 */	mtlr r0
/* 80483C8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80483C90  4E 80 00 20 */	blr 
