lbl_805D2F40:
/* 805D2F40  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805D2F44  7C 08 02 A6 */	mflr r0
/* 805D2F48  90 01 00 64 */	stw r0, 0x64(r1)
/* 805D2F4C  39 61 00 60 */	addi r11, r1, 0x60
/* 805D2F50  4B AC 7F 4D */	bl func_8009AE9C
/* 805D2F54  3C A0 81 16 */	lis r5, debug_mode@ha /* 0x81166138@ha */
/* 805D2F58  7C 74 1B 78 */	mr r20, r3
/* 805D2F5C  38 65 61 38 */	addi r3, r5, debug_mode@l /* 0x81166138@l */
/* 805D2F60  7C 95 23 78 */	mr r21, r4
/* 805D2F64  80 63 00 00 */	lwz r3, 0(r3)
/* 805D2F68  3B A0 00 2D */	li r29, 0x2d
/* 805D2F6C  A8 63 16 98 */	lha r3, 0x1698(r3)
/* 805D2F70  7C 60 07 35 */	extsh. r0, r3
/* 805D2F74  41 82 00 08 */	beq lbl_805D2F7C
/* 805D2F78  7C 7D 1B 78 */	mr r29, r3
lbl_805D2F7C:
/* 805D2F7C  7E 83 A3 78 */	mr r3, r20
/* 805D2F80  38 81 00 14 */	addi r4, r1, 0x14
/* 805D2F84  38 A1 00 10 */	addi r5, r1, 0x10
/* 805D2F88  38 C1 00 0C */	addi r6, r1, 0xc
/* 805D2F8C  38 E1 00 08 */	addi r7, r1, 8
/* 805D2F90  4B FF FE 49 */	bl mDE_waku_set_main_start_end
/* 805D2F94  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805D2F98  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805D2F9C  7C 03 00 51 */	subf. r0, r3, r0
/* 805D2FA0  7C E0 00 D0 */	neg r7, r0
/* 805D2FA4  41 80 00 08 */	blt lbl_805D2FAC
/* 805D2FA8  7C 07 03 78 */	mr r7, r0
lbl_805D2FAC:
/* 805D2FAC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 805D2FB0  80 01 00 08 */	lwz r0, 8(r1)
/* 805D2FB4  7C 04 00 51 */	subf. r0, r4, r0
/* 805D2FB8  7C C0 00 D0 */	neg r6, r0
/* 805D2FBC  41 80 00 08 */	blt lbl_805D2FC4
/* 805D2FC0  7C 06 03 78 */	mr r6, r0
lbl_805D2FC4:
/* 805D2FC4  7C F8 0E 70 */	srawi r24, r7, 1
/* 805D2FC8  7C D7 0E 70 */	srawi r23, r6, 1
/* 805D2FCC  7C B7 C0 51 */	subf. r5, r23, r24
/* 805D2FD0  7F 43 C2 14 */	add r26, r3, r24
/* 805D2FD4  7F 24 BA 14 */	add r25, r4, r23
/* 805D2FD8  7C 05 00 D0 */	neg r0, r5
/* 805D2FDC  41 80 00 08 */	blt lbl_805D2FE4
/* 805D2FE0  7C A0 2B 78 */	mr r0, r5
lbl_805D2FE4:
/* 805D2FE4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805D2FE8  7C 05 0E 70 */	srawi r5, r0, 1
/* 805D2FEC  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 805D2FF0  7D 18 BA 14 */	add r8, r24, r23
/* 805D2FF4  80 63 00 00 */	lwz r3, 0(r3)
/* 805D2FF8  7D 04 1E 70 */	srawi r4, r8, 3
/* 805D2FFC  7D 00 0E 70 */	srawi r0, r8, 1
/* 805D3000  A9 23 16 9A */	lha r9, 0x169a(r3)
/* 805D3004  7C 04 00 50 */	subf r0, r4, r0
/* 805D3008  7C 65 00 50 */	subf r3, r5, r0
/* 805D300C  7D 20 07 35 */	extsh. r0, r9
/* 805D3010  38 63 FF FF */	addi r3, r3, -1
/* 805D3014  41 82 00 0C */	beq lbl_805D3020
/* 805D3018  7C 69 18 50 */	subf r3, r9, r3
/* 805D301C  48 00 00 08 */	b lbl_805D3024
lbl_805D3020:
/* 805D3020  38 63 FF FC */	addi r3, r3, -4
lbl_805D3024:
/* 805D3024  7C 03 40 50 */	subf r0, r3, r8
/* 805D3028  3C 60 80 6D */	lis r3, data_806CBA10@ha /* 0x806CBA10@ha */
/* 805D302C  60 00 00 01 */	ori r0, r0, 1
/* 805D3030  54 DC 07 FE */	clrlwi r28, r6, 0x1f
/* 805D3034  54 FB 07 FE */	clrlwi r27, r7, 0x1f
/* 805D3038  3B E3 BA 10 */	addi r31, r3, data_806CBA10@l /* 0x806CBA10@l */
/* 805D303C  7C 1E 07 34 */	extsh r30, r0
/* 805D3040  56 B3 06 3E */	clrlwi r19, r21, 0x18
/* 805D3044  3A C0 00 00 */	li r22, 0
/* 805D3048  48 00 01 04 */	b lbl_805D314C
lbl_805D304C:
/* 805D304C  7E C0 07 34 */	extsh r0, r22
/* 805D3050  28 13 00 00 */	cmplwi r19, 0
/* 805D3054  54 00 08 3C */	slwi r0, r0, 1
/* 805D3058  7C 7F 02 14 */	add r3, r31, r0
/* 805D305C  7C 1F 02 2E */	lhzx r0, r31, r0
/* 805D3060  A0 63 00 80 */	lhz r3, 0x80(r3)
/* 805D3064  7C 17 01 D6 */	mullw r0, r23, r0
/* 805D3068  7C 78 19 D6 */	mullw r3, r24, r3
/* 805D306C  7C 1D 02 14 */	add r0, r29, r0
/* 805D3070  7C 7D 1A 14 */	add r3, r29, r3
/* 805D3074  7C 75 46 70 */	srawi r21, r3, 8
/* 805D3078  7C 10 46 70 */	srawi r16, r0, 8
/* 805D307C  41 82 00 58 */	beq lbl_805D30D4
/* 805D3080  7E 50 E2 14 */	add r18, r16, r28
/* 805D3084  7E 35 DA 14 */	add r17, r21, r27
/* 805D3088  7D F5 D0 50 */	subf r15, r21, r26
/* 805D308C  7E B0 C8 50 */	subf r21, r16, r25
/* 805D3090  7E 59 92 14 */	add r18, r25, r18
/* 805D3094  7E 3A 8A 14 */	add r17, r26, r17
/* 805D3098  48 00 00 30 */	b lbl_805D30C8
lbl_805D309C:
/* 805D309C  88 D4 06 A4 */	lbz r6, 0x6a4(r20)
/* 805D30A0  7E 83 A3 78 */	mr r3, r20
/* 805D30A4  7D E4 7B 78 */	mr r4, r15
/* 805D30A8  7E A5 AB 78 */	mr r5, r21
/* 805D30AC  4B FF EE 75 */	bl mDE_set_pal_on_cursor
/* 805D30B0  88 D4 06 A4 */	lbz r6, 0x6a4(r20)
/* 805D30B4  7E 83 A3 78 */	mr r3, r20
/* 805D30B8  7D E4 7B 78 */	mr r4, r15
/* 805D30BC  7E 45 93 78 */	mr r5, r18
/* 805D30C0  4B FF EE 61 */	bl mDE_set_pal_on_cursor
/* 805D30C4  39 EF 00 01 */	addi r15, r15, 1
lbl_805D30C8:
/* 805D30C8  7C 0F 88 00 */	cmpw r15, r17
/* 805D30CC  40 81 FF D0 */	ble lbl_805D309C
/* 805D30D0  48 00 00 6C */	b lbl_805D313C
lbl_805D30D4:
/* 805D30D4  7E 35 DA 14 */	add r17, r21, r27
/* 805D30D8  7E 50 E2 14 */	add r18, r16, r28
/* 805D30DC  7E 3A 8A 14 */	add r17, r26, r17
/* 805D30E0  88 D4 06 A4 */	lbz r6, 0x6a4(r20)
/* 805D30E4  7E 59 92 14 */	add r18, r25, r18
/* 805D30E8  7E 83 A3 78 */	mr r3, r20
/* 805D30EC  7E 24 8B 78 */	mr r4, r17
/* 805D30F0  7E 45 93 78 */	mr r5, r18
/* 805D30F4  4B FF EE 2D */	bl mDE_set_pal_on_cursor
/* 805D30F8  7E 10 C8 50 */	subf r16, r16, r25
/* 805D30FC  88 D4 06 A4 */	lbz r6, 0x6a4(r20)
/* 805D3100  7E 83 A3 78 */	mr r3, r20
/* 805D3104  7E 24 8B 78 */	mr r4, r17
/* 805D3108  7E 05 83 78 */	mr r5, r16
/* 805D310C  4B FF EE 15 */	bl mDE_set_pal_on_cursor
/* 805D3110  7E 35 D0 50 */	subf r17, r21, r26
/* 805D3114  88 D4 06 A4 */	lbz r6, 0x6a4(r20)
/* 805D3118  7E 83 A3 78 */	mr r3, r20
/* 805D311C  7E 45 93 78 */	mr r5, r18
/* 805D3120  7E 24 8B 78 */	mr r4, r17
/* 805D3124  4B FF ED FD */	bl mDE_set_pal_on_cursor
/* 805D3128  88 D4 06 A4 */	lbz r6, 0x6a4(r20)
/* 805D312C  7E 83 A3 78 */	mr r3, r20
/* 805D3130  7E 24 8B 78 */	mr r4, r17
/* 805D3134  7E 05 83 78 */	mr r5, r16
/* 805D3138  4B FF ED E9 */	bl mDE_set_pal_on_cursor
lbl_805D313C:
/* 805D313C  38 00 00 40 */	li r0, 0x40
/* 805D3140  7C 00 F3 D6 */	divw r0, r0, r30
/* 805D3144  7C 16 02 14 */	add r0, r22, r0
/* 805D3148  7C 16 07 34 */	extsh r22, r0
lbl_805D314C:
/* 805D314C  7E C0 07 34 */	extsh r0, r22
/* 805D3150  2C 00 00 40 */	cmpwi r0, 0x40
/* 805D3154  41 80 FE F8 */	blt lbl_805D304C
/* 805D3158  39 61 00 60 */	addi r11, r1, 0x60
/* 805D315C  4B AC 7D 8D */	bl func_8009AEE8
/* 805D3160  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805D3164  7C 08 03 A6 */	mtlr r0
/* 805D3168  38 21 00 60 */	addi r1, r1, 0x60
/* 805D316C  4E 80 00 20 */	blr 
