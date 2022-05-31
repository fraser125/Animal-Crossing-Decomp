lbl_80376F88:
/* 80376F88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80376F8C  7C 08 02 A6 */	mflr r0
/* 80376F90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80376F94  A8 03 00 00 */	lha r0, 0(r3)
/* 80376F98  2C 00 00 79 */	cmpwi r0, 0x79
/* 80376F9C  40 82 00 44 */	bne lbl_80376FE0
/* 80376FA0  3C 80 80 65 */	lis r4, tunekiti_offset@ha /* 0x8064F43C@ha */
/* 80376FA4  3C C0 80 64 */	lis r6, lit_400@ha /* 0x80641240@ha */
/* 80376FA8  39 44 F4 3C */	addi r10, r4, tunekiti_offset@l /* 0x8064F43C@l */
/* 80376FAC  7C A4 2B 78 */	mr r4, r5
/* 80376FB0  81 2A 00 00 */	lwz r9, 0(r10)
/* 80376FB4  38 E6 12 40 */	addi r7, r6, lit_400@l /* 0x80641240@l */
/* 80376FB8  81 0A 00 04 */	lwz r8, 4(r10)
/* 80376FBC  38 C1 00 14 */	addi r6, r1, 0x14
/* 80376FC0  80 0A 00 08 */	lwz r0, 8(r10)
/* 80376FC4  38 A0 00 00 */	li r5, 0
/* 80376FC8  91 21 00 14 */	stw r9, 0x14(r1)
/* 80376FCC  C0 27 00 00 */	lfs f1, 0(r7)
/* 80376FD0  91 01 00 18 */	stw r8, 0x18(r1)
/* 80376FD4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80376FD8  4B FF FD F1 */	bl mAc_ActorShadowDraw
/* 80376FDC  48 00 00 40 */	b lbl_8037701C
lbl_80376FE0:
/* 80376FE0  3C 80 80 65 */	lis r4, mActorShadow_offset0@ha /* 0x8064F430@ha */
/* 80376FE4  3C C0 80 64 */	lis r6, lit_400@ha /* 0x80641240@ha */
/* 80376FE8  39 44 F4 30 */	addi r10, r4, mActorShadow_offset0@l /* 0x8064F430@l */
/* 80376FEC  7C A4 2B 78 */	mr r4, r5
/* 80376FF0  81 2A 00 00 */	lwz r9, 0(r10)
/* 80376FF4  38 E6 12 40 */	addi r7, r6, lit_400@l /* 0x80641240@l */
/* 80376FF8  81 0A 00 04 */	lwz r8, 4(r10)
/* 80376FFC  38 C1 00 08 */	addi r6, r1, 8
/* 80377000  80 0A 00 08 */	lwz r0, 8(r10)
/* 80377004  38 A0 00 00 */	li r5, 0
/* 80377008  91 21 00 08 */	stw r9, 8(r1)
/* 8037700C  C0 27 00 00 */	lfs f1, 0(r7)
/* 80377010  91 01 00 0C */	stw r8, 0xc(r1)
/* 80377014  90 01 00 10 */	stw r0, 0x10(r1)
/* 80377018  4B FF FD B1 */	bl mAc_ActorShadowDraw
lbl_8037701C:
/* 8037701C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80377020  7C 08 03 A6 */	mtlr r0
/* 80377024  38 21 00 20 */	addi r1, r1, 0x20
/* 80377028  4E 80 00 20 */	blr 
