lbl_804B41D0:
/* 804B41D0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804B41D4  7C 08 02 A6 */	mflr r0
/* 804B41D8  90 01 00 44 */	stw r0, 0x44(r1)
/* 804B41DC  39 61 00 40 */	addi r11, r1, 0x40
/* 804B41E0  4B BE 6C E5 */	bl func_8009AEC4
/* 804B41E4  7C 9D 23 78 */	mr r29, r4
/* 804B41E8  7C 7C 1B 78 */	mr r28, r3
/* 804B41EC  83 64 00 1C */	lwz r27, 0x1c(r4)
/* 804B41F0  7C B9 2B 78 */	mr r25, r5
/* 804B41F4  7C DE 33 78 */	mr r30, r6
/* 804B41F8  28 1B 00 00 */	cmplwi r27, 0
/* 804B41FC  41 82 00 D0 */	beq lbl_804B42CC
/* 804B4200  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 804B4204  80 1C 02 D4 */	lwz r0, 0x2d4(r28)
/* 804B4208  54 63 20 36 */	slwi r3, r3, 4
/* 804B420C  83 FC 03 00 */	lwz r31, 0x300(r28)
/* 804B4210  7C 63 00 51 */	subf. r3, r3, r0
/* 804B4214  90 7C 02 D4 */	stw r3, 0x2d4(r28)
/* 804B4218  7C 7A 1B 78 */	mr r26, r3
/* 804B421C  41 82 00 2C */	beq lbl_804B4248
/* 804B4220  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 804B4224  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 804B4228  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B422C  80 BD 00 0C */	lwz r5, 0xc(r29)
/* 804B4230  80 DD 00 18 */	lwz r6, 0x18(r29)
/* 804B4234  FC 00 00 1E */	fctiwz f0, f0
/* 804B4238  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804B423C  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 804B4240  4B FF BB 4D */	bl func_804AFD8C
/* 804B4244  48 00 00 08 */	b lbl_804B424C
lbl_804B4248:
/* 804B4248  83 5D 00 10 */	lwz r26, 0x10(r29)
lbl_804B424C:
/* 804B424C  3C 00 DE 00 */	lis r0, 0xde00
/* 804B4250  7F 83 E3 78 */	mr r3, r28
/* 804B4254  90 1F 00 00 */	stw r0, 0(r31)
/* 804B4258  7F 65 DB 78 */	mr r5, r27
/* 804B425C  7F 47 D3 78 */	mr r7, r26
/* 804B4260  7F 28 CB 78 */	mr r8, r25
/* 804B4264  88 1B 00 04 */	lbz r0, 4(r27)
/* 804B4268  38 81 00 08 */	addi r4, r1, 8
/* 804B426C  80 DD 00 00 */	lwz r6, 0(r29)
/* 804B4270  54 00 10 3A */	slwi r0, r0, 2
/* 804B4274  7C 06 00 2E */	lwzx r0, r6, r0
/* 804B4278  90 1F 00 04 */	stw r0, 4(r31)
/* 804B427C  3B FF 00 08 */	addi r31, r31, 8
/* 804B4280  7F EA FB 78 */	mr r10, r31
/* 804B4284  88 1E 00 03 */	lbz r0, 3(r30)
/* 804B4288  3B FF 00 08 */	addi r31, r31, 8
/* 804B428C  64 00 FA 00 */	oris r0, r0, 0xfa00
/* 804B4290  90 0A 00 00 */	stw r0, 0(r10)
/* 804B4294  88 1E 00 01 */	lbz r0, 1(r30)
/* 804B4298  88 DE 00 00 */	lbz r6, 0(r30)
/* 804B429C  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 804B42A0  89 3E 00 02 */	lbz r9, 2(r30)
/* 804B42A4  50 C0 C0 0E */	rlwimi r0, r6, 0x18, 0, 7
/* 804B42A8  51 20 44 2E */	rlwimi r0, r9, 8, 0x10, 0x17
/* 804B42AC  60 00 00 FF */	ori r0, r0, 0xff
/* 804B42B0  90 0A 00 04 */	stw r0, 4(r10)
/* 804B42B4  93 E1 00 08 */	stw r31, 8(r1)
/* 804B42B8  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 804B42BC  81 3D 00 00 */	lwz r9, 0(r29)
/* 804B42C0  4B FF FC E5 */	bl bit_cmn_s_single_draw_loop_type1
/* 804B42C4  80 01 00 08 */	lwz r0, 8(r1)
/* 804B42C8  90 1C 03 00 */	stw r0, 0x300(r28)
lbl_804B42CC:
/* 804B42CC  39 61 00 40 */	addi r11, r1, 0x40
/* 804B42D0  4B BE 6C 41 */	bl func_8009AF10
/* 804B42D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804B42D8  7C 08 03 A6 */	mtlr r0
/* 804B42DC  38 21 00 40 */	addi r1, r1, 0x40
/* 804B42E0  4E 80 00 20 */	blr 
