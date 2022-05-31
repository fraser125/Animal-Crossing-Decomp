lbl_804F7D58:
/* 804F7D58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F7D5C  7C 08 02 A6 */	mflr r0
/* 804F7D60  3C A0 80 64 */	lis r5, lit_603@ha /* 0x80646564@ha */
/* 804F7D64  3C C0 80 64 */	lis r6, lit_2671@ha /* 0x80646C4C@ha */
/* 804F7D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F7D6C  39 00 00 00 */	li r8, 0
/* 804F7D70  C0 25 65 64 */	lfs f1, lit_603@l(r5)  /* 0x80646564@l */
/* 804F7D74  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804F7D78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F7D7C  7C 9F 23 78 */	mr r31, r4
/* 804F7D80  FC 40 08 90 */	fmr f2, f1
/* 804F7D84  93 C1 00 08 */	stw r30, 8(r1)
/* 804F7D88  7C 7E 1B 78 */	mr r30, r3
/* 804F7D8C  80 E3 0D 60 */	lwz r7, 0xd60(r3)
/* 804F7D90  80 03 0D 64 */	lwz r0, 0xd64(r3)
/* 804F7D94  90 E3 0D 18 */	stw r7, 0xd18(r3)
/* 804F7D98  38 E6 6C 4C */	addi r7, r6, lit_2671@l /* 0x80646C4C@l */
/* 804F7D9C  38 C5 83 54 */	addi r6, r5, lit_7381@l /* 0x80648354@l */
/* 804F7DA0  C0 67 00 00 */	lfs f3, 0(r7)
/* 804F7DA4  90 03 0D 1C */	stw r0, 0xd1c(r3)
/* 804F7DA8  38 A0 00 4F */	li r5, 0x4f
/* 804F7DAC  C0 86 00 00 */	lfs f4, 0(r6)
/* 804F7DB0  38 C0 00 4F */	li r6, 0x4f
/* 804F7DB4  80 03 0D 68 */	lwz r0, 0xd68(r3)
/* 804F7DB8  38 E0 00 00 */	li r7, 0
/* 804F7DBC  90 03 0D 20 */	stw r0, 0xd20(r3)
/* 804F7DC0  4B FD EA 51 */	bl Player_actor_InitAnimation_Base2
/* 804F7DC4  7F C3 F3 78 */	mr r3, r30
/* 804F7DC8  7F E4 FB 78 */	mr r4, r31
/* 804F7DCC  4B FD DB 2D */	bl Player_actor_setup_main_Base
/* 804F7DD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F7DD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F7DD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F7DDC  7C 08 03 A6 */	mtlr r0
/* 804F7DE0  38 21 00 10 */	addi r1, r1, 0x10
/* 804F7DE4  4E 80 00 20 */	blr 
