lbl_803834F8:
/* 803834F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803834FC  7C 08 02 A6 */	mflr r0
/* 80383500  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383504  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80383508  7C 9F 23 78 */	mr r31, r4
/* 8038350C  93 C1 00 08 */	stw r30, 8(r1)
/* 80383510  7C 7E 1B 78 */	mr r30, r3
/* 80383514  48 00 06 6D */	bl mChoice_check_ct
/* 80383518  7F C3 F3 78 */	mr r3, r30
/* 8038351C  7F E4 FB 78 */	mr r4, r31
/* 80383520  48 00 00 45 */	bl mChoice_init
/* 80383524  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80383528  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038352C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80383530  7C 08 03 A6 */	mtlr r0
/* 80383534  38 21 00 10 */	addi r1, r1, 0x10
/* 80383538  4E 80 00 20 */	blr 
