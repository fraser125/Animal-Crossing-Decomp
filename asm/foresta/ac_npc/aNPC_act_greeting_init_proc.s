lbl_8053305C:
/* 8053305C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80533060  7C 08 02 A6 */	mflr r0
/* 80533064  90 01 00 14 */	stw r0, 0x14(r1)
/* 80533068  38 00 00 01 */	li r0, 1
/* 8053306C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80533070  7C 7F 1B 78 */	mr r31, r3
/* 80533074  98 03 08 9E */	stb r0, 0x89e(r3)
/* 80533078  38 00 00 00 */	li r0, 0
/* 8053307C  98 03 08 18 */	stb r0, 0x818(r3)
/* 80533080  4B FF FA 29 */	bl aNPC_act_greeting_reaction
/* 80533084  7F E3 FB 78 */	mr r3, r31
/* 80533088  38 80 00 00 */	li r4, 0
/* 8053308C  4B FF FC 45 */	bl aNPC_act_greeting_chg_step
/* 80533090  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80533094  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80533098  7C 08 03 A6 */	mtlr r0
/* 8053309C  38 21 00 10 */	addi r1, r1, 0x10
/* 805330A0  4E 80 00 20 */	blr 
