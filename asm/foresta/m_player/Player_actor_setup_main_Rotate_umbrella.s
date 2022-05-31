lbl_80504C30:
/* 80504C30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80504C34  7C 08 02 A6 */	mflr r0
/* 80504C38  3C C0 80 64 */	lis r6, lit_603@ha /* 0x80646564@ha */
/* 80504C3C  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 80504C40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80504C44  38 E0 00 00 */	li r7, 0
/* 80504C48  C0 26 65 64 */	lfs f1, lit_603@l(r6)  /* 0x80646564@l */
/* 80504C4C  38 C0 00 7E */	li r6, 0x7e
/* 80504C50  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80504C54  7C 9F 23 78 */	mr r31, r4
/* 80504C58  FC 40 08 90 */	fmr f2, f1
/* 80504C5C  C0 85 83 54 */	lfs f4, lit_7381@l(r5)  /* 0x80648354@l */
/* 80504C60  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80504C64  FC 60 08 90 */	fmr f3, f1
/* 80504C68  7C 7E 1B 78 */	mr r30, r3
/* 80504C6C  38 A0 00 7E */	li r5, 0x7e
/* 80504C70  39 00 00 00 */	li r8, 0
/* 80504C74  4B FD 1B 9D */	bl Player_actor_InitAnimation_Base2
/* 80504C78  7F C3 F3 78 */	mr r3, r30
/* 80504C7C  7F E4 FB 78 */	mr r4, r31
/* 80504C80  4B FD 0C 79 */	bl Player_actor_setup_main_Base
/* 80504C84  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 80504C88  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80504C8C  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80504C90  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80504C94  3C 63 00 02 */	addis r3, r3, 2
/* 80504C98  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80504C9C  90 81 00 08 */	stw r4, 8(r1)
/* 80504CA0  7F E7 FB 78 */	mr r7, r31
/* 80504CA4  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 80504CA8  38 81 00 08 */	addi r4, r1, 8
/* 80504CAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80504CB0  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80504CB4  38 60 00 6A */	li r3, 0x6a
/* 80504CB8  38 A0 00 02 */	li r5, 2
/* 80504CBC  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 80504CC0  39 20 00 00 */	li r9, 0
/* 80504CC4  39 40 00 00 */	li r10, 0
/* 80504CC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80504CCC  81 86 00 00 */	lwz r12, 0(r6)
/* 80504CD0  A8 DE 00 DE */	lha r6, 0xde(r30)
/* 80504CD4  7D 89 03 A6 */	mtctr r12
/* 80504CD8  4E 80 04 21 */	bctrl 
/* 80504CDC  7F C3 F3 78 */	mr r3, r30
/* 80504CE0  4B FD AD 09 */	bl Player_actor_sound_umbrella_rotate
/* 80504CE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80504CE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80504CEC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80504CF0  7C 08 03 A6 */	mtlr r0
/* 80504CF4  38 21 00 20 */	addi r1, r1, 0x20
/* 80504CF8  4E 80 00 20 */	blr 
