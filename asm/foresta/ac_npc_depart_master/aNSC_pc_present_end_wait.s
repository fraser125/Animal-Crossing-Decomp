lbl_80551A88:
/* 80551A88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80551A8C  7C 08 02 A6 */	mflr r0
/* 80551A90  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80551A94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80551A98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80551A9C  7C 9F 23 78 */	mr r31, r4
/* 80551AA0  93 C1 00 08 */	stw r30, 8(r1)
/* 80551AA4  7C 7E 1B 78 */	mr r30, r3
/* 80551AA8  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 80551AAC  3C 63 00 02 */	addis r3, r3, 2
/* 80551AB0  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 80551AB4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80551AB8  28 00 00 00 */	cmplwi r0, 0
/* 80551ABC  40 82 00 1C */	bne lbl_80551AD8
/* 80551AC0  4B E6 DB E9 */	bl func_803BF6A8
/* 80551AC4  4B E6 F2 89 */	bl mMsg_Unset_LockContinue
/* 80551AC8  7F C3 F3 78 */	mr r3, r30
/* 80551ACC  7F E4 FB 78 */	mr r4, r31
/* 80551AD0  38 A0 00 0F */	li r5, 0xf
/* 80551AD4  48 00 0D 61 */	bl aNSC_setupAction
lbl_80551AD8:
/* 80551AD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80551ADC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80551AE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80551AE4  7C 08 03 A6 */	mtlr r0
/* 80551AE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80551AEC  4E 80 00 20 */	blr 
