lbl_804EF820:
/* 804EF820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF824  7C 08 02 A6 */	mflr r0
/* 804EF828  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF82C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EF830  7C 7F 1B 78 */	mr r31, r3
/* 804EF834  4B FE 7C A9 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804EF838  2C 03 00 00 */	cmpwi r3, 0
/* 804EF83C  40 82 00 0C */	bne lbl_804EF848
/* 804EF840  7F E3 FB 78 */	mr r3, r31
/* 804EF844  4B FF FF 95 */	bl Player_actor_SetSound_Standup
lbl_804EF848:
/* 804EF848  7F E3 FB 78 */	mr r3, r31
/* 804EF84C  4B FF FF 5D */	bl Player_actor_ControlShadow_Standup
/* 804EF850  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF854  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EF858  7C 08 03 A6 */	mtlr r0
/* 804EF85C  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF860  4E 80 00 20 */	blr 
