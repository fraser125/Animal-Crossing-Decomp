lbl_804CA464:
/* 804CA464  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804CA468  7C 08 02 A6 */	mflr r0
/* 804CA46C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804CA470  39 61 00 40 */	addi r11, r1, 0x40
/* 804CA474  4B BD 0A 51 */	bl func_8009AEC4
/* 804CA478  7C 9D 23 78 */	mr r29, r4
/* 804CA47C  7C 7C 1B 78 */	mr r28, r3
/* 804CA480  83 64 00 1C */	lwz r27, 0x1c(r4)
/* 804CA484  7C B9 2B 78 */	mr r25, r5
/* 804CA488  7C DE 33 78 */	mr r30, r6
/* 804CA48C  28 1B 00 00 */	cmplwi r27, 0
/* 804CA490  41 82 00 D0 */	beq lbl_804CA560
/* 804CA494  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 804CA498  80 1C 02 D4 */	lwz r0, 0x2d4(r28)
/* 804CA49C  54 63 20 36 */	slwi r3, r3, 4
/* 804CA4A0  83 FC 03 00 */	lwz r31, 0x300(r28)
/* 804CA4A4  7C 63 00 51 */	subf. r3, r3, r0
/* 804CA4A8  90 7C 02 D4 */	stw r3, 0x2d4(r28)
/* 804CA4AC  7C 7A 1B 78 */	mr r26, r3
/* 804CA4B0  41 82 00 2C */	beq lbl_804CA4DC
/* 804CA4B4  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 804CA4B8  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 804CA4BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 804CA4C0  80 BD 00 0C */	lwz r5, 0xc(r29)
/* 804CA4C4  80 DD 00 18 */	lwz r6, 0x18(r29)
/* 804CA4C8  FC 00 00 1E */	fctiwz f0, f0
/* 804CA4CC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804CA4D0  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 804CA4D4  4B FF BB 4D */	bl func_804C6020
/* 804CA4D8  48 00 00 08 */	b lbl_804CA4E0
lbl_804CA4DC:
/* 804CA4DC  83 5D 00 10 */	lwz r26, 0x10(r29)
lbl_804CA4E0:
/* 804CA4E0  3C 00 DE 00 */	lis r0, 0xde00
/* 804CA4E4  7F 83 E3 78 */	mr r3, r28
/* 804CA4E8  90 1F 00 00 */	stw r0, 0(r31)
/* 804CA4EC  7F 65 DB 78 */	mr r5, r27
/* 804CA4F0  7F 47 D3 78 */	mr r7, r26
/* 804CA4F4  7F 28 CB 78 */	mr r8, r25
/* 804CA4F8  88 1B 00 04 */	lbz r0, 4(r27)
/* 804CA4FC  38 81 00 08 */	addi r4, r1, 8
/* 804CA500  80 DD 00 00 */	lwz r6, 0(r29)
/* 804CA504  54 00 10 3A */	slwi r0, r0, 2
/* 804CA508  7C 06 00 2E */	lwzx r0, r6, r0
/* 804CA50C  90 1F 00 04 */	stw r0, 4(r31)
/* 804CA510  3B FF 00 08 */	addi r31, r31, 8
/* 804CA514  7F EA FB 78 */	mr r10, r31
/* 804CA518  88 1E 00 03 */	lbz r0, 3(r30)
/* 804CA51C  3B FF 00 08 */	addi r31, r31, 8
/* 804CA520  64 00 FA 00 */	oris r0, r0, 0xfa00
/* 804CA524  90 0A 00 00 */	stw r0, 0(r10)
/* 804CA528  88 1E 00 01 */	lbz r0, 1(r30)
/* 804CA52C  88 DE 00 00 */	lbz r6, 0(r30)
/* 804CA530  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 804CA534  89 3E 00 02 */	lbz r9, 2(r30)
/* 804CA538  50 C0 C0 0E */	rlwimi r0, r6, 0x18, 0, 7
/* 804CA53C  51 20 44 2E */	rlwimi r0, r9, 8, 0x10, 0x17
/* 804CA540  60 00 00 FF */	ori r0, r0, 0xff
/* 804CA544  90 0A 00 04 */	stw r0, 4(r10)
/* 804CA548  93 E1 00 08 */	stw r31, 8(r1)
/* 804CA54C  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 804CA550  81 3D 00 00 */	lwz r9, 0(r29)
/* 804CA554  4B FF FC E5 */	bl bit_cmn_s_single_draw_loop_type1
/* 804CA558  80 01 00 08 */	lwz r0, 8(r1)
/* 804CA55C  90 1C 03 00 */	stw r0, 0x300(r28)
lbl_804CA560:
/* 804CA560  39 61 00 40 */	addi r11, r1, 0x40
/* 804CA564  4B BD 09 AD */	bl func_8009AF10
/* 804CA568  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804CA56C  7C 08 03 A6 */	mtlr r0
/* 804CA570  38 21 00 40 */	addi r1, r1, 0x40
/* 804CA574  4E 80 00 20 */	blr 
