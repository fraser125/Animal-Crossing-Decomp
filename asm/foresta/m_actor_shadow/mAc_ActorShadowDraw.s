lbl_80376DC8:
/* 80376DC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80376DCC  7C 08 02 A6 */	mflr r0
/* 80376DD0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80376DD4  39 61 00 28 */	addi r11, r1, 0x28
/* 80376DD8  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 80376DDC  4B D2 40 F5 */	bl func_8009AED0
/* 80376DE0  7C 7C 1B 78 */	mr r28, r3
/* 80376DE4  FF E0 08 90 */	fmr f31, f1
/* 80376DE8  A8 03 00 00 */	lha r0, 0(r3)
/* 80376DEC  7C 9D 23 78 */	mr r29, r4
/* 80376DF0  7C BE 2B 78 */	mr r30, r5
/* 80376DF4  7C DF 33 78 */	mr r31, r6
/* 80376DF8  2C 00 00 4A */	cmpwi r0, 0x4a
/* 80376DFC  40 82 00 10 */	bne lbl_80376E0C
/* 80376E00  48 00 00 89 */	bl mActorShadow_UnSetForceShadowPos
/* 80376E04  38 1C 00 28 */	addi r0, r28, 0x28
/* 80376E08  90 1C 01 00 */	stw r0, 0x100(r28)
lbl_80376E0C:
/* 80376E0C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80376E10  3C 60 80 65 */	lis r3, shadwo_draw_proc@ha /* 0x8064F428@ha */
/* 80376E14  80 DF 00 04 */	lwz r6, 4(r31)
/* 80376E18  38 E3 F4 28 */	addi r7, r3, shadwo_draw_proc@l /* 0x8064F428@l */
/* 80376E1C  80 1F 00 08 */	lwz r0, 8(r31)
/* 80376E20  FC 20 F8 90 */	fmr f1, f31
/* 80376E24  90 81 00 08 */	stw r4, 8(r1)
/* 80376E28  7F 83 E3 78 */	mr r3, r28
/* 80376E2C  7F A4 EB 78 */	mr r4, r29
/* 80376E30  7F C5 F3 78 */	mr r5, r30
/* 80376E34  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80376E38  38 C1 00 08 */	addi r6, r1, 8
/* 80376E3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80376E40  88 1C 01 08 */	lbz r0, 0x108(r28)
/* 80376E44  54 00 17 7A */	rlwinm r0, r0, 2, 0x1d, 0x1d
/* 80376E48  7D 87 00 2E */	lwzx r12, r7, r0
/* 80376E4C  7D 89 03 A6 */	mtctr r12
/* 80376E50  4E 80 04 21 */	bctrl 
/* 80376E54  38 1C 00 28 */	addi r0, r28, 0x28
/* 80376E58  39 61 00 28 */	addi r11, r1, 0x28
/* 80376E5C  90 1C 01 00 */	stw r0, 0x100(r28)
/* 80376E60  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 80376E64  4B D2 40 B9 */	bl func_8009AF1C
/* 80376E68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80376E6C  7C 08 03 A6 */	mtlr r0
/* 80376E70  38 21 00 30 */	addi r1, r1, 0x30
/* 80376E74  4E 80 00 20 */	blr 
