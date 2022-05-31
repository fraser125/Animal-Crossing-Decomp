lbl_803C2514:
/* 803C2514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2518  7C 08 02 A6 */	mflr r0
/* 803C251C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2520  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C2524  7C 7F 1B 78 */	mr r31, r3
/* 803C2528  4B FF FE ED */	bl mMsg_sound_voice_mode_get
/* 803C252C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803C2530  40 82 00 14 */	bne lbl_803C2544
/* 803C2534  7F E3 FB 78 */	mr r3, r31
/* 803C2538  4B FF FF 75 */	bl mMsg_sound_spec_change_voice_force
/* 803C253C  38 60 00 01 */	li r3, 1
/* 803C2540  48 00 00 08 */	b lbl_803C2548
lbl_803C2544:
/* 803C2544  38 60 00 00 */	li r3, 0
lbl_803C2548:
/* 803C2548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C254C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C2550  7C 08 03 A6 */	mtlr r0
/* 803C2554  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2558  4E 80 00 20 */	blr 
