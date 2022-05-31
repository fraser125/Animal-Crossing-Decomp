lbl_8038A080:
/* 8038A080  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8038A084  7C 08 02 A6 */	mflr r0
/* 8038A088  90 01 00 44 */	stw r0, 0x44(r1)
/* 8038A08C  39 61 00 30 */	addi r11, r1, 0x30
/* 8038A090  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 8038A094  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8038A098  4B D1 0E 21 */	bl func_8009AEB8
/* 8038A09C  3D 60 81 14 */	lis r11, Virtual_Actor@ha /* 0x81138394@ha */
/* 8038A0A0  FF C0 08 90 */	fmr f30, f1
/* 8038A0A4  FF E0 10 90 */	fmr f31, f2
/* 8038A0A8  38 0B 83 94 */	addi r0, r11, Virtual_Actor@l /* 0x81138394@l */
/* 8038A0AC  7C 78 1B 78 */	mr r24, r3
/* 8038A0B0  7C 99 23 78 */	mr r25, r4
/* 8038A0B4  AB C1 00 4A */	lha r30, 0x4a(r1)
/* 8038A0B8  AB E1 00 4E */	lha r31, 0x4e(r1)
/* 8038A0BC  7C BA 2B 78 */	mr r26, r5
/* 8038A0C0  7C DB 33 78 */	mr r27, r6
/* 8038A0C4  7C FC 3B 78 */	mr r28, r7
/* 8038A0C8  7D 16 43 78 */	mr r22, r8
/* 8038A0CC  7D 37 4B 78 */	mr r23, r9
/* 8038A0D0  7D 5D 53 78 */	mr r29, r10
/* 8038A0D4  7C 03 03 78 */	mr r3, r0
/* 8038A0D8  38 80 01 74 */	li r4, 0x174
/* 8038A0DC  4B CD 2F 8D */	bl bzero
/* 8038A0E0  3C 80 81 14 */	lis r4, Virtual_Actor@ha /* 0x81138394@ha */
/* 8038A0E4  7E E0 07 34 */	extsh r0, r23
/* 8038A0E8  38 84 83 94 */	addi r4, r4, Virtual_Actor@l /* 0x81138394@l */
/* 8038A0EC  82 FB 00 00 */	lwz r23, 0(r27)
/* 8038A0F0  80 FB 00 04 */	lwz r7, 4(r27)
/* 8038A0F4  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8038A0F8  81 9B 00 08 */	lwz r12, 8(r27)
/* 8038A0FC  56 C6 06 3E */	clrlwi r6, r22, 0x18
/* 8038A100  81 7A 00 00 */	lwz r11, 0(r26)
/* 8038A104  FC 20 F0 90 */	fmr f1, f30
/* 8038A108  81 5A 00 04 */	lwz r10, 4(r26)
/* 8038A10C  FC 40 F8 90 */	fmr f2, f31
/* 8038A110  81 3A 00 08 */	lwz r9, 8(r26)
/* 8038A114  7F 03 C3 78 */	mr r3, r24
/* 8038A118  89 04 00 9A */	lbz r8, 0x9a(r4)
/* 8038A11C  50 C8 0F BC */	rlwimi r8, r6, 1, 0x1e, 0x1e
/* 8038A120  88 04 00 98 */	lbz r0, 0x98(r4)
/* 8038A124  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 8038A128  90 E4 00 2C */	stw r7, 0x2c(r4)
/* 8038A12C  7F A5 EB 78 */	mr r5, r29
/* 8038A130  7F C6 F3 78 */	mr r6, r30
/* 8038A134  92 E4 00 28 */	stw r23, 0x28(r4)
/* 8038A138  7F E7 FB 78 */	mr r7, r31
/* 8038A13C  91 84 00 30 */	stw r12, 0x30(r4)
/* 8038A140  91 64 00 3C */	stw r11, 0x3c(r4)
/* 8038A144  91 44 00 40 */	stw r10, 0x40(r4)
/* 8038A148  91 24 00 44 */	stw r9, 0x44(r4)
/* 8038A14C  99 04 00 9A */	stb r8, 0x9a(r4)
/* 8038A150  98 04 00 98 */	stb r0, 0x98(r4)
/* 8038A154  B3 84 00 DE */	sth r28, 0xde(r4)
/* 8038A158  4B FF FC 49 */	bl mCoBG_BgCheckControll
/* 8038A15C  3C 60 81 14 */	lis r3, Virtual_Actor@ha /* 0x81138394@ha */
/* 8038A160  38 00 00 06 */	li r0, 6
/* 8038A164  38 63 83 94 */	addi r3, r3, Virtual_Actor@l /* 0x81138394@l */
/* 8038A168  38 B9 FF FC */	addi r5, r25, -4
/* 8038A16C  38 83 00 80 */	addi r4, r3, 0x80
/* 8038A170  7C 09 03 A6 */	mtctr r0
lbl_8038A174:
/* 8038A174  80 64 00 04 */	lwz r3, 4(r4)
/* 8038A178  84 04 00 08 */	lwzu r0, 8(r4)
/* 8038A17C  90 65 00 04 */	stw r3, 4(r5)
/* 8038A180  94 05 00 08 */	stwu r0, 8(r5)
/* 8038A184  42 00 FF F0 */	bdnz lbl_8038A174
/* 8038A188  39 61 00 30 */	addi r11, r1, 0x30
/* 8038A18C  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 8038A190  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8038A194  4B D1 0D 71 */	bl func_8009AF04
/* 8038A198  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8038A19C  7C 08 03 A6 */	mtlr r0
/* 8038A1A0  38 21 00 40 */	addi r1, r1, 0x40
/* 8038A1A4  4E 80 00 20 */	blr 
