lbl_8057088C:
/* 8057088C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80570890  7C 08 02 A6 */	mflr r0
/* 80570894  90 01 00 14 */	stw r0, 0x14(r1)
/* 80570898  4B E7 32 D1 */	bl mQst_GetFirstJobData
/* 8057089C  4B E7 38 4D */	bl mQst_SetFirstJobOpenQuest
/* 805708A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805708A4  7C 08 03 A6 */	mtlr r0
/* 805708A8  38 21 00 10 */	addi r1, r1, 0x10
/* 805708AC  4E 80 00 20 */	blr 
