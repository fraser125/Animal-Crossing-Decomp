lbl_805045B0:
/* 805045B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805045B4  7C 08 02 A6 */	mflr r0
/* 805045B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805045BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805045C0  7C 9F 23 78 */	mr r31, r4
/* 805045C4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805045C8  7C 7E 1B 78 */	mr r30, r3
/* 805045CC  80 03 0D B4 */	lwz r0, 0xdb4(r3)
/* 805045D0  2C 00 00 49 */	cmpwi r0, 0x49
/* 805045D4  40 82 00 7C */	bne lbl_80504650
/* 805045D8  3C 80 80 64 */	lis r4, lit_4068@ha /* 0x80647A90@ha */
/* 805045DC  38 7E 01 74 */	addi r3, r30, 0x174
/* 805045E0  C0 24 7A 90 */	lfs f1, lit_4068@l(r4)  /* 0x80647A90@l */
/* 805045E4  4B FD 30 1D */	bl Player_actor_Check_AnimationFrame
/* 805045E8  2C 03 00 00 */	cmpwi r3, 0
/* 805045EC  41 82 00 64 */	beq lbl_80504650
/* 805045F0  7F C3 F3 78 */	mr r3, r30
/* 805045F4  4B FD B3 AD */	bl Player_actor_sound_wear
/* 805045F8  80 9E 10 38 */	lwz r4, 0x1038(r30)
/* 805045FC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80504600  80 1E 10 3C */	lwz r0, 0x103c(r30)
/* 80504604  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80504608  3C 63 00 02 */	addis r3, r3, 2
/* 8050460C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80504610  90 81 00 08 */	stw r4, 8(r1)
/* 80504614  7F E7 FB 78 */	mr r7, r31
/* 80504618  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 8050461C  38 81 00 08 */	addi r4, r1, 8
/* 80504620  90 01 00 0C */	stw r0, 0xc(r1)
/* 80504624  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80504628  38 60 00 55 */	li r3, 0x55
/* 8050462C  38 A0 00 02 */	li r5, 2
/* 80504630  80 1E 10 40 */	lwz r0, 0x1040(r30)
/* 80504634  39 20 00 00 */	li r9, 0
/* 80504638  39 40 00 00 */	li r10, 0
/* 8050463C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80504640  81 86 00 00 */	lwz r12, 0(r6)
/* 80504644  A8 DE 00 DE */	lha r6, 0xde(r30)
/* 80504648  7D 89 03 A6 */	mtctr r12
/* 8050464C  4E 80 04 21 */	bctrl 
lbl_80504650:
/* 80504650  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80504654  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80504658  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8050465C  7C 08 03 A6 */	mtlr r0
/* 80504660  38 21 00 20 */	addi r1, r1, 0x20
/* 80504664  4E 80 00 20 */	blr 