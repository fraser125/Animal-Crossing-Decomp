lbl_805D8184:
/* 805D8184  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805D8188  7C 08 02 A6 */	mflr r0
/* 805D818C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805D8190  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805D8194  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805D8198  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805D819C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805D81A0  39 61 00 20 */	addi r11, r1, 0x20
/* 805D81A4  4B AC 2D 29 */	bl func_8009AECC
/* 805D81A8  7C BD 2B 78 */	mr r29, r5
/* 805D81AC  3C A0 80 6D */	lis r5, data_806CC7B8@ha /* 0x806CC7B8@ha */
/* 805D81B0  80 DD 00 38 */	lwz r6, 0x38(r29)
/* 805D81B4  7C 9C 23 78 */	mr r28, r4
/* 805D81B8  83 C4 00 00 */	lwz r30, 0(r4)
/* 805D81BC  38 05 C7 B8 */	addi r0, r5, data_806CC7B8@l /* 0x806CC7B8@l */
/* 805D81C0  1C A6 00 24 */	mulli r5, r6, 0x24
/* 805D81C4  C0 7D 00 18 */	lfs f3, 0x18(r29)
/* 805D81C8  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 805D81CC  7C 7B 1B 78 */	mr r27, r3
/* 805D81D0  7F C4 F3 78 */	mr r4, r30
/* 805D81D4  7F E0 2A 14 */	add r31, r0, r5
/* 805D81D8  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 805D81DC  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 805D81E0  EF C3 10 2A */	fadds f30, f3, f2
/* 805D81E4  EF E1 00 2A */	fadds f31, f1, f0
/* 805D81E8  FC 20 F0 90 */	fmr f1, f30
/* 805D81EC  FC 40 F8 90 */	fmr f2, f31
/* 805D81F0  4B FF FA 99 */	bl mEE_set_question_field
/* 805D81F4  FC 20 F0 90 */	fmr f1, f30
/* 805D81F8  7F 63 DB 78 */	mr r3, r27
/* 805D81FC  FC 40 F8 90 */	fmr f2, f31
/* 805D8200  7F C4 F3 78 */	mr r4, r30
/* 805D8204  7F 85 E3 78 */	mr r5, r28
/* 805D8208  4B FF FD 59 */	bl mEE_set_question_character
/* 805D820C  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 805D8210  80 63 09 A4 */	lwz r3, 0x9a4(r3)
/* 805D8214  88 03 00 00 */	lbz r0, 0(r3)
/* 805D8218  28 00 00 01 */	cmplwi r0, 1
/* 805D821C  40 82 00 50 */	bne lbl_805D826C
/* 805D8220  C0 7D 00 18 */	lfs f3, 0x18(r29)
/* 805D8224  7F 63 DB 78 */	mr r3, r27
/* 805D8228  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 805D822C  7F C4 F3 78 */	mr r4, r30
/* 805D8230  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 805D8234  7F E5 FB 78 */	mr r5, r31
/* 805D8238  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 805D823C  EF E3 10 2A */	fadds f31, f3, f2
/* 805D8240  EF C1 00 2A */	fadds f30, f1, f0
/* 805D8244  FC 20 F8 90 */	fmr f1, f31
/* 805D8248  FC 40 F0 90 */	fmr f2, f30
/* 805D824C  4B FF FB 5D */	bl mEE_set_answer_field
/* 805D8250  FC 20 F8 90 */	fmr f1, f31
/* 805D8254  7F 63 DB 78 */	mr r3, r27
/* 805D8258  FC 40 F0 90 */	fmr f2, f30
/* 805D825C  7F C4 F3 78 */	mr r4, r30
/* 805D8260  7F 85 E3 78 */	mr r5, r28
/* 805D8264  7F E6 FB 78 */	mr r6, r31
/* 805D8268  4B FF FD B9 */	bl mEE_set_answer_character
lbl_805D826C:
/* 805D826C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805D8270  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805D8274  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805D8278  39 61 00 20 */	addi r11, r1, 0x20
/* 805D827C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805D8280  4B AC 2C 99 */	bl func_8009AF18
/* 805D8284  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805D8288  7C 08 03 A6 */	mtlr r0
/* 805D828C  38 21 00 40 */	addi r1, r1, 0x40
/* 805D8290  4E 80 00 20 */	blr 
