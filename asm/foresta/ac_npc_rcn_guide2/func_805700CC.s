lbl_805700CC:
/* 805700CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805700D0  7C 08 02 A6 */	mflr r0
/* 805700D4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805700D8  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805700DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805700E0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805700E4  3C 84 00 03 */	addis r4, r4, 3
/* 805700E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805700EC  7C 7F 1B 78 */	mr r31, r3
/* 805700F0  38 65 52 F0 */	addi r3, r5, data_811C52F0@l /* 0x811C52F0@l */
/* 805700F4  38 A0 00 01 */	li r5, 1
/* 805700F8  80 63 00 00 */	lwz r3, 0(r3)
/* 805700FC  38 84 85 44 */	addi r4, r4, -31420
/* 80570100  4B E8 10 A9 */	bl goto_other_scene
/* 80570104  2C 03 00 01 */	cmpwi r3, 1
/* 80570108  41 82 00 10 */	beq lbl_80570118
/* 8057010C  7F E3 FB 78 */	mr r3, r31
/* 80570110  4B E2 A1 91 */	bl mDemo_End
/* 80570114  48 00 00 14 */	b lbl_80570128
lbl_80570118:
/* 80570118  38 60 00 0E */	li r3, 0xe
/* 8057011C  4B E0 C7 05 */	bl mBGMPsComp_scene_mode
/* 80570120  38 60 01 95 */	li r3, 0x195
/* 80570124  4B E0 B9 E9 */	bl mBGMPsComp_make_ps_wipe
lbl_80570128:
/* 80570128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057012C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80570130  7C 08 03 A6 */	mtlr r0
/* 80570134  38 21 00 10 */	addi r1, r1, 0x10
/* 80570138  4E 80 00 20 */	blr 
