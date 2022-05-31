lbl_805CC688:
/* 805CC688  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805CC68C  7C 08 02 A6 */	mflr r0
/* 805CC690  90 01 00 74 */	stw r0, 0x74(r1)
/* 805CC694  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805CC698  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805CC69C  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 805CC6A0  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 805CC6A4  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 805CC6A8  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 805CC6AC  39 61 00 40 */	addi r11, r1, 0x40
/* 805CC6B0  4B AC E8 11 */	bl func_8009AEC0
/* 805CC6B4  7C 78 1B 78 */	mr r24, r3
/* 805CC6B8  7C 99 23 78 */	mr r25, r4
/* 805CC6BC  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805CC6C0  3C 60 80 AA */	lis r3, inv_item_mode@ha /* 0x80AA5910@ha */
/* 805CC6C4  81 04 02 D0 */	lwz r8, 0x2d0(r4)
/* 805CC6C8  1C A5 17 48 */	mulli r5, r5, 0x1748
/* 805CC6CC  83 A6 09 C0 */	lwz r29, 0x9c0(r6)
/* 805CC6D0  3C 80 DE 00 */	lis r4, 0xde00
/* 805CC6D4  83 C6 09 88 */	lwz r30, 0x988(r6)
/* 805CC6D8  7D 09 43 78 */	mr r9, r8
/* 805CC6DC  80 E6 09 7C */	lwz r7, 0x97c(r6)
/* 805CC6E0  80 DD 00 00 */	lwz r6, 0(r29)
/* 805CC6E4  3B 85 00 64 */	addi r28, r5, 0x64
/* 805CC6E8  38 03 59 10 */	addi r0, r3, inv_item_mode@l /* 0x80AA5910@l */
/* 805CC6EC  FF A0 08 90 */	fmr f29, f1
/* 805CC6F0  90 88 00 00 */	stw r4, 0(r8)
/* 805CC6F4  FF C0 10 90 */	fmr f30, f2
/* 805CC6F8  28 1E 00 00 */	cmplwi r30, 0
/* 805CC6FC  39 08 00 08 */	addi r8, r8, 8
/* 805CC700  90 09 00 04 */	stw r0, 4(r9)
/* 805CC704  38 67 00 08 */	addi r3, r7, 8
/* 805CC708  7F 86 E2 14 */	add r28, r6, r28
/* 805CC70C  91 19 02 D0 */	stw r8, 0x2d0(r25)
/* 805CC710  3B 40 00 00 */	li r26, 0
/* 805CC714  41 82 00 60 */	beq lbl_805CC774
/* 805CC718  A8 1E 03 F8 */	lha r0, 0x3f8(r30)
/* 805CC71C  2C 00 00 00 */	cmpwi r0, 0
/* 805CC720  40 81 00 54 */	ble lbl_805CC774
/* 805CC724  80 03 00 38 */	lwz r0, 0x38(r3)
/* 805CC728  2C 00 00 09 */	cmpwi r0, 9
/* 805CC72C  41 82 00 10 */	beq lbl_805CC73C
/* 805CC730  80 1D 0B B8 */	lwz r0, 0xbb8(r29)
/* 805CC734  2C 00 00 01 */	cmpwi r0, 1
/* 805CC738  40 82 00 3C */	bne lbl_805CC774
lbl_805CC73C:
/* 805CC73C  80 1D 0B B8 */	lwz r0, 0xbb8(r29)
/* 805CC740  2C 00 00 01 */	cmpwi r0, 1
/* 805CC744  40 82 00 0C */	bne lbl_805CC750
/* 805CC748  83 5D 0B B4 */	lwz r26, 0xbb4(r29)
/* 805CC74C  48 00 00 28 */	b lbl_805CC774
lbl_805CC750:
/* 805CC750  2C 00 00 00 */	cmpwi r0, 0
/* 805CC754  40 82 00 20 */	bne lbl_805CC774
/* 805CC758  80 98 00 2C */	lwz r4, 0x2c(r24)
/* 805CC75C  80 84 09 7C */	lwz r4, 0x97c(r4)
/* 805CC760  81 84 02 EC */	lwz r12, 0x2ec(r4)
/* 805CC764  7D 89 03 A6 */	mtctr r12
/* 805CC768  4E 80 04 21 */	bctrl 
/* 805CC76C  38 00 00 01 */	li r0, 1
/* 805CC770  7C 1A 18 30 */	slw r26, r0, r3
lbl_805CC774:
/* 805CC774  3B 60 00 00 */	li r27, 0
lbl_805CC778:
/* 805CC778  38 00 00 01 */	li r0, 1
/* 805CC77C  80 7D 0B C0 */	lwz r3, 0xbc0(r29)
/* 805CC780  7C 1F D8 30 */	slw r31, r0, r27
/* 805CC784  7C 60 F8 39 */	and. r0, r3, r31
/* 805CC788  40 82 00 D8 */	bne lbl_805CC860
/* 805CC78C  7F 83 E3 78 */	mr r3, r28
/* 805CC790  4B DF 00 11 */	bl mMl_check_not_used_mail
/* 805CC794  2C 03 00 01 */	cmpwi r3, 1
/* 805CC798  41 82 00 C8 */	beq lbl_805CC860
/* 805CC79C  7F 40 F8 39 */	and. r0, r26, r31
/* 805CC7A0  41 82 00 38 */	beq lbl_805CC7D8
/* 805CC7A4  A8 7E 03 F8 */	lha r3, 0x3f8(r30)
/* 805CC7A8  3C 00 43 30 */	lis r0, 0x4330
/* 805CC7AC  3C 80 80 65 */	lis r4, lit_460@ha /* 0x8064AFB4@ha */
/* 805CC7B0  3C A0 80 65 */	lis r5, lit_555@ha /* 0x8064AFBC@ha */
/* 805CC7B4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805CC7B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 805CC7BC  C8 24 AF B4 */	lfd f1, lit_460@l(r4)  /* 0x8064AFB4@l */
/* 805CC7C0  90 61 00 14 */	stw r3, 0x14(r1)
/* 805CC7C4  C0 45 AF BC */	lfs f2, lit_555@l(r5)  /* 0x8064AFBC@l */
/* 805CC7C8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805CC7CC  EC 00 08 28 */	fsubs f0, f0, f1
/* 805CC7D0  EF E2 00 32 */	fmuls f31, f2, f0
/* 805CC7D4  48 00 00 0C */	b lbl_805CC7E0
lbl_805CC7D8:
/* 805CC7D8  3C 60 80 65 */	lis r3, lit_556@ha /* 0x8064AFC0@ha */
/* 805CC7DC  C3 E3 AF C0 */	lfs f31, lit_556@l(r3)  /* 0x8064AFC0@l */
lbl_805CC7E0:
/* 805CC7E0  80 1D 0B B4 */	lwz r0, 0xbb4(r29)
/* 805CC7E4  7C 00 F8 39 */	and. r0, r0, r31
/* 805CC7E8  41 82 00 18 */	beq lbl_805CC800
/* 805CC7EC  80 1D 0B B8 */	lwz r0, 0xbb8(r29)
/* 805CC7F0  2C 00 00 00 */	cmpwi r0, 0
/* 805CC7F4  40 82 00 0C */	bne lbl_805CC800
/* 805CC7F8  3B E0 00 01 */	li r31, 1
/* 805CC7FC  48 00 00 08 */	b lbl_805CC804
lbl_805CC800:
/* 805CC800  3B E0 00 00 */	li r31, 0
lbl_805CC804:
/* 805CC804  80 B8 00 2C */	lwz r5, 0x2c(r24)
/* 805CC808  7F 03 C3 78 */	mr r3, r24
/* 805CC80C  7F 66 DB 78 */	mr r6, r27
/* 805CC810  38 81 00 08 */	addi r4, r1, 8
/* 805CC814  80 E5 09 7C */	lwz r7, 0x97c(r5)
/* 805CC818  38 A0 00 09 */	li r5, 9
/* 805CC81C  81 87 02 D8 */	lwz r12, 0x2d8(r7)
/* 805CC820  7D 89 03 A6 */	mtctr r12
/* 805CC824  4E 80 04 21 */	bctrl 
/* 805CC828  80 B8 00 2C */	lwz r5, 0x2c(r24)
/* 805CC82C  FC 60 F8 90 */	fmr f3, f31
/* 805CC830  C0 21 00 08 */	lfs f1, 8(r1)
/* 805CC834  7F 23 CB 78 */	mr r3, r25
/* 805CC838  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805CC83C  7F 84 E3 78 */	mr r4, r28
/* 805CC840  81 85 09 60 */	lwz r12, 0x960(r5)
/* 805CC844  EC 3D 08 2A */	fadds f1, f29, f1
/* 805CC848  7F E7 FB 78 */	mr r7, r31
/* 805CC84C  EC 5E 00 2A */	fadds f2, f30, f0
/* 805CC850  38 A0 00 01 */	li r5, 1
/* 805CC854  38 C0 00 00 */	li r6, 0
/* 805CC858  7D 89 03 A6 */	mtctr r12
/* 805CC85C  4E 80 04 21 */	bctrl 
lbl_805CC860:
/* 805CC860  3B 7B 00 01 */	addi r27, r27, 1
/* 805CC864  3B 9C 01 2A */	addi r28, r28, 0x12a
/* 805CC868  2C 1B 00 14 */	cmpwi r27, 0x14
/* 805CC86C  41 80 FF 0C */	blt lbl_805CC778
/* 805CC870  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805CC874  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805CC878  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 805CC87C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 805CC880  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 805CC884  39 61 00 40 */	addi r11, r1, 0x40
/* 805CC888  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 805CC88C  4B AC E6 81 */	bl func_8009AF0C
/* 805CC890  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805CC894  7C 08 03 A6 */	mtlr r0
/* 805CC898  38 21 00 70 */	addi r1, r1, 0x70
/* 805CC89C  4E 80 00 20 */	blr 
