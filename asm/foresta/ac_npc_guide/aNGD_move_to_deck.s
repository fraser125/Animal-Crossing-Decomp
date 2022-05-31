lbl_80553ED4:
/* 80553ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80553ED8  7C 08 02 A6 */	mflr r0
/* 80553EDC  3C A0 80 65 */	lis r5, lit_815@ha /* 0x806495A8@ha */
/* 80553EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80553EE4  C0 25 95 A8 */	lfs f1, lit_815@l(r5)  /* 0x806495A8@l */
/* 80553EE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80553EEC  7C 9F 23 78 */	mr r31, r4
/* 80553EF0  93 C1 00 08 */	stw r30, 8(r1)
/* 80553EF4  7C 7E 1B 78 */	mr r30, r3
/* 80553EF8  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 80553EFC  4B E1 C5 8D */	bl cKF_FrameControl_passCheck_now
/* 80553F00  2C 03 00 01 */	cmpwi r3, 1
/* 80553F04  40 82 00 10 */	bne lbl_80553F14
/* 80553F08  80 7E 09 C0 */	lwz r3, 0x9c0(r30)
/* 80553F0C  38 00 00 01 */	li r0, 1
/* 80553F10  90 03 02 4C */	stw r0, 0x24c(r3)
lbl_80553F14:
/* 80553F14  7F C3 F3 78 */	mr r3, r30
/* 80553F18  7F E4 FB 78 */	mr r4, r31
/* 80553F1C  4B FF FE 4D */	bl aNGD_standup
/* 80553F20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80553F24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80553F28  83 C1 00 08 */	lwz r30, 8(r1)
/* 80553F2C  7C 08 03 A6 */	mtlr r0
/* 80553F30  38 21 00 10 */	addi r1, r1, 0x10
/* 80553F34  4E 80 00 20 */	blr 
