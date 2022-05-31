lbl_804F9070:
/* 804F9070  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804F9074  7C 08 02 A6 */	mflr r0
/* 804F9078  3C 80 80 65 */	lis r4, lit_6693@ha /* 0x806480E0@ha */
/* 804F907C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804F9080  C0 24 80 E0 */	lfs f1, lit_6693@l(r4)  /* 0x806480E0@l */
/* 804F9084  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804F9088  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804F908C  7C 7E 1B 78 */	mr r30, r3
/* 804F9090  38 7E 01 74 */	addi r3, r30, 0x174
/* 804F9094  4B FD E5 6D */	bl Player_actor_Check_AnimationFrame
/* 804F9098  2C 03 00 00 */	cmpwi r3, 0
/* 804F909C  41 82 00 6C */	beq lbl_804F9108
/* 804F90A0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804F90A4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804F90A8  3F E3 00 02 */	addis r31, r3, 2
/* 804F90AC  80 7F 60 88 */	lwz r3, 0x6088(r31)
/* 804F90B0  28 03 00 00 */	cmplwi r3, 0
/* 804F90B4  41 82 00 54 */	beq lbl_804F9108
/* 804F90B8  80 03 00 14 */	lwz r0, 0x14(r3)
/* 804F90BC  28 00 00 00 */	cmplwi r0, 0
/* 804F90C0  41 82 00 48 */	beq lbl_804F9108
/* 804F90C4  80 DE 0D 18 */	lwz r6, 0xd18(r30)
/* 804F90C8  38 61 00 0C */	addi r3, r1, 0xc
/* 804F90CC  80 1E 0D 1C */	lwz r0, 0xd1c(r30)
/* 804F90D0  38 81 00 08 */	addi r4, r1, 8
/* 804F90D4  38 A1 00 10 */	addi r5, r1, 0x10
/* 804F90D8  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804F90DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F90E0  80 1E 0D 20 */	lwz r0, 0xd20(r30)
/* 804F90E4  90 01 00 18 */	stw r0, 0x18(r1)
/* 804F90E8  4B EA C2 81 */	bl mFI_Wpos2UtNum
/* 804F90EC  80 BF 60 88 */	lwz r5, 0x6088(r31)
/* 804F90F0  38 60 00 02 */	li r3, 2
/* 804F90F4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804F90F8  81 85 00 14 */	lwz r12, 0x14(r5)
/* 804F90FC  80 A1 00 08 */	lwz r5, 8(r1)
/* 804F9100  7D 89 03 A6 */	mtctr r12
/* 804F9104  4E 80 04 21 */	bctrl 
lbl_804F9108:
/* 804F9108  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804F910C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804F9110  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804F9114  7C 08 03 A6 */	mtlr r0
/* 804F9118  38 21 00 30 */	addi r1, r1, 0x30
/* 804F911C  4E 80 00 20 */	blr 
