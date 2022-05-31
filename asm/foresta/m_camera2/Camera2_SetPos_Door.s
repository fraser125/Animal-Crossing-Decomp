lbl_8038163C:
/* 8038163C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80381640  7C 08 02 A6 */	mflr r0
/* 80381644  90 01 00 14 */	stw r0, 0x14(r1)
/* 80381648  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038164C  93 C1 00 08 */	stw r30, 8(r1)
/* 80381650  7C 7E 1B 78 */	mr r30, r3
/* 80381654  83 E3 1C 04 */	lwz r31, 0x1c04(r3)
/* 80381658  7F E4 FB 78 */	mr r4, r31
/* 8038165C  4B FF FD BD */	bl Camera2_Door_SetCenterPos
/* 80381660  7F C3 F3 78 */	mr r3, r30
/* 80381664  7F E4 FB 78 */	mr r4, r31
/* 80381668  4B FF FE 75 */	bl Camera2_Door_SetEyePos
/* 8038166C  7F C3 F3 78 */	mr r3, r30
/* 80381670  4B FF FF A9 */	bl Camera2_Door_MorphCounterProc
/* 80381674  7F C3 F3 78 */	mr r3, r30
/* 80381678  4B FF C8 C5 */	bl Camera2_SetView
/* 8038167C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80381680  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80381684  83 C1 00 08 */	lwz r30, 8(r1)
/* 80381688  7C 08 03 A6 */	mtlr r0
/* 8038168C  38 21 00 10 */	addi r1, r1, 0x10
/* 80381690  4E 80 00 20 */	blr 
