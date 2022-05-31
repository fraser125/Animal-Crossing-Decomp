lbl_804D3248:
/* 804D3248  94 21 FE 80 */	stwu r1, -0x180(r1)
/* 804D324C  7C 08 02 A6 */	mflr r0
/* 804D3250  90 01 01 84 */	stw r0, 0x184(r1)
/* 804D3254  39 61 01 80 */	addi r11, r1, 0x180
/* 804D3258  4B BC 7C 4D */	bl func_8009AEA4
/* 804D325C  39 00 00 00 */	li r8, 0
/* 804D3260  3D 20 80 6A */	lis r9, data_8069C9F0@ha /* 0x8069C9F0@ha */
/* 804D3264  38 00 00 26 */	li r0, 0x26
/* 804D3268  7C 73 1B 78 */	mr r19, r3
/* 804D326C  7C 94 23 78 */	mr r20, r4
/* 804D3270  7C B5 2B 78 */	mr r21, r5
/* 804D3274  7C D6 33 78 */	mr r22, r6
/* 804D3278  7C F7 3B 78 */	mr r23, r7
/* 804D327C  7D 06 43 78 */	mr r6, r8
/* 804D3280  7D 04 43 78 */	mr r4, r8
/* 804D3284  3B A9 C9 F0 */	addi r29, r9, data_8069C9F0@l /* 0x8069C9F0@l */
/* 804D3288  38 A1 00 A0 */	addi r5, r1, 0xa0
/* 804D328C  38 61 00 08 */	addi r3, r1, 8
/* 804D3290  3B 20 00 00 */	li r25, 0
/* 804D3294  7C 09 03 A6 */	mtctr r0
lbl_804D3298:
/* 804D3298  7C C5 41 2E */	stwx r6, r5, r8
/* 804D329C  7C 83 41 2E */	stwx r4, r3, r8
/* 804D32A0  39 08 00 04 */	addi r8, r8, 4
/* 804D32A4  42 00 FF F4 */	bdnz lbl_804D3298
/* 804D32A8  3B 80 00 00 */	li r28, 0
/* 804D32AC  3A 40 00 00 */	li r18, 0
lbl_804D32B0:
/* 804D32B0  7F 14 90 2E */	lwzx r24, r20, r18
/* 804D32B4  28 18 00 00 */	cmplwi r24, 0
/* 804D32B8  41 82 00 7C */	beq lbl_804D3334
/* 804D32BC  3B DD 05 0C */	addi r30, r29, 0x50c
/* 804D32C0  3B E1 00 A0 */	addi r31, r1, 0xa0
/* 804D32C4  3B 40 00 01 */	li r26, 1
/* 804D32C8  3A 20 00 10 */	li r17, 0x10
/* 804D32CC  48 00 00 60 */	b lbl_804D332C
lbl_804D32D0:
/* 804D32D0  3B 60 00 01 */	li r27, 1
/* 804D32D4  48 00 00 48 */	b lbl_804D331C
lbl_804D32D8:
/* 804D32D8  7C 1B 8A 14 */	add r0, r27, r17
/* 804D32DC  54 00 08 3C */	slwi r0, r0, 1
/* 804D32E0  7C 78 02 2E */	lhzx r3, r24, r0
/* 804D32E4  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 804D32E8  2C 00 00 01 */	cmpwi r0, 1
/* 804D32EC  41 82 00 0C */	beq lbl_804D32F8
/* 804D32F0  2C 00 00 03 */	cmpwi r0, 3
/* 804D32F4  40 82 00 24 */	bne lbl_804D3318
lbl_804D32F8:
/* 804D32F8  4B F1 44 99 */	bl mRmTp_FtrItemNo2FtrIdx
/* 804D32FC  54 63 10 3A */	slwi r3, r3, 2
/* 804D3300  38 03 00 02 */	addi r0, r3, 2
/* 804D3304  7C 1E 00 AE */	lbzx r0, r30, r0
/* 804D3308  54 04 16 3A */	rlwinm r4, r0, 2, 0x18, 0x1d
/* 804D330C  7C 7F 20 2E */	lwzx r3, r31, r4
/* 804D3310  38 03 00 01 */	addi r0, r3, 1
/* 804D3314  7C 1F 21 2E */	stwx r0, r31, r4
lbl_804D3318:
/* 804D3318  3B 7B 00 01 */	addi r27, r27, 1
lbl_804D331C:
/* 804D331C  7C 1B A8 00 */	cmpw r27, r21
/* 804D3320  41 80 FF B8 */	blt lbl_804D32D8
/* 804D3324  3B 5A 00 01 */	addi r26, r26, 1
/* 804D3328  3A 31 00 10 */	addi r17, r17, 0x10
lbl_804D332C:
/* 804D332C  7C 1A A8 00 */	cmpw r26, r21
/* 804D3330  41 80 FF A0 */	blt lbl_804D32D0
lbl_804D3334:
/* 804D3334  3B 9C 00 01 */	addi r28, r28, 1
/* 804D3338  3A 52 00 04 */	addi r18, r18, 4
/* 804D333C  2C 1C 00 02 */	cmpwi r28, 2
/* 804D3340  41 80 FF 70 */	blt lbl_804D32B0
/* 804D3344  38 00 00 26 */	li r0, 0x26
/* 804D3348  38 C1 00 A0 */	addi r6, r1, 0xa0
/* 804D334C  38 9D 04 74 */	addi r4, r29, 0x474
/* 804D3350  38 E1 00 08 */	addi r7, r1, 8
/* 804D3354  38 60 00 00 */	li r3, 0
/* 804D3358  7C 09 03 A6 */	mtctr r0
lbl_804D335C:
/* 804D335C  7C A6 18 2E */	lwzx r5, r6, r3
/* 804D3360  7C 04 18 2E */	lwzx r0, r4, r3
/* 804D3364  7C 05 01 D6 */	mullw r0, r5, r0
/* 804D3368  7C 07 19 2E */	stwx r0, r7, r3
/* 804D336C  7C 07 18 2E */	lwzx r0, r7, r3
/* 804D3370  38 63 00 04 */	addi r3, r3, 4
/* 804D3374  7F 39 02 14 */	add r25, r25, r0
/* 804D3378  42 00 FF E4 */	bdnz lbl_804D335C
/* 804D337C  2C 17 00 57 */	cmpwi r23, 0x57
/* 804D3380  41 80 00 1C */	blt lbl_804D339C
/* 804D3384  2C 17 00 5E */	cmpwi r23, 0x5e
/* 804D3388  41 81 00 14 */	bgt lbl_804D339C
/* 804D338C  38 7D 04 74 */	addi r3, r29, 0x474
/* 804D3390  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 804D3394  7F 39 02 14 */	add r25, r25, r0
/* 804D3398  48 00 00 1C */	b lbl_804D33B4
lbl_804D339C:
/* 804D339C  38 9D 19 18 */	addi r4, r29, 0x1918
/* 804D33A0  38 7D 04 74 */	addi r3, r29, 0x474
/* 804D33A4  7C 04 B8 AE */	lbzx r0, r4, r23
/* 804D33A8  54 00 10 3A */	slwi r0, r0, 2
/* 804D33AC  7C 03 00 2E */	lwzx r0, r3, r0
/* 804D33B0  7F 39 02 14 */	add r25, r25, r0
lbl_804D33B4:
/* 804D33B4  2C 16 00 48 */	cmpwi r22, 0x48
/* 804D33B8  41 80 00 1C */	blt lbl_804D33D4
/* 804D33BC  2C 16 00 4F */	cmpwi r22, 0x4f
/* 804D33C0  41 81 00 14 */	bgt lbl_804D33D4
/* 804D33C4  38 7D 04 74 */	addi r3, r29, 0x474
/* 804D33C8  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 804D33CC  7F 39 02 14 */	add r25, r25, r0
/* 804D33D0  48 00 00 1C */	b lbl_804D33EC
lbl_804D33D4:
/* 804D33D4  38 9D 18 D4 */	addi r4, r29, 0x18d4
/* 804D33D8  38 7D 04 74 */	addi r3, r29, 0x474
/* 804D33DC  7C 04 B0 AE */	lbzx r0, r4, r22
/* 804D33E0  54 00 10 3A */	slwi r0, r0, 2
/* 804D33E4  7C 03 00 2E */	lwzx r0, r3, r0
/* 804D33E8  7F 39 02 14 */	add r25, r25, r0
lbl_804D33EC:
/* 804D33EC  80 13 00 00 */	lwz r0, 0(r19)
/* 804D33F0  7C 00 CA 14 */	add r0, r0, r25
/* 804D33F4  90 13 00 00 */	stw r0, 0(r19)
/* 804D33F8  39 61 01 80 */	addi r11, r1, 0x180
/* 804D33FC  4B BC 7A F5 */	bl func_8009AEF0
/* 804D3400  80 01 01 84 */	lwz r0, 0x184(r1)
/* 804D3404  7C 08 03 A6 */	mtlr r0
/* 804D3408  38 21 01 80 */	addi r1, r1, 0x180
/* 804D340C  4E 80 00 20 */	blr 
