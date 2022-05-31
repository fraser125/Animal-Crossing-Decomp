lbl_8055E180:
/* 8055E180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055E184  7C 08 02 A6 */	mflr r0
/* 8055E188  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8055E18C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055E190  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055E194  7C 9F 23 78 */	mr r31, r4
/* 8055E198  93 C1 00 08 */	stw r30, 8(r1)
/* 8055E19C  7C 7E 1B 78 */	mr r30, r3
/* 8055E1A0  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8055E1A4  3C 63 00 02 */	addis r3, r3, 2
/* 8055E1A8  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 8055E1AC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8055E1B0  28 00 00 00 */	cmplwi r0, 0
/* 8055E1B4  40 82 00 1C */	bne lbl_8055E1D0
/* 8055E1B8  4B E6 14 F1 */	bl func_803BF6A8
/* 8055E1BC  4B E6 2B 91 */	bl mMsg_Unset_LockContinue
/* 8055E1C0  7F C3 F3 78 */	mr r3, r30
/* 8055E1C4  7F E4 FB 78 */	mr r4, r31
/* 8055E1C8  38 A0 00 0F */	li r5, 0xf
/* 8055E1CC  48 00 0C 05 */	bl aNSC_setupAction
lbl_8055E1D0:
/* 8055E1D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055E1D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055E1D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055E1DC  7C 08 03 A6 */	mtlr r0
/* 8055E1E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8055E1E4  4E 80 00 20 */	blr 
