lbl_8057B708:
/* 8057B708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057B70C  7C 08 02 A6 */	mflr r0
/* 8057B710  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8057B714  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057B718  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057B71C  7C 9F 23 78 */	mr r31, r4
/* 8057B720  93 C1 00 08 */	stw r30, 8(r1)
/* 8057B724  7C 7E 1B 78 */	mr r30, r3
/* 8057B728  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8057B72C  3C 63 00 02 */	addis r3, r3, 2
/* 8057B730  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 8057B734  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8057B738  28 00 00 00 */	cmplwi r0, 0
/* 8057B73C  40 82 00 1C */	bne lbl_8057B758
/* 8057B740  4B E4 3F 69 */	bl func_803BF6A8
/* 8057B744  4B E4 56 09 */	bl mMsg_Unset_LockContinue
/* 8057B748  7F C3 F3 78 */	mr r3, r30
/* 8057B74C  7F E4 FB 78 */	mr r4, r31
/* 8057B750  38 A0 00 0F */	li r5, 0xf
/* 8057B754  48 00 0D 61 */	bl aNSC_setupAction
lbl_8057B758:
/* 8057B758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057B75C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057B760  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057B764  7C 08 03 A6 */	mtlr r0
/* 8057B768  38 21 00 10 */	addi r1, r1, 0x10
/* 8057B76C  4E 80 00 20 */	blr 
