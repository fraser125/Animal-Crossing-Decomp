lbl_804F403C:
/* 804F403C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804F4040  7C 08 02 A6 */	mflr r0
/* 804F4044  90 01 00 34 */	stw r0, 0x34(r1)
/* 804F4048  39 61 00 30 */	addi r11, r1, 0x30
/* 804F404C  4B BA 6E 89 */	bl func_8009AED4
/* 804F4050  7C 7E 1B 78 */	mr r30, r3
/* 804F4054  38 60 00 00 */	li r3, 0
/* 804F4058  90 7E 0D 18 */	stw r3, 0xd18(r30)
/* 804F405C  7C 9F 23 78 */	mr r31, r4
/* 804F4060  90 7E 0D 20 */	stw r3, 0xd20(r30)
/* 804F4064  80 1E 0D 60 */	lwz r0, 0xd60(r30)
/* 804F4068  90 1E 0D 24 */	stw r0, 0xd24(r30)
/* 804F406C  90 7E 0D 28 */	stw r3, 0xd28(r30)
/* 804F4070  80 9E 0E 70 */	lwz r4, 0xe70(r30)
/* 804F4074  28 04 00 00 */	cmplwi r4, 0
/* 804F4078  41 82 01 30 */	beq lbl_804F41A8
/* 804F407C  88 1E 0E 74 */	lbz r0, 0xe74(r30)
/* 804F4080  80 7E 0F 2C */	lwz r3, 0xf2c(r30)
/* 804F4084  7C 00 07 75 */	extsb. r0, r0
/* 804F4088  7C 7D 1B 78 */	mr r29, r3
/* 804F408C  40 82 00 10 */	bne lbl_804F409C
/* 804F4090  A0 04 02 1C */	lhz r0, 0x21c(r4)
/* 804F4094  B0 01 00 08 */	sth r0, 8(r1)
/* 804F4098  48 00 00 20 */	b lbl_804F40B8
lbl_804F409C:
/* 804F409C  2C 03 00 08 */	cmpwi r3, 8
/* 804F40A0  40 82 00 10 */	bne lbl_804F40B0
/* 804F40A4  38 00 2D 08 */	li r0, 0x2d08
/* 804F40A8  B0 01 00 08 */	sth r0, 8(r1)
/* 804F40AC  48 00 00 0C */	b lbl_804F40B8
lbl_804F40B0:
/* 804F40B0  38 00 2D 26 */	li r0, 0x2d26
/* 804F40B4  B0 01 00 08 */	sth r0, 8(r1)
lbl_804F40B8:
/* 804F40B8  2C 1D 00 00 */	cmpwi r29, 0
/* 804F40BC  40 80 00 10 */	bge lbl_804F40CC
/* 804F40C0  38 00 00 00 */	li r0, 0
/* 804F40C4  90 1E 0D 1C */	stw r0, 0xd1c(r30)
/* 804F40C8  48 00 00 E4 */	b lbl_804F41AC
lbl_804F40CC:
/* 804F40CC  38 61 00 08 */	addi r3, r1, 8
/* 804F40D0  4B EE 7B C1 */	bl mPlib_Get_space_putin_item_forHITODAMA
/* 804F40D4  2C 03 00 00 */	cmpwi r3, 0
/* 804F40D8  41 80 00 1C */	blt lbl_804F40F4
/* 804F40DC  A0 81 00 08 */	lhz r4, 8(r1)
/* 804F40E0  38 A0 00 00 */	li r5, 0
/* 804F40E4  4B FE 32 C1 */	bl Player_actor_putin_item
/* 804F40E8  38 00 00 01 */	li r0, 1
/* 804F40EC  90 1E 0D 1C */	stw r0, 0xd1c(r30)
/* 804F40F0  48 00 00 0C */	b lbl_804F40FC
lbl_804F40F4:
/* 804F40F4  38 00 00 00 */	li r0, 0
/* 804F40F8  90 1E 0D 1C */	stw r0, 0xd1c(r30)
lbl_804F40FC:
/* 804F40FC  2C 1D 00 28 */	cmpwi r29, 0x28
/* 804F4100  41 82 00 0C */	beq lbl_804F410C
/* 804F4104  7F A3 EB 78 */	mr r3, r29
/* 804F4108  4B EF B0 E1 */	bl mSM_COLLECT_INSECT_SET
lbl_804F410C:
/* 804F410C  3C 60 80 6A */	lis r3, use_mark_insect_type@ha /* 0x8069E7A0@ha */
/* 804F4110  38 00 00 02 */	li r0, 2
/* 804F4114  38 83 E7 A0 */	addi r4, r3, use_mark_insect_type@l /* 0x8069E7A0@l */
/* 804F4118  38 A0 00 00 */	li r5, 0
/* 804F411C  38 60 00 00 */	li r3, 0
/* 804F4120  7C 09 03 A6 */	mtctr r0
lbl_804F4124:
/* 804F4124  7C 04 18 2E */	lwzx r0, r4, r3
/* 804F4128  7C 1D 00 00 */	cmpw r29, r0
/* 804F412C  40 82 00 08 */	bne lbl_804F4134
/* 804F4130  38 A0 00 01 */	li r5, 1
lbl_804F4134:
/* 804F4134  38 63 00 04 */	addi r3, r3, 4
/* 804F4138  42 00 FF EC */	bdnz lbl_804F4124
/* 804F413C  2C 05 00 00 */	cmpwi r5, 0
/* 804F4140  41 82 00 6C */	beq lbl_804F41AC
/* 804F4144  80 9E 10 5C */	lwz r4, 0x105c(r30)
/* 804F4148  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804F414C  80 1E 10 60 */	lwz r0, 0x1060(r30)
/* 804F4150  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804F4154  3C 63 00 02 */	addis r3, r3, 2
/* 804F4158  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804F415C  90 81 00 0C */	stw r4, 0xc(r1)
/* 804F4160  7F E7 FB 78 */	mr r7, r31
/* 804F4164  81 63 60 9C */	lwz r11, 0x609c(r3)
/* 804F4168  38 81 00 0C */	addi r4, r1, 0xc
/* 804F416C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F4170  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804F4174  38 60 00 70 */	li r3, 0x70
/* 804F4178  38 A0 00 02 */	li r5, 2
/* 804F417C  80 1E 10 64 */	lwz r0, 0x1064(r30)
/* 804F4180  38 C0 00 00 */	li r6, 0
/* 804F4184  39 20 00 00 */	li r9, 0
/* 804F4188  39 40 00 00 */	li r10, 0
/* 804F418C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F4190  81 8B 00 00 */	lwz r12, 0(r11)
/* 804F4194  7D 89 03 A6 */	mtctr r12
/* 804F4198  4E 80 04 21 */	bctrl 
/* 804F419C  38 00 00 01 */	li r0, 1
/* 804F41A0  90 1E 0D 28 */	stw r0, 0xd28(r30)
/* 804F41A4  48 00 00 08 */	b lbl_804F41AC
lbl_804F41A8:
/* 804F41A8  90 7E 0D 1C */	stw r3, 0xd1c(r30)
lbl_804F41AC:
/* 804F41AC  38 00 00 00 */	li r0, 0
/* 804F41B0  7F C3 F3 78 */	mr r3, r30
/* 804F41B4  B0 1E 00 DE */	sth r0, 0xde(r30)
/* 804F41B8  7F E4 FB 78 */	mr r4, r31
/* 804F41BC  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 804F41C0  4B FE 17 39 */	bl Player_actor_setup_main_Base
/* 804F41C4  39 61 00 30 */	addi r11, r1, 0x30
/* 804F41C8  4B BA 6D 59 */	bl func_8009AF20
/* 804F41CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804F41D0  7C 08 03 A6 */	mtlr r0
/* 804F41D4  38 21 00 30 */	addi r1, r1, 0x30
/* 804F41D8  4E 80 00 20 */	blr 
