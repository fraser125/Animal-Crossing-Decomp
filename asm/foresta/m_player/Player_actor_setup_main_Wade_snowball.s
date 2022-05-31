lbl_804E91DC:
/* 804E91DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E91E0  7C 08 02 A6 */	mflr r0
/* 804E91E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E91E8  39 61 00 30 */	addi r11, r1, 0x30
/* 804E91EC  4B BB 1C E9 */	bl func_8009AED4
/* 804E91F0  7C 7D 1B 78 */	mr r29, r3
/* 804E91F4  7C 9E 23 78 */	mr r30, r4
/* 804E91F8  4B FF 6B 11 */	bl Player_actor_setup_main_Wade_snowball_other_func1
/* 804E91FC  80 BD 0D 60 */	lwz r5, 0xd60(r29)
/* 804E9200  3C 60 80 64 */	lis r3, lit_1075@ha /* 0x80646A14@ha */
/* 804E9204  3B FD 00 28 */	addi r31, r29, 0x28
/* 804E9208  C0 23 6A 14 */	lfs f1, lit_1075@l(r3)  /* 0x80646A14@l */
/* 804E920C  90 BD 0D 18 */	stw r5, 0xd18(r29)
/* 804E9210  38 9D 0D 28 */	addi r4, r29, 0xd28
/* 804E9214  7F E3 FB 78 */	mr r3, r31
/* 804E9218  80 DD 00 28 */	lwz r6, 0x28(r29)
/* 804E921C  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 804E9220  90 DD 0D 1C */	stw r6, 0xd1c(r29)
/* 804E9224  90 1D 0D 20 */	stw r0, 0xd20(r29)
/* 804E9228  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 804E922C  90 1D 0D 24 */	stw r0, 0xd24(r29)
/* 804E9230  80 DD 00 28 */	lwz r6, 0x28(r29)
/* 804E9234  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 804E9238  90 DD 0D 1C */	stw r6, 0xd1c(r29)
/* 804E923C  90 1D 0D 20 */	stw r0, 0xd20(r29)
/* 804E9240  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 804E9244  90 1D 0D 24 */	stw r0, 0xd24(r29)
/* 804E9248  4B FF 42 9D */	bl Player_actor_Culc_wade_end_pos
/* 804E924C  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804E9250  7F A3 EB 78 */	mr r3, r29
/* 804E9254  38 A4 65 68 */	addi r5, r4, lit_604@l /* 0x80646568@l */
/* 804E9258  7F C4 F3 78 */	mr r4, r30
/* 804E925C  C0 05 00 00 */	lfs f0, 0(r5)
/* 804E9260  D0 1D 0D 34 */	stfs f0, 0xd34(r29)
/* 804E9264  80 BD 0D 64 */	lwz r5, 0xd64(r29)
/* 804E9268  80 1D 0D 68 */	lwz r0, 0xd68(r29)
/* 804E926C  90 BD 0D 38 */	stw r5, 0xd38(r29)
/* 804E9270  90 1D 0D 3C */	stw r0, 0xd3c(r29)
/* 804E9274  80 1D 0D 6C */	lwz r0, 0xd6c(r29)
/* 804E9278  90 1D 0D 40 */	stw r0, 0xd40(r29)
/* 804E927C  80 1D 0D 70 */	lwz r0, 0xd70(r29)
/* 804E9280  90 1D 0D 44 */	stw r0, 0xd44(r29)
/* 804E9284  4B FE C6 75 */	bl Player_actor_setup_main_Base
/* 804E9288  80 DD 0D 28 */	lwz r6, 0xd28(r29)
/* 804E928C  3C 60 80 64 */	lis r3, lit_1076@ha /* 0x80646A18@ha */
/* 804E9290  80 1D 0D 2C */	lwz r0, 0xd2c(r29)
/* 804E9294  38 81 00 08 */	addi r4, r1, 8
/* 804E9298  C0 23 6A 18 */	lfs f1, lit_1076@l(r3)  /* 0x80646A18@l */
/* 804E929C  7F C3 F3 78 */	mr r3, r30
/* 804E92A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E92A4  38 A0 00 09 */	li r5, 9
/* 804E92A8  90 C1 00 08 */	stw r6, 8(r1)
/* 804E92AC  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 804E92B0  80 1D 0D 30 */	lwz r0, 0xd30(r29)
/* 804E92B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E92B8  C0 5D 00 4C */	lfs f2, 0x4c(r29)
/* 804E92BC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804E92C0  EC 02 00 28 */	fsubs f0, f2, f0
/* 804E92C4  EC 03 00 2A */	fadds f0, f3, f0
/* 804E92C8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804E92CC  4B E9 61 E9 */	bl Camera2_request_main_wade
/* 804E92D0  7F A3 EB 78 */	mr r3, r29
/* 804E92D4  7F C4 F3 78 */	mr r4, r30
/* 804E92D8  4B FF 6A AD */	bl Player_actor_setup_main_Wade_snowball_other_func2
/* 804E92DC  39 61 00 30 */	addi r11, r1, 0x30
/* 804E92E0  4B BB 1C 41 */	bl func_8009AF20
/* 804E92E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E92E8  7C 08 03 A6 */	mtlr r0
/* 804E92EC  38 21 00 30 */	addi r1, r1, 0x30
/* 804E92F0  4E 80 00 20 */	blr 
