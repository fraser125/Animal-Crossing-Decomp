lbl_804B9868:
/* 804B9868  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804B986C  7C 08 02 A6 */	mflr r0
/* 804B9870  90 01 00 44 */	stw r0, 0x44(r1)
/* 804B9874  39 61 00 40 */	addi r11, r1, 0x40
/* 804B9878  4B BE 16 55 */	bl func_8009AECC
/* 804B987C  7C 7B 1B 78 */	mr r27, r3
/* 804B9880  7C 9E 23 78 */	mr r30, r4
/* 804B9884  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 804B9888  7C BF 2B 78 */	mr r31, r5
/* 804B988C  28 00 08 04 */	cmplwi r0, 0x804
/* 804B9890  7C DC 33 78 */	mr r28, r6
/* 804B9894  41 82 00 14 */	beq lbl_804B98A8
/* 804B9898  28 00 08 61 */	cmplwi r0, 0x861
/* 804B989C  41 82 00 0C */	beq lbl_804B98A8
/* 804B98A0  28 00 08 68 */	cmplwi r0, 0x868
/* 804B98A4  40 82 00 40 */	bne lbl_804B98E4
lbl_804B98A8:
/* 804B98A8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804B98AC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804B98B0  3C 63 00 02 */	addis r3, r3, 2
/* 804B98B4  80 63 60 88 */	lwz r3, 0x6088(r3)
/* 804B98B8  28 03 00 00 */	cmplwi r3, 0
/* 804B98BC  41 82 01 10 */	beq lbl_804B99CC
/* 804B98C0  81 83 00 14 */	lwz r12, 0x14(r3)
/* 804B98C4  28 0C 00 00 */	cmplwi r12, 0
/* 804B98C8  41 82 01 04 */	beq lbl_804B99CC
/* 804B98CC  7F C4 F3 78 */	mr r4, r30
/* 804B98D0  7F E5 FB 78 */	mr r5, r31
/* 804B98D4  38 60 00 04 */	li r3, 4
/* 804B98D8  7D 89 03 A6 */	mtctr r12
/* 804B98DC  4E 80 04 21 */	bctrl 
/* 804B98E0  48 00 00 EC */	b lbl_804B99CC
lbl_804B98E4:
/* 804B98E4  28 00 00 5E */	cmplwi r0, 0x5e
/* 804B98E8  41 82 00 14 */	beq lbl_804B98FC
/* 804B98EC  28 00 00 7A */	cmplwi r0, 0x7a
/* 804B98F0  41 82 00 0C */	beq lbl_804B98FC
/* 804B98F4  28 00 00 81 */	cmplwi r0, 0x81
/* 804B98F8  40 82 00 CC */	bne lbl_804B99C4
lbl_804B98FC:
/* 804B98FC  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804B9900  3C 60 80 69 */	lis r3, wait_pos@ha /* 0x806958A4@ha */
/* 804B9904  38 84 52 F0 */	addi r4, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 804B9908  39 40 FF FF */	li r10, -1
/* 804B990C  80 84 00 00 */	lwz r4, 0(r4)
/* 804B9910  39 23 58 A4 */	addi r9, r3, wait_pos@l /* 0x806958A4@l */
/* 804B9914  38 00 00 00 */	li r0, 0
/* 804B9918  38 A0 00 A4 */	li r5, 0xa4
/* 804B991C  91 41 00 08 */	stw r10, 8(r1)
/* 804B9920  38 64 1D A8 */	addi r3, r4, 0x1da8
/* 804B9924  38 C0 00 00 */	li r6, 0
/* 804B9928  38 E0 00 00 */	li r7, 0
/* 804B992C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B9930  39 00 00 00 */	li r8, 0
/* 804B9934  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B9938  91 41 00 14 */	stw r10, 0x14(r1)
/* 804B993C  91 41 00 18 */	stw r10, 0x18(r1)
/* 804B9940  C0 29 00 00 */	lfs f1, 0(r9)
/* 804B9944  C0 49 00 04 */	lfs f2, 4(r9)
/* 804B9948  C0 69 00 08 */	lfs f3, 8(r9)
/* 804B994C  89 24 00 E4 */	lbz r9, 0xe4(r4)
/* 804B9950  89 44 00 E5 */	lbz r10, 0xe5(r4)
/* 804B9954  4B EB BD F5 */	bl Actor_info_make_actor
/* 804B9958  7C 7D 1B 79 */	or. r29, r3, r3
/* 804B995C  41 82 00 54 */	beq lbl_804B99B0
/* 804B9960  7F 63 DB 78 */	mr r3, r27
/* 804B9964  7F C4 F3 78 */	mr r4, r30
/* 804B9968  7F E5 FB 78 */	mr r5, r31
/* 804B996C  7F 86 E3 78 */	mr r6, r28
/* 804B9970  7F A7 EB 78 */	mr r7, r29
/* 804B9974  4B FF FC 35 */	bl drop_fruit
/* 804B9978  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80646094@ha */
/* 804B997C  C0 1C 00 00 */	lfs f0, 0(r28)
/* 804B9980  C0 23 60 94 */	lfs f1, lit_664@l(r3)  /* 0x80646094@l */
/* 804B9984  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804B9988  40 82 00 44 */	bne lbl_804B99CC
/* 804B998C  C0 1C 00 04 */	lfs f0, 4(r28)
/* 804B9990  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804B9994  40 82 00 38 */	bne lbl_804B99CC
/* 804B9998  C0 1C 00 08 */	lfs f0, 8(r28)
/* 804B999C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804B99A0  40 82 00 2C */	bne lbl_804B99CC
/* 804B99A4  7F A3 EB 78 */	mr r3, r29
/* 804B99A8  4B EB AA 99 */	bl Actor_delete
/* 804B99AC  48 00 00 20 */	b lbl_804B99CC
lbl_804B99B0:
/* 804B99B0  3C 80 80 69 */	lis r4, wait_pos@ha /* 0x806958A4@ha */
/* 804B99B4  7F 83 E3 78 */	mr r3, r28
/* 804B99B8  38 84 58 A4 */	addi r4, r4, wait_pos@l /* 0x806958A4@l */
/* 804B99BC  4B F0 15 01 */	bl xyz_t_move
/* 804B99C0  48 00 00 0C */	b lbl_804B99CC
lbl_804B99C4:
/* 804B99C4  38 E0 00 00 */	li r7, 0
/* 804B99C8  4B FF FB E1 */	bl drop_fruit
lbl_804B99CC:
/* 804B99CC  39 61 00 40 */	addi r11, r1, 0x40
/* 804B99D0  4B BE 15 49 */	bl func_8009AF18
/* 804B99D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804B99D8  7C 08 03 A6 */	mtlr r0
/* 804B99DC  38 21 00 40 */	addi r1, r1, 0x40
/* 804B99E0  4E 80 00 20 */	blr 
