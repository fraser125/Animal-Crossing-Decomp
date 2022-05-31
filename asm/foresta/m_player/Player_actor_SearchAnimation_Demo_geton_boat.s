lbl_80506278:
/* 80506278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050627C  7C 08 02 A6 */	mflr r0
/* 80506280  90 01 00 14 */	stw r0, 0x14(r1)
/* 80506284  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80506288  7C 7F 1B 78 */	mr r31, r3
/* 8050628C  4B FD 12 51 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 80506290  2C 03 00 00 */	cmpwi r3, 0
/* 80506294  40 82 00 0C */	bne lbl_805062A0
/* 80506298  7F E3 FB 78 */	mr r3, r31
/* 8050629C  4B FF FF 65 */	bl Player_actor_SetSound_Demo_geton_boat
lbl_805062A0:
/* 805062A0  7F E3 FB 78 */	mr r3, r31
/* 805062A4  4B FF FF A5 */	bl Player_actor_ControlShadow_Demo_geton_boat
/* 805062A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805062AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805062B0  7C 08 03 A6 */	mtlr r0
/* 805062B4  38 21 00 10 */	addi r1, r1, 0x10
/* 805062B8  4E 80 00 20 */	blr 
