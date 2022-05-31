lbl_8062DF44:
/* 8062DF44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062DF48  7C 08 02 A6 */	mflr r0
/* 8062DF4C  3C C0 81 36 */	lis r6, S_ongenpos_refuse_fg@ha /* 0x8135FBB0@ha */
/* 8062DF50  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062DF54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8062DF58  7C 9F 23 78 */	mr r31, r4
/* 8062DF5C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8062DF60  7C 7E 1B 78 */	mr r30, r3
/* 8062DF64  80 06 FB B0 */	lwz r0, S_ongenpos_refuse_fg@l(r6)  /* 0x8135FBB0@l */
/* 8062DF68  2C 00 00 00 */	cmpwi r0, 0
/* 8062DF6C  40 82 00 24 */	bne lbl_8062DF90
/* 8062DF70  38 61 00 0C */	addi r3, r1, 0xc
/* 8062DF74  38 81 00 08 */	addi r4, r1, 8
/* 8062DF78  4B FF FD 0D */	bl sAdo_Calc_MicPosition_forLevel
/* 8062DF7C  A0 A1 00 08 */	lhz r5, 8(r1)
/* 8062DF80  7F C3 F3 78 */	mr r3, r30
/* 8062DF84  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8062DF88  7F E4 FB 78 */	mr r4, r31
/* 8062DF8C  4B 9E 4E A1 */	bl Na_OngenPos
lbl_8062DF90:
/* 8062DF90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062DF94  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8062DF98  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8062DF9C  7C 08 03 A6 */	mtlr r0
/* 8062DFA0  38 21 00 20 */	addi r1, r1, 0x20
/* 8062DFA4  4E 80 00 20 */	blr 
