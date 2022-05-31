lbl_8037B73C:
/* 8037B73C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037B740  7C 08 02 A6 */	mflr r0
/* 8037B744  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037B748  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037B74C  7C 7F 1B 78 */	mr r31, r3
/* 8037B750  38 7F 01 78 */	addi r3, r31, 0x178
/* 8037B754  4B FF FD 95 */	bl mBGMPsComp_MDPlayerPos_main_inform_sound
/* 8037B758  38 7F 01 90 */	addi r3, r31, 0x190
/* 8037B75C  4B FF FD DD */	bl mBGMPsComp_Arm_main_inform_sound
/* 8037B760  38 7F 01 30 */	addi r3, r31, 0x130
/* 8037B764  4B FF FE 35 */	bl mBGMPsComp_Stop_main_inform_sound
/* 8037B768  38 7F 01 36 */	addi r3, r31, 0x136
/* 8037B76C  4B FF FE 71 */	bl mBGMPsComp_Start_main_inform_sound
/* 8037B770  38 7F 01 74 */	addi r3, r31, 0x174
/* 8037B774  4B FF FF 41 */	bl mBGMPsComp_Pause_main_inform_sound
/* 8037B778  38 7F 01 3C */	addi r3, r31, 0x13c
/* 8037B77C  4B FF FE F1 */	bl mBGMPsComp_Volume_main_inform_sound
/* 8037B780  38 7F 01 94 */	addi r3, r31, 0x194
/* 8037B784  4B FF FF 75 */	bl mBGMPsComp_Museum_main_inform_sound
/* 8037B788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037B78C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037B790  7C 08 03 A6 */	mtlr r0
/* 8037B794  38 21 00 10 */	addi r1, r1, 0x10
/* 8037B798  4E 80 00 20 */	blr 
