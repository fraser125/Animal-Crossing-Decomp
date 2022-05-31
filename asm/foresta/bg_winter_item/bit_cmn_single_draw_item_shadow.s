lbl_804C304C:
/* 804C304C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804C3050  7C 08 02 A6 */	mflr r0
/* 804C3054  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C3058  39 61 00 40 */	addi r11, r1, 0x40
/* 804C305C  4B BD 7E 69 */	bl func_8009AEC4
/* 804C3060  7C 9D 23 78 */	mr r29, r4
/* 804C3064  7C 7C 1B 78 */	mr r28, r3
/* 804C3068  83 64 00 1C */	lwz r27, 0x1c(r4)
/* 804C306C  7C B9 2B 78 */	mr r25, r5
/* 804C3070  7C DE 33 78 */	mr r30, r6
/* 804C3074  28 1B 00 00 */	cmplwi r27, 0
/* 804C3078  41 82 00 D0 */	beq lbl_804C3148
/* 804C307C  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 804C3080  80 1C 02 D4 */	lwz r0, 0x2d4(r28)
/* 804C3084  54 63 20 36 */	slwi r3, r3, 4
/* 804C3088  83 FC 03 00 */	lwz r31, 0x300(r28)
/* 804C308C  7C 63 00 51 */	subf. r3, r3, r0
/* 804C3090  90 7C 02 D4 */	stw r3, 0x2d4(r28)
/* 804C3094  7C 7A 1B 78 */	mr r26, r3
/* 804C3098  41 82 00 2C */	beq lbl_804C30C4
/* 804C309C  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 804C30A0  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 804C30A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 804C30A8  80 BD 00 0C */	lwz r5, 0xc(r29)
/* 804C30AC  80 DD 00 18 */	lwz r6, 0x18(r29)
/* 804C30B0  FC 00 00 1E */	fctiwz f0, f0
/* 804C30B4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804C30B8  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 804C30BC  4B FF BB 4D */	bl func_804BEC08
/* 804C30C0  48 00 00 08 */	b lbl_804C30C8
lbl_804C30C4:
/* 804C30C4  83 5D 00 10 */	lwz r26, 0x10(r29)
lbl_804C30C8:
/* 804C30C8  3C 00 DE 00 */	lis r0, 0xde00
/* 804C30CC  7F 83 E3 78 */	mr r3, r28
/* 804C30D0  90 1F 00 00 */	stw r0, 0(r31)
/* 804C30D4  7F 65 DB 78 */	mr r5, r27
/* 804C30D8  7F 47 D3 78 */	mr r7, r26
/* 804C30DC  7F 28 CB 78 */	mr r8, r25
/* 804C30E0  88 1B 00 04 */	lbz r0, 4(r27)
/* 804C30E4  38 81 00 08 */	addi r4, r1, 8
/* 804C30E8  80 DD 00 00 */	lwz r6, 0(r29)
/* 804C30EC  54 00 10 3A */	slwi r0, r0, 2
/* 804C30F0  7C 06 00 2E */	lwzx r0, r6, r0
/* 804C30F4  90 1F 00 04 */	stw r0, 4(r31)
/* 804C30F8  3B FF 00 08 */	addi r31, r31, 8
/* 804C30FC  7F EA FB 78 */	mr r10, r31
/* 804C3100  88 1E 00 03 */	lbz r0, 3(r30)
/* 804C3104  3B FF 00 08 */	addi r31, r31, 8
/* 804C3108  64 00 FA 00 */	oris r0, r0, 0xfa00
/* 804C310C  90 0A 00 00 */	stw r0, 0(r10)
/* 804C3110  88 1E 00 01 */	lbz r0, 1(r30)
/* 804C3114  88 DE 00 00 */	lbz r6, 0(r30)
/* 804C3118  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 804C311C  89 3E 00 02 */	lbz r9, 2(r30)
/* 804C3120  50 C0 C0 0E */	rlwimi r0, r6, 0x18, 0, 7
/* 804C3124  51 20 44 2E */	rlwimi r0, r9, 8, 0x10, 0x17
/* 804C3128  60 00 00 FF */	ori r0, r0, 0xff
/* 804C312C  90 0A 00 04 */	stw r0, 4(r10)
/* 804C3130  93 E1 00 08 */	stw r31, 8(r1)
/* 804C3134  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 804C3138  81 3D 00 00 */	lwz r9, 0(r29)
/* 804C313C  4B FF FC E5 */	bl bit_cmn_s_single_draw_loop_type1
/* 804C3140  80 01 00 08 */	lwz r0, 8(r1)
/* 804C3144  90 1C 03 00 */	stw r0, 0x300(r28)
lbl_804C3148:
/* 804C3148  39 61 00 40 */	addi r11, r1, 0x40
/* 804C314C  4B BD 7D C5 */	bl func_8009AF10
/* 804C3150  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804C3154  7C 08 03 A6 */	mtlr r0
/* 804C3158  38 21 00 40 */	addi r1, r1, 0x40
/* 804C315C  4E 80 00 20 */	blr 
