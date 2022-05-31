lbl_804F9F34:
/* 804F9F34  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804F9F38  7C 08 02 A6 */	mflr r0
/* 804F9F3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804F9F40  39 61 00 30 */	addi r11, r1, 0x30
/* 804F9F44  4B BA 0F 8D */	bl func_8009AED0
/* 804F9F48  7C 7D 1B 78 */	mr r29, r3
/* 804F9F4C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F9F50  A0 BD 0D 6C */	lhz r5, 0xd6c(r29)
/* 804F9F54  7C 9E 23 78 */	mr r30, r4
/* 804F9F58  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804F9F5C  38 00 00 00 */	li r0, 0
/* 804F9F60  B0 A1 00 08 */	sth r5, 8(r1)
/* 804F9F64  3B FD 0D 60 */	addi r31, r29, 0xd60
/* 804F9F68  38 61 00 08 */	addi r3, r1, 8
/* 804F9F6C  80 BD 0D 60 */	lwz r5, 0xd60(r29)
/* 804F9F70  80 9D 0D 64 */	lwz r4, 0xd64(r29)
/* 804F9F74  90 BD 0D 18 */	stw r5, 0xd18(r29)
/* 804F9F78  90 9D 0D 1C */	stw r4, 0xd1c(r29)
/* 804F9F7C  80 9D 0D 68 */	lwz r4, 0xd68(r29)
/* 804F9F80  90 9D 0D 20 */	stw r4, 0xd20(r29)
/* 804F9F84  D0 1D 0D 28 */	stfs f0, 0xd28(r29)
/* 804F9F88  D0 1D 0D 30 */	stfs f0, 0xd30(r29)
/* 804F9F8C  90 1D 0D 34 */	stw r0, 0xd34(r29)
/* 804F9F90  90 1D 0D 38 */	stw r0, 0xd38(r29)
/* 804F9F94  4B EE 1B B9 */	bl mPlib_Get_space_putin_item_forTICKET
/* 804F9F98  80 9F 00 00 */	lwz r4, 0(r31)
/* 804F9F9C  7C 7C 1B 78 */	mr r28, r3
/* 804F9FA0  80 1F 00 04 */	lwz r0, 4(r31)
/* 804F9FA4  38 61 00 0C */	addi r3, r1, 0xc
/* 804F9FA8  90 81 00 0C */	stw r4, 0xc(r1)
/* 804F9FAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F9FB0  80 1F 00 08 */	lwz r0, 8(r31)
/* 804F9FB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F9FB8  4B EA D4 79 */	bl mFI_GetUnitFG
/* 804F9FBC  A0 01 00 08 */	lhz r0, 8(r1)
/* 804F9FC0  28 03 00 00 */	cmplwi r3, 0
/* 804F9FC4  B0 1D 0D 24 */	sth r0, 0xd24(r29)
/* 804F9FC8  A0 A1 00 08 */	lhz r5, 8(r1)
/* 804F9FCC  41 82 00 14 */	beq lbl_804F9FE0
/* 804F9FD0  A0 03 00 00 */	lhz r0, 0(r3)
/* 804F9FD4  28 00 00 5C */	cmplwi r0, 0x5c
/* 804F9FD8  40 82 00 08 */	bne lbl_804F9FE0
/* 804F9FDC  38 A0 00 5C */	li r5, 0x5c
lbl_804F9FE0:
/* 804F9FE0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804F9FE4  7C A3 2B 78 */	mr r3, r5
/* 804F9FE8  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 804F9FEC  7F E4 FB 78 */	mr r4, r31
/* 804F9FF0  3C C5 00 02 */	addis r6, r5, 2
/* 804F9FF4  38 A0 00 0C */	li r5, 0xc
/* 804F9FF8  80 E6 60 80 */	lwz r7, 0x6080(r6)
/* 804F9FFC  38 C0 00 28 */	li r6, 0x28
/* 804FA000  81 87 00 10 */	lwz r12, 0x10(r7)
/* 804FA004  7D 89 03 A6 */	mtctr r12
/* 804FA008  4E 80 04 21 */	bctrl 
/* 804FA00C  2C 1C 00 00 */	cmpwi r28, 0
/* 804FA010  41 80 00 20 */	blt lbl_804FA030
/* 804FA014  A0 81 00 08 */	lhz r4, 8(r1)
/* 804FA018  7F 83 E3 78 */	mr r3, r28
/* 804FA01C  38 A0 00 00 */	li r5, 0
/* 804FA020  4B FD D3 85 */	bl Player_actor_putin_item
/* 804FA024  38 00 00 01 */	li r0, 1
/* 804FA028  90 1D 0D 2C */	stw r0, 0xd2c(r29)
/* 804FA02C  48 00 00 0C */	b lbl_804FA038
lbl_804FA030:
/* 804FA030  38 00 00 00 */	li r0, 0
/* 804FA034  90 1D 0D 2C */	stw r0, 0xd2c(r29)
lbl_804FA038:
/* 804FA038  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FA03C  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804FA040  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804FA044  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804FA048  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FA04C  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804FA050  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804FA054  7F A3 EB 78 */	mr r3, r29
/* 804FA058  FC 40 08 90 */	fmr f2, f1
/* 804FA05C  7F C4 F3 78 */	mr r4, r30
/* 804FA060  38 A0 00 56 */	li r5, 0x56
/* 804FA064  38 C0 00 56 */	li r6, 0x56
/* 804FA068  38 E0 00 00 */	li r7, 0
/* 804FA06C  39 00 00 00 */	li r8, 0
/* 804FA070  4B FD C7 A1 */	bl Player_actor_InitAnimation_Base2
/* 804FA074  7F A3 EB 78 */	mr r3, r29
/* 804FA078  7F C4 F3 78 */	mr r4, r30
/* 804FA07C  4B FD B8 7D */	bl Player_actor_setup_main_Base
/* 804FA080  38 60 00 01 */	li r3, 1
/* 804FA084  4B EB 9F 95 */	bl mISL_SetNowPlayerAction
/* 804FA088  39 61 00 30 */	addi r11, r1, 0x30
/* 804FA08C  4B BA 0E 91 */	bl func_8009AF1C
/* 804FA090  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FA094  7C 08 03 A6 */	mtlr r0
/* 804FA098  38 21 00 30 */	addi r1, r1, 0x30
/* 804FA09C  4E 80 00 20 */	blr 
