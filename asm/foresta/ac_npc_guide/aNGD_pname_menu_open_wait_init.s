lbl_80554474:
/* 80554474  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80554478  7C 08 02 A6 */	mflr r0
/* 8055447C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80554480  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80554484  93 C1 00 08 */	stw r30, 8(r1)
/* 80554488  7C 7E 1B 78 */	mr r30, r3
/* 8055448C  4B E6 B2 1D */	bl func_803BF6A8
/* 80554490  7C 7F 1B 78 */	mr r31, r3
/* 80554494  4B E6 C8 AD */	bl mMsg_Set_LockContinue
/* 80554498  7F E3 FB 78 */	mr r3, r31
/* 8055449C  4B E6 B5 A9 */	bl mMsg_request_main_disappear_wait_type1
/* 805544A0  38 00 00 0C */	li r0, 0xc
/* 805544A4  90 1E 09 98 */	stw r0, 0x998(r30)
/* 805544A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805544AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805544B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805544B4  7C 08 03 A6 */	mtlr r0
/* 805544B8  38 21 00 10 */	addi r1, r1, 0x10
/* 805544BC  4E 80 00 20 */	blr 
