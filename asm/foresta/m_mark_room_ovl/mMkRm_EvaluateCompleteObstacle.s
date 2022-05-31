lbl_804D27F0:
/* 804D27F0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804D27F4  7C 08 02 A6 */	mflr r0
/* 804D27F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 804D27FC  39 61 00 40 */	addi r11, r1, 0x40
/* 804D2800  4B BC 86 AD */	bl func_8009AEAC
/* 804D2804  7C D9 33 78 */	mr r25, r6
/* 804D2808  7C 76 1B 78 */	mr r22, r3
/* 804D280C  2C 19 00 01 */	cmpwi r25, 1
/* 804D2810  7C 97 23 78 */	mr r23, r4
/* 804D2814  7C B8 2B 78 */	mr r24, r5
/* 804D2818  7C FA 3B 78 */	mr r26, r7
/* 804D281C  3B E0 00 00 */	li r31, 0
/* 804D2820  40 82 00 A4 */	bne lbl_804D28C4
/* 804D2824  2C 1A FF FF */	cmpwi r26, -1
/* 804D2828  41 82 00 9C */	beq lbl_804D28C4
/* 804D282C  3B C0 00 00 */	li r30, 0
/* 804D2830  3A A0 00 00 */	li r21, 0
lbl_804D2834:
/* 804D2834  7F B7 A8 2E */	lwzx r29, r23, r21
/* 804D2838  28 1D 00 00 */	cmplwi r29, 0
/* 804D283C  41 82 00 78 */	beq lbl_804D28B4
/* 804D2840  3C 60 80 6A */	lis r3, mMkRm_ftr_info@ha /* 0x8069CEFC@ha */
/* 804D2844  3B 60 00 01 */	li r27, 1
/* 804D2848  3A 63 CE FC */	addi r19, r3, mMkRm_ftr_info@l /* 0x8069CEFC@l */
/* 804D284C  3A 80 00 10 */	li r20, 0x10
/* 804D2850  48 00 00 5C */	b lbl_804D28AC
lbl_804D2854:
/* 804D2854  3B 80 00 01 */	li r28, 1
/* 804D2858  48 00 00 44 */	b lbl_804D289C
lbl_804D285C:
/* 804D285C  7C 1C A2 14 */	add r0, r28, r20
/* 804D2860  54 00 08 3C */	slwi r0, r0, 1
/* 804D2864  7C 7D 02 2E */	lhzx r3, r29, r0
/* 804D2868  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 804D286C  2C 00 00 01 */	cmpwi r0, 1
/* 804D2870  41 82 00 0C */	beq lbl_804D287C
/* 804D2874  2C 00 00 03 */	cmpwi r0, 3
/* 804D2878  40 82 00 20 */	bne lbl_804D2898
lbl_804D287C:
/* 804D287C  4B F1 4F 15 */	bl mRmTp_FtrItemNo2FtrIdx
/* 804D2880  54 60 10 3A */	slwi r0, r3, 2
/* 804D2884  7C 13 00 AE */	lbzx r0, r19, r0
/* 804D2888  54 00 F6 BE */	rlwinm r0, r0, 0x1e, 0x1a, 0x1f
/* 804D288C  7C 00 D0 00 */	cmpw r0, r26
/* 804D2890  41 82 00 08 */	beq lbl_804D2898
/* 804D2894  3B FF 00 01 */	addi r31, r31, 1
lbl_804D2898:
/* 804D2898  3B 9C 00 01 */	addi r28, r28, 1
lbl_804D289C:
/* 804D289C  7C 1C C0 00 */	cmpw r28, r24
/* 804D28A0  41 80 FF BC */	blt lbl_804D285C
/* 804D28A4  3B 7B 00 01 */	addi r27, r27, 1
/* 804D28A8  3A 94 00 10 */	addi r20, r20, 0x10
lbl_804D28AC:
/* 804D28AC  7C 1B C0 00 */	cmpw r27, r24
/* 804D28B0  41 80 FF A4 */	blt lbl_804D2854
lbl_804D28B4:
/* 804D28B4  3B DE 00 01 */	addi r30, r30, 1
/* 804D28B8  3A B5 00 04 */	addi r21, r21, 4
/* 804D28BC  2C 1E 00 02 */	cmpwi r30, 2
/* 804D28C0  41 80 FF 74 */	blt lbl_804D2834
lbl_804D28C4:
/* 804D28C4  2C 1F 00 00 */	cmpwi r31, 0
/* 804D28C8  41 82 00 30 */	beq lbl_804D28F8
/* 804D28CC  2C 19 00 00 */	cmpwi r25, 0
/* 804D28D0  41 82 00 28 */	beq lbl_804D28F8
/* 804D28D4  1C 9F 0F A0 */	mulli r4, r31, 0xfa0
/* 804D28D8  80 16 00 00 */	lwz r0, 0(r22)
/* 804D28DC  3C 60 81 1D */	lis r3, data_811D2D10@ha /* 0x811D2D10@ha */
/* 804D28E0  7C 04 00 50 */	subf r0, r4, r0
/* 804D28E4  90 16 00 00 */	stw r0, 0(r22)
/* 804D28E8  38 83 2D 10 */	addi r4, r3, data_811D2D10@l /* 0x811D2D10@l */
/* 804D28EC  80 04 00 04 */	lwz r0, 4(r4)
/* 804D28F0  60 00 00 80 */	ori r0, r0, 0x80
/* 804D28F4  90 04 00 04 */	stw r0, 4(r4)
lbl_804D28F8:
/* 804D28F8  39 61 00 40 */	addi r11, r1, 0x40
/* 804D28FC  4B BC 85 FD */	bl func_8009AEF8
/* 804D2900  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D2904  7C 08 03 A6 */	mtlr r0
/* 804D2908  38 21 00 40 */	addi r1, r1, 0x40
/* 804D290C  4E 80 00 20 */	blr 
