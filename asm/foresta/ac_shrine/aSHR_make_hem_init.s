lbl_805BAE98:
/* 805BAE98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BAE9C  7C 08 02 A6 */	mflr r0
/* 805BAEA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BAEA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BAEA8  7C 7F 1B 78 */	mr r31, r3
/* 805BAEAC  38 60 00 01 */	li r3, 1
/* 805BAEB0  4B DD D9 09 */	bl mDemo_Set_talk_return_demo_wait
/* 805BAEB4  7F E3 FB 78 */	mr r3, r31
/* 805BAEB8  4B E1 F1 0D */	bl mPlib_Set_able_force_speak_label
/* 805BAEBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BAEC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BAEC4  7C 08 03 A6 */	mtlr r0
/* 805BAEC8  38 21 00 10 */	addi r1, r1, 0x10
/* 805BAECC  4E 80 00 20 */	blr 
