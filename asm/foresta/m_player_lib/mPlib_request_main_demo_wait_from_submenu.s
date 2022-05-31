lbl_803D9ED4:
/* 803D9ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D9ED8  7C 08 02 A6 */	mflr r0
/* 803D9EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D9EE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D9EE4  7C 7F 1B 78 */	mr r31, r3
/* 803D9EE8  4B FF F9 C5 */	bl mPlib_Get_change_data_from_submenu_p
/* 803D9EEC  38 00 00 4A */	li r0, 0x4a
/* 803D9EF0  38 80 00 01 */	li r4, 1
/* 803D9EF4  90 03 00 00 */	stw r0, 0(r3)
/* 803D9EF8  38 00 00 00 */	li r0, 0
/* 803D9EFC  28 1F 00 00 */	cmplwi r31, 0
/* 803D9F00  90 83 00 04 */	stw r4, 4(r3)
/* 803D9F04  90 03 00 08 */	stw r0, 8(r3)
/* 803D9F08  93 E3 00 0C */	stw r31, 0xc(r3)
/* 803D9F0C  41 82 00 0C */	beq lbl_803D9F18
/* 803D9F10  7F E3 FB 78 */	mr r3, r31
/* 803D9F14  48 00 00 B1 */	bl mPlib_Set_able_force_speak_label
lbl_803D9F18:
/* 803D9F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D9F1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D9F20  7C 08 03 A6 */	mtlr r0
/* 803D9F24  38 21 00 10 */	addi r1, r1, 0x10
/* 803D9F28  4E 80 00 20 */	blr 
