lbl_804FCBD8:
/* 804FCBD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FCBDC  7C 08 02 A6 */	mflr r0
/* 804FCBE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FCBE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FCBE8  7C 9F 23 78 */	mr r31, r4
/* 804FCBEC  93 C1 00 08 */	stw r30, 8(r1)
/* 804FCBF0  7C 7E 1B 78 */	mr r30, r3
/* 804FCBF4  4B FD A8 E9 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804FCBF8  2C 03 00 00 */	cmpwi r3, 0
/* 804FCBFC  40 82 00 18 */	bne lbl_804FCC14
/* 804FCC00  7F C3 F3 78 */	mr r3, r30
/* 804FCC04  7F E4 FB 78 */	mr r4, r31
/* 804FCC08  38 A0 00 00 */	li r5, 0
/* 804FCC0C  38 C0 00 00 */	li r6, 0
/* 804FCC10  4B FD E6 E1 */	bl Player_actor_Set_FootMark_Base1
lbl_804FCC14:
/* 804FCC14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FCC18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FCC1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FCC20  7C 08 03 A6 */	mtlr r0
/* 804FCC24  38 21 00 10 */	addi r1, r1, 0x10
/* 804FCC28  4E 80 00 20 */	blr 
