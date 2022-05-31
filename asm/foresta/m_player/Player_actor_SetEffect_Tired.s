lbl_804FFCF0:
/* 804FFCF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FFCF4  7C 08 02 A6 */	mflr r0
/* 804FFCF8  3C A0 80 64 */	lis r5, lit_1375@ha /* 0x80646A30@ha */
/* 804FFCFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FFD00  C0 25 6A 30 */	lfs f1, lit_1375@l(r5)  /* 0x80646A30@l */
/* 804FFD04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804FFD08  7C 9F 23 78 */	mr r31, r4
/* 804FFD0C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804FFD10  7C 7E 1B 78 */	mr r30, r3
/* 804FFD14  38 7E 01 74 */	addi r3, r30, 0x174
/* 804FFD18  4B FD 78 E9 */	bl Player_actor_Check_AnimationFrame
/* 804FFD1C  2C 03 00 00 */	cmpwi r3, 0
/* 804FFD20  41 82 00 64 */	beq lbl_804FFD84
/* 804FFD24  7F C3 F3 78 */	mr r3, r30
/* 804FFD28  4B FD FB E9 */	bl Player_actor_sound_araiiki
/* 804FFD2C  80 9E 10 38 */	lwz r4, 0x1038(r30)
/* 804FFD30  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804FFD34  80 1E 10 3C */	lwz r0, 0x103c(r30)
/* 804FFD38  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804FFD3C  3C 63 00 02 */	addis r3, r3, 2
/* 804FFD40  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804FFD44  90 81 00 08 */	stw r4, 8(r1)
/* 804FFD48  7F E7 FB 78 */	mr r7, r31
/* 804FFD4C  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 804FFD50  38 81 00 08 */	addi r4, r1, 8
/* 804FFD54  90 01 00 0C */	stw r0, 0xc(r1)
/* 804FFD58  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804FFD5C  38 60 00 01 */	li r3, 1
/* 804FFD60  38 A0 00 02 */	li r5, 2
/* 804FFD64  80 1E 10 40 */	lwz r0, 0x1040(r30)
/* 804FFD68  39 20 00 00 */	li r9, 0
/* 804FFD6C  39 40 00 00 */	li r10, 0
/* 804FFD70  90 01 00 10 */	stw r0, 0x10(r1)
/* 804FFD74  81 86 00 00 */	lwz r12, 0(r6)
/* 804FFD78  A8 DE 00 DE */	lha r6, 0xde(r30)
/* 804FFD7C  7D 89 03 A6 */	mtctr r12
/* 804FFD80  4E 80 04 21 */	bctrl 
lbl_804FFD84:
/* 804FFD84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FFD88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804FFD8C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804FFD90  7C 08 03 A6 */	mtlr r0
/* 804FFD94  38 21 00 20 */	addi r1, r1, 0x20
/* 804FFD98  4E 80 00 20 */	blr 
