lbl_80555F44:
/* 80555F44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80555F48  7C 08 02 A6 */	mflr r0
/* 80555F4C  38 A0 00 80 */	li r5, 0x80
/* 80555F50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80555F54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80555F58  7C 9F 23 78 */	mr r31, r4
/* 80555F5C  38 80 80 00 */	li r4, -32768
/* 80555F60  93 C1 00 08 */	stw r30, 8(r1)
/* 80555F64  7C 7E 1B 78 */	mr r30, r3
/* 80555F68  38 7E 00 DE */	addi r3, r30, 0xde
/* 80555F6C  4B E6 4B D9 */	bl chase_angle
/* 80555F70  3C 80 80 65 */	lis r4, lit_837@ha /* 0x8064962C@ha */
/* 80555F74  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 80555F78  C0 24 96 2C */	lfs f1, lit_837@l(r4)  /* 0x8064962C@l */
/* 80555F7C  4B E1 A5 0D */	bl cKF_FrameControl_passCheck_now
/* 80555F80  2C 03 00 01 */	cmpwi r3, 1
/* 80555F84  40 82 00 34 */	bne lbl_80555FB8
/* 80555F88  80 9E 09 C0 */	lwz r4, 0x9c0(r30)
/* 80555F8C  38 00 00 01 */	li r0, 1
/* 80555F90  3C 60 80 65 */	lis r3, lit_786@ha /* 0x80649624@ha */
/* 80555F94  90 04 02 4C */	stw r0, 0x24c(r4)
/* 80555F98  C0 03 96 24 */	lfs f0, lit_786@l(r3)  /* 0x80649624@l */
/* 80555F9C  C0 3E 07 74 */	lfs f1, 0x774(r30)
/* 80555FA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80555FA4  40 80 00 14 */	bge lbl_80555FB8
/* 80555FA8  38 60 00 00 */	li r3, 0
/* 80555FAC  38 00 06 00 */	li r0, 0x600
/* 80555FB0  B0 7E 09 B6 */	sth r3, 0x9b6(r30)
/* 80555FB4  B0 1E 09 B8 */	sth r0, 0x9b8(r30)
lbl_80555FB8:
/* 80555FB8  7F C3 F3 78 */	mr r3, r30
/* 80555FBC  7F E4 FB 78 */	mr r4, r31
/* 80555FC0  4B FF FC 51 */	bl aNG2_standup
/* 80555FC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80555FC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80555FCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80555FD0  7C 08 03 A6 */	mtlr r0
/* 80555FD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80555FD8  4E 80 00 20 */	blr 
