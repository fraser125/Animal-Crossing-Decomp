lbl_8046F400:
/* 8046F400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046F404  7C 08 02 A6 */	mflr r0
/* 8046F408  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046F40C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046F410  7C 9F 23 78 */	mr r31, r4
/* 8046F414  93 C1 00 08 */	stw r30, 8(r1)
/* 8046F418  7C 7E 1B 78 */	mr r30, r3
/* 8046F41C  4B FF FE DD */	bl aMI_InitActorMember
/* 8046F420  7F C3 F3 78 */	mr r3, r30
/* 8046F424  7F E4 FB 78 */	mr r4, r31
/* 8046F428  4B FF F9 8D */	bl aMI_GetMyIndoorBank
/* 8046F42C  7F C3 F3 78 */	mr r3, r30
/* 8046F430  7F E4 FB 78 */	mr r4, r31
/* 8046F434  4B FF FC 61 */	bl aMI_MyIndoorDma
/* 8046F438  7F C3 F3 78 */	mr r3, r30
/* 8046F43C  38 80 00 01 */	li r4, 1
/* 8046F440  4B FF FC E1 */	bl aMI_SetClipProc
/* 8046F444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046F448  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046F44C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8046F450  7C 08 03 A6 */	mtlr r0
/* 8046F454  38 21 00 10 */	addi r1, r1, 0x10
/* 8046F458  4E 80 00 20 */	blr 
