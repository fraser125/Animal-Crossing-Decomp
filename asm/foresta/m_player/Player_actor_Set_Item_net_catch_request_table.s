lbl_804D798C:
/* 804D798C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804D7990  7C 08 02 A6 */	mflr r0
/* 804D7994  90 01 00 34 */	stw r0, 0x34(r1)
/* 804D7998  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804D799C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804D79A0  39 61 00 20 */	addi r11, r1, 0x20
/* 804D79A4  4B BC 35 2D */	bl func_8009AED0
/* 804D79A8  FF E0 08 90 */	fmr f31, f1
/* 804D79AC  7C 7F 1B 78 */	mr r31, r3
/* 804D79B0  7C BC 2B 78 */	mr r28, r5
/* 804D79B4  7C DD 33 78 */	mr r29, r6
/* 804D79B8  7C FE 3B 78 */	mr r30, r7
/* 804D79BC  7C 83 23 78 */	mr r3, r4
/* 804D79C0  4B F0 1C B1 */	bl mPlib_get_player_actor_main_index
/* 804D79C4  2C 03 00 2C */	cmpwi r3, 0x2c
/* 804D79C8  40 82 00 90 */	bne lbl_804D7A58
/* 804D79CC  80 9F 0F 20 */	lwz r4, 0xf20(r31)
/* 804D79D0  2C 04 00 00 */	cmpwi r4, 0
/* 804D79D4  41 80 00 84 */	blt lbl_804D7A58
/* 804D79D8  2C 04 00 08 */	cmpwi r4, 8
/* 804D79DC  40 80 00 7C */	bge lbl_804D7A58
/* 804D79E0  7F A0 07 75 */	extsb. r0, r29
/* 804D79E4  41 80 00 74 */	blt lbl_804D7A58
/* 804D79E8  7F A0 07 74 */	extsb r0, r29
/* 804D79EC  2C 00 00 02 */	cmpwi r0, 2
/* 804D79F0  40 80 00 68 */	bge lbl_804D7A58
/* 804D79F4  28 1E 00 00 */	cmplwi r30, 0
/* 804D79F8  41 82 00 60 */	beq lbl_804D7A58
/* 804D79FC  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804D7A00  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804D7A04  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 804D7A08  4C 40 13 82 */	cror 2, 0, 2
/* 804D7A0C  40 82 00 4C */	bne lbl_804D7A58
/* 804D7A10  54 80 10 3A */	slwi r0, r4, 2
/* 804D7A14  7C BF 22 14 */	add r5, r31, r4
/* 804D7A18  7C FF 02 14 */	add r7, r31, r0
/* 804D7A1C  38 04 00 01 */	addi r0, r4, 1
/* 804D7A20  93 87 0E 78 */	stw r28, 0xe78(r7)
/* 804D7A24  1C 84 00 0C */	mulli r4, r4, 0xc
/* 804D7A28  38 60 00 01 */	li r3, 1
/* 804D7A2C  9B A5 0E 98 */	stb r29, 0xe98(r5)
/* 804D7A30  7C DF 22 14 */	add r6, r31, r4
/* 804D7A34  80 BE 00 00 */	lwz r5, 0(r30)
/* 804D7A38  80 9E 00 04 */	lwz r4, 4(r30)
/* 804D7A3C  90 A6 0E A0 */	stw r5, 0xea0(r6)
/* 804D7A40  90 86 0E A4 */	stw r4, 0xea4(r6)
/* 804D7A44  80 9E 00 08 */	lwz r4, 8(r30)
/* 804D7A48  90 86 0E A8 */	stw r4, 0xea8(r6)
/* 804D7A4C  D3 E7 0F 00 */	stfs f31, 0xf00(r7)
/* 804D7A50  90 1F 0F 20 */	stw r0, 0xf20(r31)
/* 804D7A54  48 00 00 08 */	b lbl_804D7A5C
lbl_804D7A58:
/* 804D7A58  38 60 00 00 */	li r3, 0
lbl_804D7A5C:
/* 804D7A5C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804D7A60  39 61 00 20 */	addi r11, r1, 0x20
/* 804D7A64  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804D7A68  4B BC 34 B5 */	bl func_8009AF1C
/* 804D7A6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804D7A70  7C 08 03 A6 */	mtlr r0
/* 804D7A74  38 21 00 30 */	addi r1, r1, 0x30
/* 804D7A78  4E 80 00 20 */	blr 
