lbl_803D2FB4:
/* 803D2FB4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803D2FB8  7C 08 02 A6 */	mflr r0
/* 803D2FBC  90 01 00 54 */	stw r0, 0x54(r1)
/* 803D2FC0  39 61 00 50 */	addi r11, r1, 0x50
/* 803D2FC4  4B CC 7E E9 */	bl func_8009AEAC
/* 803D2FC8  3D 00 81 17 */	lis r8, fg_flag@ha /* 0x8116C56C@ha */
/* 803D2FCC  7C B4 2B 78 */	mr r20, r5
/* 803D2FD0  38 08 C5 6C */	addi r0, r8, fg_flag@l /* 0x8116C56C@l */
/* 803D2FD4  7C D3 33 78 */	mr r19, r6
/* 803D2FD8  7C 75 1B 78 */	mr r21, r3
/* 803D2FDC  7C 96 23 78 */	mr r22, r4
/* 803D2FE0  7C F7 3B 78 */	mr r23, r7
/* 803D2FE4  7C 1C 03 78 */	mr r28, r0
/* 803D2FE8  7E 83 A3 78 */	mr r3, r20
/* 803D2FEC  7E 64 9B 78 */	mr r4, r19
/* 803D2FF0  4B FD 35 7D */	bl mFI_GetBkNum2ColTop
/* 803D2FF4  7C 7E 1B 78 */	mr r30, r3
/* 803D2FF8  7E 83 A3 78 */	mr r3, r20
/* 803D2FFC  7E 64 9B 78 */	mr r4, r19
/* 803D3000  4B FD 41 55 */	bl mFI_BkNumtoUtFGTop
/* 803D3004  2C 17 00 00 */	cmpwi r23, 0
/* 803D3008  7C 7F 1B 78 */	mr r31, r3
/* 803D300C  3B 60 00 00 */	li r27, 0
/* 803D3010  3B 40 00 00 */	li r26, 0
/* 803D3014  41 80 00 0C */	blt lbl_803D3020
/* 803D3018  2C 17 00 09 */	cmpwi r23, 9
/* 803D301C  40 81 00 0C */	ble lbl_803D3028
lbl_803D3020:
/* 803D3020  38 60 00 00 */	li r3, 0
/* 803D3024  48 00 01 58 */	b lbl_803D317C
lbl_803D3028:
/* 803D3028  3C 60 81 17 */	lis r3, fg_flag@ha /* 0x8116C56C@ha */
/* 803D302C  38 80 00 20 */	li r4, 0x20
/* 803D3030  38 63 C5 6C */	addi r3, r3, fg_flag@l /* 0x8116C56C@l */
/* 803D3034  4B C8 A0 35 */	bl bzero
/* 803D3038  28 1F 00 00 */	cmplwi r31, 0
/* 803D303C  41 82 00 84 */	beq lbl_803D30C0
/* 803D3040  28 1E 00 00 */	cmplwi r30, 0
/* 803D3044  41 82 00 7C */	beq lbl_803D30C0
/* 803D3048  7E F9 BB 78 */	mr r25, r23
/* 803D304C  23 B7 00 10 */	subfic r29, r23, 0x10
/* 803D3050  56 F4 20 36 */	slwi r20, r23, 4
/* 803D3054  48 00 00 64 */	b lbl_803D30B8
lbl_803D3058:
/* 803D3058  7E F8 BB 78 */	mr r24, r23
/* 803D305C  3A 60 00 01 */	li r19, 1
/* 803D3060  48 00 00 44 */	b lbl_803D30A4
lbl_803D3064:
/* 803D3064  7C 98 A2 14 */	add r4, r24, r20
/* 803D3068  54 83 10 3A */	slwi r3, r4, 2
/* 803D306C  38 03 00 03 */	addi r0, r3, 3
/* 803D3070  54 83 08 3C */	slwi r3, r4, 1
/* 803D3074  7C 1E 00 AE */	lbzx r0, r30, r0
/* 803D3078  7C 7F 1A 2E */	lhzx r3, r31, r3
/* 803D307C  54 04 06 BE */	clrlwi r4, r0, 0x1a
/* 803D3080  4B FF FC 6D */	bl mNpc_CheckNpcSet_fgcol
/* 803D3084  2C 03 00 01 */	cmpwi r3, 1
/* 803D3088  40 82 00 18 */	bne lbl_803D30A0
/* 803D308C  A0 7C 00 00 */	lhz r3, 0(r28)
/* 803D3090  7E 60 C0 30 */	slw r0, r19, r24
/* 803D3094  3B 7B 00 01 */	addi r27, r27, 1
/* 803D3098  7C 60 03 78 */	or r0, r3, r0
/* 803D309C  B0 1C 00 00 */	sth r0, 0(r28)
lbl_803D30A0:
/* 803D30A0  3B 18 00 01 */	addi r24, r24, 1
lbl_803D30A4:
/* 803D30A4  7C 18 E8 00 */	cmpw r24, r29
/* 803D30A8  41 80 FF BC */	blt lbl_803D3064
/* 803D30AC  3B 9C 00 02 */	addi r28, r28, 2
/* 803D30B0  3B 39 00 01 */	addi r25, r25, 1
/* 803D30B4  3A 94 00 10 */	addi r20, r20, 0x10
lbl_803D30B8:
/* 803D30B8  7C 19 E8 00 */	cmpw r25, r29
/* 803D30BC  41 80 FF 9C */	blt lbl_803D3058
lbl_803D30C0:
/* 803D30C0  2C 1B 00 00 */	cmpwi r27, 0
/* 803D30C4  3C 60 81 17 */	lis r3, fg_flag@ha /* 0x8116C56C@ha */
/* 803D30C8  3A 63 C5 6C */	addi r19, r3, fg_flag@l /* 0x8116C56C@l */
/* 803D30CC  40 81 00 AC */	ble lbl_803D3178
/* 803D30D0  4B C8 9C 25 */	bl fqrand
/* 803D30D4  6F 63 80 00 */	xoris r3, r27, 0x8000
/* 803D30D8  3C 00 43 30 */	lis r0, 0x4330
/* 803D30DC  3C 80 80 64 */	lis r4, data_806428CC@ha /* 0x806428CC@ha */
/* 803D30E0  90 61 00 0C */	stw r3, 0xc(r1)
/* 803D30E4  38 64 28 CC */	addi r3, r4, data_806428CC@l /* 0x806428CC@l */
/* 803D30E8  20 97 00 10 */	subfic r4, r23, 0x10
/* 803D30EC  90 01 00 08 */	stw r0, 8(r1)
/* 803D30F0  7E E5 BB 78 */	mr r5, r23
/* 803D30F4  C8 43 00 00 */	lfd f2, 0(r3)
/* 803D30F8  7C 17 20 50 */	subf r0, r23, r4
/* 803D30FC  C8 01 00 08 */	lfd f0, 8(r1)
/* 803D3100  EC 00 10 28 */	fsubs f0, f0, f2
/* 803D3104  EC 00 00 72 */	fmuls f0, f0, f1
/* 803D3108  FC 00 00 1E */	fctiwz f0, f0
/* 803D310C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803D3110  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 803D3114  48 00 00 5C */	b lbl_803D3170
lbl_803D3118:
/* 803D3118  7E E6 BB 78 */	mr r6, r23
/* 803D311C  7C 09 03 A6 */	mtctr r0
/* 803D3120  7C 17 20 00 */	cmpw r23, r4
/* 803D3124  40 80 00 3C */	bge lbl_803D3160
lbl_803D3128:
/* 803D3128  A0 73 00 00 */	lhz r3, 0(r19)
/* 803D312C  7C 63 36 30 */	sraw r3, r3, r6
/* 803D3130  54 63 07 FE */	clrlwi r3, r3, 0x1f
/* 803D3134  2C 03 00 01 */	cmpwi r3, 1
/* 803D3138  40 82 00 20 */	bne lbl_803D3158
/* 803D313C  2C 07 00 00 */	cmpwi r7, 0
/* 803D3140  40 82 00 14 */	bne lbl_803D3154
/* 803D3144  90 D5 00 00 */	stw r6, 0(r21)
/* 803D3148  3B 40 00 01 */	li r26, 1
/* 803D314C  90 B6 00 00 */	stw r5, 0(r22)
/* 803D3150  48 00 00 10 */	b lbl_803D3160
lbl_803D3154:
/* 803D3154  38 E7 FF FF */	addi r7, r7, -1
lbl_803D3158:
/* 803D3158  38 C6 00 01 */	addi r6, r6, 1
/* 803D315C  42 00 FF CC */	bdnz lbl_803D3128
lbl_803D3160:
/* 803D3160  2C 1A 00 01 */	cmpwi r26, 1
/* 803D3164  41 82 00 14 */	beq lbl_803D3178
/* 803D3168  3A 73 00 02 */	addi r19, r19, 2
/* 803D316C  38 A5 00 01 */	addi r5, r5, 1
lbl_803D3170:
/* 803D3170  7C 05 20 00 */	cmpw r5, r4
/* 803D3174  41 80 FF A4 */	blt lbl_803D3118
lbl_803D3178:
/* 803D3178  7F 43 D3 78 */	mr r3, r26
lbl_803D317C:
/* 803D317C  39 61 00 50 */	addi r11, r1, 0x50
/* 803D3180  4B CC 7D 79 */	bl func_8009AEF8
/* 803D3184  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803D3188  7C 08 03 A6 */	mtlr r0
/* 803D318C  38 21 00 50 */	addi r1, r1, 0x50
/* 803D3190  4E 80 00 20 */	blr 
