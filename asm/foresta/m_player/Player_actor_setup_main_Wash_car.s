lbl_804FF804:
/* 804FF804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FF808  7C 08 02 A6 */	mflr r0
/* 804FF80C  3C C0 80 64 */	lis r6, lit_603@ha /* 0x80646564@ha */
/* 804FF810  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804FF814  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FF818  C0 26 65 64 */	lfs f1, lit_603@l(r6)  /* 0x80646564@l */
/* 804FF81C  38 C0 00 62 */	li r6, 0x62
/* 804FF820  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FF824  7C 9F 23 78 */	mr r31, r4
/* 804FF828  C0 65 65 68 */	lfs f3, lit_604@l(r5)  /* 0x80646568@l */
/* 804FF82C  FC 40 08 90 */	fmr f2, f1
/* 804FF830  93 C1 00 08 */	stw r30, 8(r1)
/* 804FF834  7C 7E 1B 78 */	mr r30, r3
/* 804FF838  FC 80 18 90 */	fmr f4, f3
/* 804FF83C  38 A0 00 62 */	li r5, 0x62
/* 804FF840  80 03 0D 60 */	lwz r0, 0xd60(r3)
/* 804FF844  80 E3 0D 64 */	lwz r7, 0xd64(r3)
/* 804FF848  90 03 00 28 */	stw r0, 0x28(r3)
/* 804FF84C  38 00 00 00 */	li r0, 0
/* 804FF850  90 E3 00 2C */	stw r7, 0x2c(r3)
/* 804FF854  38 E0 00 00 */	li r7, 0
/* 804FF858  81 03 0D 68 */	lwz r8, 0xd68(r3)
/* 804FF85C  91 03 00 30 */	stw r8, 0x30(r3)
/* 804FF860  39 00 00 00 */	li r8, 0
/* 804FF864  81 43 0D 6C */	lwz r10, 0xd6c(r3)
/* 804FF868  81 23 0D 70 */	lwz r9, 0xd70(r3)
/* 804FF86C  91 43 0D 24 */	stw r10, 0xd24(r3)
/* 804FF870  91 23 0D 28 */	stw r9, 0xd28(r3)
/* 804FF874  81 23 0D 74 */	lwz r9, 0xd74(r3)
/* 804FF878  91 23 0D 2C */	stw r9, 0xd2c(r3)
/* 804FF87C  A9 23 0D 78 */	lha r9, 0xd78(r3)
/* 804FF880  B1 23 0D 30 */	sth r9, 0xd30(r3)
/* 804FF884  81 23 0D 7C */	lwz r9, 0xd7c(r3)
/* 804FF888  91 23 0D 34 */	stw r9, 0xd34(r3)
/* 804FF88C  90 03 0D 18 */	stw r0, 0xd18(r3)
/* 804FF890  90 03 0D 1C */	stw r0, 0xd1c(r3)
/* 804FF894  90 03 0D 20 */	stw r0, 0xd20(r3)
/* 804FF898  90 03 0D 38 */	stw r0, 0xd38(r3)
/* 804FF89C  90 03 0D 3C */	stw r0, 0xd3c(r3)
/* 804FF8A0  B0 03 00 DE */	sth r0, 0xde(r3)
/* 804FF8A4  B0 03 00 36 */	sth r0, 0x36(r3)
/* 804FF8A8  4B FD 6F 69 */	bl Player_actor_InitAnimation_Base2
/* 804FF8AC  7F C3 F3 78 */	mr r3, r30
/* 804FF8B0  7F E4 FB 78 */	mr r4, r31
/* 804FF8B4  4B FD 60 45 */	bl Player_actor_setup_main_Base
/* 804FF8B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FF8BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FF8C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FF8C4  7C 08 03 A6 */	mtlr r0
/* 804FF8C8  38 21 00 10 */	addi r1, r1, 0x10
/* 804FF8CC  4E 80 00 20 */	blr 
