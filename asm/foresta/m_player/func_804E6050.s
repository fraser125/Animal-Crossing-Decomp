lbl_804E6050:
/* 804E6050  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E6054  7C 08 02 A6 */	mflr r0
/* 804E6058  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E605C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804E6060  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804E6064  39 61 00 20 */	addi r11, r1, 0x20
/* 804E6068  4B BB 4E 69 */	bl func_8009AED0
/* 804E606C  FF E0 08 90 */	fmr f31, f1
/* 804E6070  7C 9D 23 78 */	mr r29, r4
/* 804E6074  7C DF 33 78 */	mr r31, r6
/* 804E6078  7C BE 2B 78 */	mr r30, r5
/* 804E607C  7C 7C 1B 78 */	mr r28, r3
/* 804E6080  38 80 00 08 */	li r4, 8
/* 804E6084  7F E5 FB 78 */	mr r5, r31
/* 804E6088  4B FF 43 D1 */	bl Player_actor_check_request_main_able
/* 804E608C  2C 03 00 00 */	cmpwi r3, 0
/* 804E6090  41 82 00 6C */	beq lbl_804E60FC
/* 804E6094  7F 83 E3 78 */	mr r3, r28
/* 804E6098  4B EF 35 A9 */	bl get_player_actor_withoutCheck
/* 804E609C  57 C0 07 BD */	rlwinm. r0, r30, 0, 0x1e, 0x1e
/* 804E60A0  41 82 00 3C */	beq lbl_804E60DC
/* 804E60A4  28 1D 00 00 */	cmplwi r29, 0
/* 804E60A8  41 82 00 20 */	beq lbl_804E60C8
/* 804E60AC  80 9D 00 00 */	lwz r4, 0(r29)
/* 804E60B0  80 1D 00 04 */	lwz r0, 4(r29)
/* 804E60B4  90 83 0D 60 */	stw r4, 0xd60(r3)
/* 804E60B8  90 03 0D 64 */	stw r0, 0xd64(r3)
/* 804E60BC  80 1D 00 08 */	lwz r0, 8(r29)
/* 804E60C0  90 03 0D 68 */	stw r0, 0xd68(r3)
/* 804E60C4  48 00 00 18 */	b lbl_804E60DC
lbl_804E60C8:
/* 804E60C8  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804E60CC  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
/* 804E60D0  D0 03 0D 60 */	stfs f0, 0xd60(r3)
/* 804E60D4  D0 03 0D 64 */	stfs f0, 0xd64(r3)
/* 804E60D8  D0 03 0D 68 */	stfs f0, 0xd68(r3)
lbl_804E60DC:
/* 804E60DC  D3 E3 0D 6C */	stfs f31, 0xd6c(r3)
/* 804E60E0  7F E5 FB 78 */	mr r5, r31
/* 804E60E4  38 80 00 08 */	li r4, 8
/* 804E60E8  93 C3 0D 70 */	stw r30, 0xd70(r3)
/* 804E60EC  7F 83 E3 78 */	mr r3, r28
/* 804E60F0  4B FE EF 25 */	bl Player_actor_request_main_index
/* 804E60F4  38 60 00 01 */	li r3, 1
/* 804E60F8  48 00 00 08 */	b lbl_804E6100
lbl_804E60FC:
/* 804E60FC  38 60 00 00 */	li r3, 0
lbl_804E6100:
/* 804E6100  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804E6104  39 61 00 20 */	addi r11, r1, 0x20
/* 804E6108  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804E610C  4B BB 4E 11 */	bl func_8009AF1C
/* 804E6110  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E6114  7C 08 03 A6 */	mtlr r0
/* 804E6118  38 21 00 30 */	addi r1, r1, 0x30
/* 804E611C  4E 80 00 20 */	blr 
